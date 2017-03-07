<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\helpers\Url;

/* @var $this yii\web\View */
/* @var $searchModel app\models\IngredientSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Ингредиенты';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="ingredient-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Добавить ингредиент', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],
            'id',
            [
                'attribute' => 'title',
                'label' => 'Название',
            ],
            [
                'attribute' => 'visible',
                'value' => function($data){
                        return ($data->visible == 1) 
                        ? '<a href ="'.Url::toRoute(['ingredient/visible','id'=>$data->id,'from'=>'index']).'"     class="btn btn-success">Активен</a>' 
                        : '<a href ="'.Url::toRoute(['ingredient/visible','id'=>$data->id,'from'=>'index']).'" class="btn btn-danger">Не активен</a>';
                } ,
                'format' => 'html', 
                'label' => 'Статус',
            ],
            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
