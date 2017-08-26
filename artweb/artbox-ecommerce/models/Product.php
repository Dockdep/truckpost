<?php
    
    namespace artweb\artbox\ecommerce\models;
    
    use artweb\artbox\behaviors\SaveImgBehavior;
    use artweb\artbox\ecommerce\behaviors\DefaultVariantBehavior;
    use artweb\artbox\behaviors\MultipleImgBehavior;
    use artweb\artbox\behaviors\SaveMultipleFileBehavior;
    use artweb\artbox\event\models\Event;
    use artweb\artbox\language\behaviors\LanguageBehavior;
    use artweb\artbox\language\models\Language;
    use frontend\models\Catalog;
    use Yii;
    use yii\base\InvalidParamException;
    use yii\db\ActiveQuery;
    use yii\db\ActiveRecord;
    use yii\db\Query;
    use yii\helpers\ArrayHelper;
    use yii\web\NotFoundHttpException;
    use yii\web\Request;
    
    /**
     * This is the model class for table "{{%product}}".
     *
     * @property integer              $brand_id
     * @property integer              $id
     * @property ProductVideo[]       $videos
     * @property string               $size_image
     * @property Category             $category
     * @property Category[]           $categories
     * @property ProductVariant       $variant
     * @property ProductVariant[]     $variants
     * @property ProductVariant       $productVariant
     * @property ProductVariant[]     $productVariants
     * @property boolean              $is_top
     * @property boolean              $is_new
     * @property boolean              $is_discount
     * @property TaxGroup[]           $properties
     * @property ProductVariant       $enabledVariant
     * @property ProductVariant[]     $enabledVariants
     * @property string               $video
     * @property TaxOption[]          $options
     * @property TaxOption[]          $filterOptions
     * @property TaxGroup[]           $groups
     * @property Brand                $brand
     * @property TaxOption[]          $filters
     * @property ProductVariant[]     $variantsWithFilters
     * @property string               $remote_id
     * @property string               $fullName
     * @property float                $variantPrice
     * @property float                $enabledVariantPrice
     * @property array                $categoryNames
     * @property Stock[]              $stocks
     * @property ProductStock[]       $productStocks
     * @property int                  $quantity
     * @property TaxGroupToCategory[] $categoriesToGroups
     * @property TaxGroup[]           $taxGroupsByLevel
     * * From language behavior *
     * @property ProductLang          $lang
     * @property ProductLang[]        $langs
     * @property ProductLang          $objectLang
     * @property string               $ownerKey
     * @property string               $langKey
     * @property ProductLang[]        $modelLangs
     * @property bool                 $transactionStatus
     * @method string           getOwnerKey()
     * @method void             setOwnerKey( string $value )
     * @method string           getLangKey()
     * @method void             setLangKey( string $value )
     * @method ActiveQuery      getLangs()
     * @method ActiveQuery      getLang( integer $language_id )
     * @method ProductLang[]    generateLangs()
     * @method void             loadLangs( Request $request )
     * @method bool             linkLangs()
     * @method bool             saveLangs()
     * @method bool             getTransactionStatus()
     * * End language behavior *
     * * From multipleImage behavior
     * @property ProductImage         $image
     * @property ProductImage[]       $images
     * @property array                imagesConfig
     * @method ActiveQuery getImage()
     * @method ActiveQuery getImages()
     * @method array getImagesConfig()
     * @method array getImagesHTML( string $preset )
     * * End multipleImage behavior
     */
    class Product extends ActiveRecord
    {
        public $option_id;
        
        public $min;
        public $max;
        
        public $imagesUpload = [];
        
        /**
         * @inheritdoc
         */
        public function behaviors()
        {
            return [
                'images'         => [
                    'class'     => SaveMultipleFileBehavior::className(),
                    'name'      => 'imagesUpload',
                    'directory' => 'products',
                    'column'    => 'image',
                    'links'     => [
                        'id' => 'product_id',
                    ],
                    'model'     => ProductImage::className(),
                ],
                'multipleImage'  => [
                    'class'      => MultipleImgBehavior::className(),
                    'links'      => [
                        'product_id' => 'id',
                    ],
                    'conditions' => [
                        'product_image.product_variant_id' => NULL,
                    ],
                    'model'      => ProductImage::className(),
                    'config'     => [
                        'caption'       => 'image',
                        'delete_action' => '/ecommerce/manage/delete-image',
                        'id'            => 'id',
                    ],
                ],
                'language'       => [
                    'class' => LanguageBehavior::className(),
                ],
          //      'defaultVariant' => DefaultVariantBehavior::className(),
                'size_image'     => [
                    'class'  => SaveImgBehavior::className(),
                    'fields' => [
                        [
                            'name'      => 'size_image',
                            'directory' => 'products',
                        ],
                    ],
                ],
            ];
        }
        
        /**
         * @inheritdoc
         */
        public static function tableName()
        {
            return 'product';
        }
        
        /**
         * @inheritdoc
         */
        public function rules()
        {
            return [
                [
                    [ 'brand_id' ],
                    'integer',
                ],
                [
                    [
                        'categories',
                        'variants',
                        'options',
                        'imagesUpload',
                    ],
                    'safe',
                ],
                [
                    [
                        'video',
                    ],
                    'safe',
                ],
                [
                    [
                        'is_top',
                        'is_new',
                        'is_discount',
                    ],
                    'boolean',
                ],
                [
                    [ 'size_image' ],
                    'string',
                ],
            ];
        }
        
        /**
         * @inheritdoc
         */
        public function attributeLabels()
        {
            return [
                'id'          => Yii::t('product', 'ID'),
                'brand_id'    => Yii::t('product', 'Brand'),
                'categories'  => Yii::t('product', 'Categories'),
                'category'    => Yii::t('product', 'Category'),
                'image'       => Yii::t('product', 'Image'),
                'images'      => Yii::t('product', 'Images'),
                'video'       => Yii::t('product', 'Video embeded'),
                'variants'    => Yii::t('product', 'Variants'),
                'is_top'      => Yii::t('product', 'Is top'),
                'is_new'      => Yii::t('product', 'Is new'),
                'is_discount' => Yii::t('product', 'Is promo'),
                'size_image'  => Yii::t('product', 'Sizes table'),
            ];
        }
        
        /**
         * Get Brand query to current Product
         *
         * @return \yii\db\ActiveQuery
         */
        public function getBrand()
        {
            return $this->hasOne(Brand::className(), [ 'id' => 'brand_id' ]);
        }
        
        /**
         * Get ProductVariant query to current Product
         *
         * @return \yii\db\ActiveQuery
         */
        public function getVariant()
        {
            return $this->hasOne(ProductVariant::className(), [ 'product_id' => 'id' ]);
        }
        
        /**
         * Synonim of getVariant()
         *
         * @see Product::getVariant()
         * @return \yii\db\ActiveQuery
         */
        public function getProductVariant()
        {
            return $this->getVariant();
        }
        
        /**
         * Get ProductVariants query to current Product
         *
         * @return \yii\db\ActiveQuery
         */
        public function getVariants()
        {
            return $this->hasMany(ProductVariant::className(), [ 'product_id' => 'id' ]);
        }
        
        /**
         * Synonim of getVariants()
         *
         * @see Product::getVariants()
         * @return \yii\db\ActiveQuery
         */
        public function getProductVariants()
        {
            return $this->getVariant();
        }
        
        /**
         * @return  \yii\db\ActiveQuery
         */
        public function getEvents()
        {
            return $this->hasMany(Event::className(), [ 'id' => 'event_id' ])
                        ->viaTable('events_to_products', [ 'product_id' => 'id' ])
                        ->where([ 'status' => Event::ACTIVE ]);
        }
        
        /**
         * Get ProductVariant query fetching only available in stock to current Product
         *
         * @see Product::getVariant()
         * @return \yii\db\ActiveQuery
         */
        public function getEnabledVariant()
        {
            return $this->hasOne(ProductVariant::className(), [ 'product_id' => 'id' ])
                        ->andWhere(
                            [
                                '!=',
                                ProductVariant::tableName() . '.stock',
                                0,
                            ]
                        );
        }
        
        /**
         * Get ProductVariants query fetching only available in stock to current Product
         *
         * @see Product::getVariants()
         * @return \yii\db\ActiveQuery
         */
        public function getEnabledVariants()
        {
            return $this->hasMany(ProductVariant::className(), [ 'product_id' => 'id' ])
                        ->andWhere(
                            [
                                '!=',
                                ProductVariant::tableName() . '.stock',
                                0,
                            ]
                        );
        }
        
        public function getMaxPrice()
        {
            $price = 0;
            if (!empty($this->enabledVariants)) {
                foreach ($this->enabledVariants as $variant) {
                    if ($variant->price > $price) {
                        $price = $variant->price;
                    }
                }
            }
            return $price;
        }
        
        /**
         * Get random ProductVariant price or 0 if not exist
         *
         * @param bool $exception Whether to throw exception if variant not exist
         *
         * @return float
         * @throws \yii\web\NotFoundHttpException
         */
        public function getVariantPrice(bool $exception = false): float
        {
            if (!empty($this->variant)) {
                return $this->variant->price;
            } elseif ($exception) {
                throw new NotFoundHttpException('Product with ID ' . $this->id . ' hasn\'t got variants');
            } else {
                return 0;
            }
        }
        
        /**
         * Get random ProductVariant that in stock price or 0 or exception if not exist
         *
         * @param bool $exception Whether to throw exception if variant not exist
         *
         * @return float
         * @throws \yii\web\NotFoundHttpException
         */
        public function getEnabledVariantPrice(bool $exception = false): float
        {
            if (!empty($this->enabledVariant)) {
                return $this->enabledVariant->price;
            } elseif ($exception) {
                throw new NotFoundHttpException('Product with ID ' . $this->id . ' hasn\'t got enabled variants');
            } else {
                return 0;
            }
        }
        
        /**
         * Get Product name concatenated with Brand name
         *
         * @return string
         */
        public function getFullName(): string
        {
            $name = '';
            $groupName = ( new Query() )->select(
                [
                    'tax_option.*',
                    'tax_option_lang.*',
                ]
            )
                                        ->from([ 'tax_option' ])
                                        ->innerJoin('tax_group', 'tax_group.id = tax_option.tax_group_id')
                                        ->innerJoin('tax_option_lang', 'tax_option.id = tax_option_lang.tax_option_id')
                                        ->innerJoin(
                                            'tax_group_to_category',
                                            'tax_group.id = tax_group_to_category.tax_group_id'
                                        )
                                        ->where(
                                            [
                                                'tax_group_to_category.category_id' => $this->category->id,
                                                'tax_group.use_in_name'             => 1,
                                                'tax_option.id'                     => ArrayHelper::getColumn(
                                                    $this->options,
                                                    'id'
                                                ),
                                                'tax_option_lang.language_id' => Language::$current->id,
                                            ]
                                        )
                                        ->one();
            if ($groupName != NULL) {
                $groupName = $groupName[ 'value' ];
            } else {
                $groupName = '';
            }
            
            if (!empty($this->category->lang->category_synonym)) {
                $name = $name . ( $groupName ? $groupName : $this->category->lang->category_synonym ) . ' ';
            } else {
                $name = $name . ( $groupName ? $groupName : $this->category->lang->title ) . ' ';
            }
            
            if (!empty($this->brand)) {
                $name = $name . $this->brand->lang->title . ' ';
            }
            $name .= $this->lang->title;
            return $name;
        }
        
        /**
         * Get Category query for current Product
         *
         * @return ActiveQuery
         */
        public function getCategory()
        {
            return $this->hasOne(Category::className(), [ 'id' => 'category_id' ])
                        ->viaTable('product_category', [ 'product_id' => 'id' ]);
        }
        
        /**
         * Get Categories query for current Product
         *
         * @return ActiveQuery
         */
        public function getCategories()
        {
            return $this->hasMany(Category::className(), [ 'id' => 'category_id' ])
                        ->viaTable('product_category', [ 'product_id' => 'id' ]);
        }
        
        /**
         * @param bool $index
         *
         * @return array
         */
        public function getCategoryNames(bool $index = false): array
        {
            if ($index) {
                $result = ArrayHelper::map($this->categories, 'id', 'lang.title');
            } else {
                $result = ArrayHelper::getColumn($this->categories, 'lang.title');
            }
            return $result;
        }
        
        /**
         * Get ProductVariants query with lang, filters and image for current Product
         *
         * @return ActiveQuery
         */
        public function getVariantsWithFilters()
        {
            return $this->hasMany(ProductVariant::className(), [ 'product_id' => 'id' ])
                        ->joinWith('lang')
                        ->with(
                            [
                                'filters',
                                'image',
                            ]
                        );
        }
        
        /**
         * Get TaxOptions query for current Product
         *
         * @return ActiveQuery
         */
        public function getOptions()
        {
            return $this->hasMany(TaxOption::className(), [ 'id' => 'option_id' ])
                        ->viaTable('product_option', [ 'product_id' => 'id' ]);
            
        }
        
        /**
         * Get TaxOptions query for current Product that will by used in filter
         *
         * @return ActiveQuery
         */
        public function getFilterOptions()
        {
            
            return $this->getOptions()
                        ->joinWith(
                            [
                                'lang',
                                'taxGroup',
                            ]
                        )
                        ->where([ 'is_filter' => true ]);
        }
        
        /**
         * Get TaxGroup for current Product
         *
         * @return ActiveQuery
         */
        public function getGroups()
        {
            return $this->hasMany(TaxGroup::className(), [ 'id' => 'tax_group_id' ])
                        ->via('options');
        }
        
        /**
         * Get TaxOptions query for current Product joined with TaxGroups
         *
         * @see Product::getOptions()
         * @return ActiveQuery
         */
        public function getFilters()
        {
            return $this->getOptions()
                        ->joinWith('taxGroup.lang')
                        ->joinWith('lang');
        }
        
        /**
         * Get all TaxGroups for current Product filled with $customOptions that satisfy current Product
         *
         * @return TaxGroup[]
         */
        public function getProperties(): array
        {
            $groups = $options = [];
            foreach ($this->getOptions()
                          ->with('lang')
                          ->all() as $option) {
                /**
                 * @var TaxOption $option
                 */
                $options[ $option[ 'tax_group_id' ] ][] = $option;
            }
            foreach (TaxGroup::find()
                             ->where([ 'id' => array_keys($options) ])
                             ->with('lang')
                             ->all() as $group) {
                /**
                 * @var TaxGroup $group
                 */
                if (!empty($options[ $group->id ])) {
                    $group->customOptions = $options[ $group->id ];
                    $groups[] = $group;
                }
            }
            return $groups;
        }


        /**
         * Get characteristic from TaxGroups for current Product filled with $customOptions that satisfy current Product
         *
         * @return TaxGroup[]
         */
        public function getCharacteristic(): array
        {
            $groups = $options = [];
            foreach ($this->getOptions()
                         ->with('lang')
                         ->all() as $option) {
                /**
                 * @var TaxOption $option
                 */
                $options[ $option[ 'tax_group_id' ] ][] = $option;
            }
            foreach (TaxGroup::find()
                         ->where(['is_menu'=>true])
                         ->andWhere([ 'id' => array_keys($options) ])
                         ->with('lang')
                         ->all() as $group) {
                /**
                 * @var TaxGroup $group
                 */
                if (!empty($options[ $group->id ])) {
                    $group->customOptions = $options[ $group->id ];
                    $groups[] = $group;
                }
            }
            return $groups;
        }

        public function getVideos()
        {
            return $this->hasMany(ProductVideo::className(), [ 'product_id' => 'id' ]);
        }
        
        /**
         * Get Stock query where current Product is in stock
         *
         * @return ActiveQuery
         */
        public function getStocks()
        {
            return $this->hasMany(Stock::className(), [ 'id' => 'stock_id' ])
                        ->via('productStocks');
        }
        
        /**
         * Get ProductStocks query for current Product
         *
         * @return ActiveQuery
         */
        public function getProductStocks()
        {
            return $this->hasMany(ProductStock::className(), [ 'product_variant_id' => 'id' ])
                        ->via('variants');
        }
        
        /**
         * Get quantity of all ProductVariants for current Product
         *
         * @see Product::getProductStocks()
         * @return int
         */
        public function getQuantity(): int
        {
            return $this->getProductStocks()
                        ->sum('quantity');
        }
        
        /**
         * Override Categories and TaxOptions
         *
         * @inheritdoc
         */
        public function afterSave($insert, $changedAttributes)
        {
            parent::afterSave($insert, $changedAttributes);

            if (!empty($this->categories)) {
                $categories = Category::findAll($this->categories);
                $this->unlinkAll('categories', true);
                foreach ($categories as $category) {
                    $this->link('categories', $category);
                }
            }

            if (!empty($this->options)) {
                $options = TaxOption::findAll($this->options);
                $this->unlinkAll('options', true);
                foreach ($options as $option) {
                    $this->link('options', $option);
                }
            }
//            Catalog::addRecord($this);
        }
        
        /**
         * Get TaxGroupToCategories query via product_category table
         *
         * @return ActiveQuery
         */
        public function getCategoriesToGroups()
        {
            return $this->hasMany(TaxGroupToCategory::className(), [ 'category_id' => 'category_id' ])
                        ->viaTable('product_category', [ 'product_id' => 'id' ]);
        }
        
        /**
         * Get TaxGroups query for current Product according to level
         * * 0 - Product Tax Groups
         * * 1 - ProductVariant Tax Groups
         *
         * @param int $level
         *
         * @return ActiveQuery
         * @throws InvalidParamException
         */
        public function getTaxGroupsByLevel(int $level = 0)
        {
            if ($level !== 0 && $level !== 1) {
                throw new InvalidParamException(
                    'Level must be 0 for Product Tax Groups or 1 for Product Variant Tax Groups'
                );
            }
            return $this->hasMany(TaxGroup::className(), [ 'id' => 'tax_group_id' ])
                        ->via('categoriesToGroups')
                        ->where([ 'level' => $level ])
                        ->distinct();
        }
        
        public function getSize()
        {
            $subQuery = Product::find()
                               ->select('category.id as x')
                               ->joinWith('categories')
                               ->where([ 'product.id' => $this->id, ]);
            $size = BrandSize::find()
                             ->joinWith('categories')
                             ->innerJoin([ 's' => $subQuery ], 's.x = category.id')
                             ->where(
                                 [
                                     'brand_size.brand_id' => $this->brand->id,
                                 ]
                             )
                             ->one();
            return $size;
        }
        
        /**
         * Setter for Categories
         *
         * @param array $values
         */
        public function setCategories($values)
        {
            $this->categories = $values;
        }
        
        /**
         * Setter for Options
         *
         * @param array $values
         */
        public function setOptions($values)
        {
            $this->options = $values;
        }
        
        public function beforeSave($insert)
        {
            if (parent::beforeSave($insert)) {
                
                return true;
            } else {
                return false;
            }
        }
        
        public function beforeDelete()
        {
            if (parent::beforeDelete()) {
                Catalog::deleteRecord($this);
                return true;
            } else {
                return false;
            }
        }
    }
