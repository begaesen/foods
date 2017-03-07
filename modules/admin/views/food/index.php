<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\FoodSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Блюда';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="food-index">

    <h1><?= Html::encode($this->title) ?></h1>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>

    <p>
        <?= Html::a('Добавить блюдо', ['create'], ['class' => 'btn btn-success']) ?>
    </p>
    <?= GridView::widget([
        'dataProvider' => $dataProvider,
        'filterModel' => $searchModel,
        'columns' => [
            ['class' => 'yii\grid\SerialColumn'],

            'id',
            'title',
             [
                'attribute' => 'description',
                'format' => 'html',
                'label' => 'Описание',
            ],
            [
                'attribute' => 'image',
                'value' =>  function($data){ 
                    return "<img  src='".$data->getImage()."'  width='150'>" ;
                } , 
                'format' => 'html',
                'label' => 'Картинка',
            ],
            [
                'attribute' => 'Ингредиенты',
                'value' =>  function($data){ 
                    return $data->viewIngredients() ;
                } , 
                'format' => 'html',
            ],
            [
                'attribute' => 'visible',
                'value' => function($data){
                        return ($data->visible == 1) ? '<span class="text-success">Активен</span>' : '<span class="text-danger">Не активен</span>';
                } ,
                'format' => 'html', 
                'label' => 'Статус',
            ],
            

            ['class' => 'yii\grid\ActionColumn'],
        ],
    ]); ?>
</div>
