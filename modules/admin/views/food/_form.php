<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Food */
/* @var $form yii\widgets\ActiveForm */
?>

<? if (Yii::$app->session->hasFlash('errorMess')) :?>
    <? $mess = Yii::$app->session->getFlash('errorMess');?>
<? endif;?>

<div class="food-form">

    <?php $form = ActiveForm::begin(); ?>    
    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>
    <?= $form->field($model, 'description')->textarea(['rows' => 4]) ?>
    <?= $form->field($model, 'content')->textarea(['rows' => 6]) ?>
    <?= $form->field($model, 'ingredients_description')->textarea(['rows' => 6]) ?>
    <?= $form->field($model, 'image')->fileInput() ?>
        
    <div class="form-group <? if($mess) echo'has-error' ?>">
        <label class="control-label" >Ингредиенты</label>
        <?= Html::dropDownList('ings',$selectedIngs, $ings, ['class'=> 'form-control','multiple' => true,'size'=>20]) ?>
        <div class="help-block"><?=$mess;?></div>
    </div>
    
    
    <br>
    <div class="form-group">
        <?= Html::submitButton($model->isNewRecord ? 'Create' : 'Update', ['class' => $model->isNewRecord ? 'btn btn-success' : 'btn btn-primary']) ?>
        
    </div>

    <?php ActiveForm::end(); ?>

</div>
