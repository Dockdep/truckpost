<?php
    
    use artweb\artbox\components\artboximage\ArtboxImageHelper;
    use artweb\artbox\language\widgets\LanguageForm;
    use artweb\artbox\ecommerce\models\Brand;
    use artweb\artbox\ecommerce\models\BrandLang;
    use yii\helpers\Html;
    use yii\helpers\Url;
    use yii\web\View;
    use yii\widgets\ActiveForm;
    
    /**
     * @var View        $this
     * @var Brand       $model
     * @var ActiveForm  $form
     * @var BrandLang[] $modelLangs
     */
?>

<div class="brand-form">
    
    <?php $form = ActiveForm::begin(
        [
            'enableClientValidation' => false,
            'options'                => [ 'enctype' => 'multipart/form-data' ],
        ]
    ); ?>
    
    <?= $form->field($model, 'image')
             ->widget(
                 \kartik\file\FileInput::className(),
                 [
                     'language'      => 'ru',
                     'options'       => [
                         'accept'    => 'image/*',
                         'multiple'  => false,
                         'deleteurl' => $model->isNewRecord?false:Url::to(['/ecommerce/brand/delete-image', 'id' => $model->id]),
                         'class'     => $model->isNewRecord?'':'artbox-delete-file',
                     ],
                     'pluginOptions' => [
                         'allowedFileExtensions'    => [
                             'jpg',
                             'gif',
                             'png',
                         ],
                         'initialPreview'           => !empty( $model->getImageUrl(
                             0,
                             false
                         ) ) ? ArtboxImageHelper::getImage(
                             $model->imageUrl,
                             'list',
                             []
                         ) : '',
                         'initialPreviewShowDelete' => false,
                         'overwriteInitial'         => true,
                         'showRemove'               => true,
                         'showUpload'               => false,
                         'showClose'                => false,
                         'previewFileType'          => 'image',
                     ],
                 ]
             ); ?>
    
    <?= $form->field($model, 'in_menu')
             ->dropDownList(
                 [
                     \Yii::t('product', 'No'),
                     \Yii::t('product', 'Yes'),
                 ]
             ); ?>
    
    <?= LanguageForm::widget(
        [
            'modelLangs' => $modelLangs,
            'formView'   => '@artweb/artbox/ecommerce/views/brand/_form_language',
            'form'       => $form,
        ]
    ) ?>
    
    <div class="form-group">
        <?= Html::submitButton(
            $model->isNewRecord ? Yii::t('product', 'Create') : Yii::t('product', 'Update'),
            [ 'class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary' ]
        ) ?>
        <?php if ($model->isNewRecord) : ?>
            <?= Html::submitButton(
                Yii::t('product', 'Create and continue'),
                [
                    'name'  => 'create_and_new',
                    'class' => 'btn btn-primary',
                ]
            ) ?>
        <?php endif ?>
    </div>
    
    <?php ActiveForm::end(); ?>

</div>
