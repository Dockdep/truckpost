<?php
    
    use artweb\artbox\ecommerce\models\Category;
    use artweb\artbox\ecommerce\models\CategoryLang;
    use yii\helpers\Html;
    use yii\web\View;
    
    /**
     * @var View           $this
     * @var Category       $model
     * @var CategoryLang[] $modelLangs
     * @var string[]       $categories
     * @var articles       $parents
     */
    
    $this->title = Yii::t('product', 'Create Category');
    $this->params[ 'breadcrumbs' ][] = [
        'label' => Yii::t('product', 'Categories'),
        'url'   => [ 'index' ],
    ];
    $this->params[ 'breadcrumbs' ][] = $this->title;
?>
<div class="category-create">
    
    <h1><?= Html::encode($this->title) ?></h1>
    
    <?= $this->render(
        '_form',
        [
            'model'      => $model,
            'modelLangs' => $modelLangs,
            'categories' => $categories,
            'parents'    => $parents,
        ]
    ) ?>

</div>
