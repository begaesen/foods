<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\Food */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Foods', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="food-view">

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
        <?= Html::a('Create Food', ['create'], ['class' => 'btn btn-success']) ?>
    </p>

    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'title',
            [
                'attribute' => 'description',
                'format' => 'html',
                'label' => 'Description',
            ],
            [
                'attribute' => 'content',
                'format' => 'html',
                'label' => 'Content',
            ],
            [
                'attribute' => 'Image',
                'value' =>  function($data){ 
                    return "<img  src='".$data->getImage()."'  width='300'>" ;
                } , 
                'format' => 'html', 
            ],
            
            [
                'attribute' => 'ingredients_description',
                'format' => 'html',
                'label' => 'Ingredients_description',
            ],
            [
                'attribute' => 'Ингредиенты',
                'value' => $model->viewIngredients() ,
                'format' => 'html', 
            ],
            'viewed',
            'date',
        ],
    ]) ?>

</div>
