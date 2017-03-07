<?php

use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Ingredient */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Ingredients', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ingredient-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
        
        <?= Html::a('Create Ingredient', ['create'], ['class' => 'btn btn-success']) ?>
        
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'title',
            [
                'attribute' => 'visible',
                'value' => function($data){
                        return ($data->visible == 1) 
                        ? '<a href ="'.Url::toRoute(['ingredient/visible','id'=>$data->id,'from'=>'view']).'"     class="btn btn-success">Активен</a>' 
                        : '<a href ="'.Url::toRoute(['ingredient/visible','id'=>$data->id,'from'=>'view']).'" class="btn btn-danger">Скрыт</a>';
                } ,
                'format' => 'html', 
            ],
        ],
    ]) ?>

</div>
