<?php
    
    use artweb\artbox\design\models\Banner;
    use artweb\artbox\design\models\BannerLang;
    use yii\helpers\Html;
    use yii\web\View;
    
    /**
     * @var View         $this
     * @var Banner       $model
     * @var BannerLang[] $modelLangs
     */
    
    $this->title = \Yii::t('app', 'create_item',['item'=>'Banner']);
    $this->params[ 'breadcrumbs' ][] = [
        'label' => Yii::t('app', 'Banners'),
        'url'   => [ 'index' ],
    ];
    $this->params[ 'breadcrumbs' ][] = $this->title;
?>
<div class="banner-create">
    
    <h1><?= Html::encode($this->title) ?></h1>
    
    <?= $this->render('_form', [
        'model'       => $model,
        'modelLangs' => $modelLangs,
    ]) ?>

</div>
