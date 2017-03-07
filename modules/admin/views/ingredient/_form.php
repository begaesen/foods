<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Ingredient */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="ingredient-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
    
    <? if (!$model->isNewRecord) :?>
        <? if ($model->visible == 1) : ?>
            <a href ="<?= Url::toRoute(['ingredient/visible','id'=>$model->id,'from'=>'update'])?>"     
                class="btn btn-success">Активен</a>
        <? else: ?>   
            <a href ="<?= Url::toRoute(['ingredient/visible','id'=>$model->id,'from'=>'update'])?>"     
                class="btn btn-danger">Не активен</a>
        <? endif; ?>
    <? endif;?>
    

    <div class="form-group">
    <br>   
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
