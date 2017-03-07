<?php

/* @var $this yii\web\View */
use yii\helpers\Url;
use yii\widgets\LinkPager;
$this->title = 'My Yii Application';
?>
<div class="container">
    <div class="row">
        <div class="col-md-9">
            <div class="row">
                <? $i=0; foreach ($model as $food ): ?>
                    <div class="col-md-4">
                        <div class="well">
                            <a href="<?= Url::toRoute(['view','id'=>$food->id]);?>"><img src="<?=$food->getImage();?>" width="225"></a>
                            <h4>
                                <a href="<?=Url::toRoute(['view','id' =>$food->id])?>"><?=$food->title;?></a>
                            </h4>
                            <p>
                                <?=$food->description;?>
                            </p>
                            <div style="text-align:right">
                                <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                <span ><?=$food->viewed;?></span>
                            </div>
                            
                        </div>
                    </div>
                    
                    <? $i++; if ($i%3 == 0) :?>
                        </div> 
                        <div class="row">
                    <? endif;?>
            <? endforeach; ?>
            </div>
            
            <?php
                echo LinkPager::widget([
                    'pagination' => $pagination,
                ]);
            ?>
            
        </div>
        <?= app\components\SidebarWidget::widget();?> 
    </div>
</div>        
