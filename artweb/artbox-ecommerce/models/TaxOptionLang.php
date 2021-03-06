<?php
    
    namespace artweb\artbox\ecommerce\models;
    
    use artweb\artbox\language\models\Language;
    use Yii;
    use yii\db\ActiveRecord;
    
    /**
     * This is the model class for table "tax_option_lang".
     *
     * @property integer   $tax_option_id
     * @property integer   $language_id
     * @property string    $value
     * @property string    $alias
     * @property Language  $language
     * @property TaxOption $taxOption
     */
    class TaxOptionLang extends ActiveRecord
    {
        
        public static function primaryKey()
        {
            return [
                'tax_option_id',
                'language_id',
            ];
        }
        
        /**
         * @inheritdoc
         */
        public static function tableName()
        {
            return 'tax_option_lang';
        }
        
        public function behaviors()
        {
            return [
                'slug' => [
                    'class'       => 'artweb\artbox\behaviors\Slug',
                    'inAttribute' => 'value',
                ],
            ];
        }
        
        /**
         * @inheritdoc
         */
        public function rules()
        {
            return [
                [
                    [ 'value' ],
                    'required',
                ],
                [
                    [
                        'value',
                        'alias',
                    ],
                    'string',
                    'max' => 255,
                ],
                [
                    [
                        'tax_option_id',
                        'language_id',
                    ],
                    'unique',
                    'targetAttribute' => [
                        'tax_option_id',
                        'language_id',
                    ],
                    'message'         => 'The combination of Tax Option ID and Language ID has already been taken.',
                ],
                [
                    [ 'language_id' ],
                    'exist',
                    'skipOnError'     => true,
                    'targetClass'     => Language::className(),
                    'targetAttribute' => [ 'language_id' => 'id' ],
                ],
                [
                    [ 'tax_option_id' ],
                    'exist',
                    'skipOnError'     => true,
                    'targetClass'     => TaxOption::className(),
                    'targetAttribute' => [ 'tax_option_id' => 'id' ],
                ],
            ];
        }
        
        /**
         * @inheritdoc
         */
        public function attributeLabels()
        {
            return [
                'tax_option_id' => Yii::t('app', 'Tax Option ID'),
                'language_id'   => Yii::t('app', 'Language ID'),
                'value'         => Yii::t('app', 'Value'),
                'alias'         => Yii::t('app', 'Alias'),
            ];
        }
        
        /**
         * @return \yii\db\ActiveQuery
         */
        public function getLanguage()
        {
            return $this->hasOne(Language::className(), [ 'id' => 'language_id' ]);
        }
        
        /**
         * @return \yii\db\ActiveQuery
         */
        public function getTaxOption()
        {
            return $this->hasOne(TaxOption::className(), [ 'id' => 'tax_option_id' ]);
        }
    }
