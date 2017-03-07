<?
use yii\helpers\Html;
use yii\helpers\Url;
use yii\widgets\ActiveForm;
?>
<? if (Yii::$app->session->hasFlash('errorMess')) :?>
    <? $mess = Yii::$app->session->getFlash('errorMess');?>
<? endif;?>

<div class="container">
    <div class="row">
        <div class="col-md-9">
            <?php $form = ActiveForm::begin(); ?>
                <div class="form-group <? if($mess) echo'has-error' ?>">
                    <label class="control-label" >Выберите ингредиенты:</label>
                    <?= Html::dropDownList('ings',$selectedIngs, $ings, ['class'=> 'form-control','multiple' => true,'size'=>20]) ?>
                    <div class="help-block"><?=$mess;?></div>
                </div>
                <div class="form-group">
                    <?= Html::submitButton('Найти', ['class' => 'btn btn-success']) ?>
                </div>         
            <?php ActiveForm::end(); ?>
            
            <? if ($foodResult['full_match']) : ?>
                <? 
                $resultTitle = "Полное совпадение";
                $result = $foodResult['full_match'] 
                ?>
            <? else: ?>
                <? if ($foodResult['match']) : ?>
                    <? 
                    $resultTitle = "Совпадение по нескольким ингредиентам ( по убыванию )";
                    $result = $foodResult['match'];
                    ?>
                <? else: ?>
                    <? if ($foodResult['no_match']) :?>
                        <? 
                        $resultTitle = "Ничего не найдено";
                        ?>
                    <? endif;?>
                <? endif; ?>
            <? endif; ?>
            
            <br>
            <? if ($resultTitle) :?>
                <h2><?=$resultTitle;?></h2>
            <? endif;?>
            
            <? if ($result) :?>
                <div class="row">
                    <? $i=0; foreach ($result as $key =>$val ): ?>
                        <div class="col-md-4">
                            <div class="well">
                                <a href="<?= Url::toRoute(['view','id'=>$model[$key]->id]);?>"><img src="<?=$model[$key]->getImage();?>" width="225"></a>
                                <h4>
                                    <a class="text-uppercase" href="<?=Url::toRoute(['view','id' =>$model[$key]->id])?>"><?=$model[$key]->title;?></a>
                                </h4>
                                
                                <? foreach ( $model[$key]->ingredients as $ings ): ?>
                                    <? if (in_array($ings->id,$selectedIngs)) : ?>
                                        <span style="
                                            background:orange;
                                            color:white;
                                            padding:3px;
                                            ">
                                            <?=$ings->title;?>
                                        </span><br>
                                    <? else: ?> 
                                        <span style="
                                            padding:3px;
                                            ">
                                            <?=$ings->title;?>
                                        </span><br>  
                                    <? endif; ?>
                                <? endforeach; ?>
                                <div style="text-align:right">
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                    <span ><?=$model[$key]->viewed;?></span>
                                </div>
                            </div>
                        </div>

                        <? $i++; if ($i%3 == 0) :?>
                            </div> 
                            <div class="row">
                        <? endif;?>
                    <? endforeach; ?>
                </div>
            <? endif;?>
        </div> 
            
        <?= app\components\SidebarWidget::widget();?>
                
    </div>
</div> 


