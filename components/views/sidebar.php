<?
    use yii\helpers\Url;
?>

<div class="col-md-3">
            <div class="well">
                
                <section id="popular">
                    <h5 class="text-center">ПОПУЛЯРНЫЕ БЛЮДА</h5>
                    <? foreach ($popular as $food ): ?>
                        <div class="popular-wrap">
                            <div class="popular-image">
                                <a href="<?= Url::toRoute(['view','id'=>$food->id]);?>"><img src="<?=$food->getImage();?>" width="50"></a>
                            </div>
                            <div class="popular-content">
                                <a href="<?=Url::toRoute(['view','id' =>$food->id])?>"><?=$food->title;?></a>
                                <div style="text-align:right">
                                    <span class="glyphicon glyphicon-eye-open" aria-hidden="true"></span>
                                    <span >  <?=$food->viewed;?></span>
                                </div>
                            </div>
                        </div>
                    <? endforeach; ?>
                </section>
                <br><br>
                <section id="recent">
                    <h5 class="text-center">ПОСЛЕДНИЕ БЛЮДА</h5>
                    <? foreach ($recent as $food ): ?>
                        <div class="popular-wrap">
                            <div class="popular-image">
                                <a href="<?= Url::toRoute(['view','id'=>$food->id]);?>"><img src="<?=$food->getImage();?>" width="50"></a>
                            </div>
                            <div class="popular-content">
                                <a href="<?=Url::toRoute(['view','id' =>$food->id])?>"><?=$food->title;?></a>
                                <div style="text-align:right">
                                    <span class="glyphicon glyphicon glyphicon-time" aria-hidden="true"></span>
                                    <span >  <?=$food->date;?></span>
                                </div>
                            </div>
                        </div>
                    <? endforeach; ?>
                </section><br>
                <p>
                    Чтобы приготовить полноценное блюдо, не обязательно иметь кучу продуктов, простые и вкусные рецепты делают готовку увлекательным и интересным делом.
                </p>
               
                <style>
                    #popular h5,#recent h5{
                        margin-bottom: 30px;
                    }
                    
                    .popular-wrap{
                        margin-bottom: 10px;
                        background: #fff;
                    }
                    .popular-image{
                        display:inline-block;
                        width: 50px;
                        vertical-align: top;
                    }
                    .popular-content{
                        display:inline-block;
                        width: 165px;
                        vertical-align: top;
                        padding-left: 10px;
                    }
                    .glyphicon-eye-open,.popular-content span{
                        color:#aaa;
                    }
                </style>
            </div>
        </div> 