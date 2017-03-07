<div class="container">
    <div class="row">
        <div class="col-md-9 well">
            <div class="row ">
                <div class="col-md-4">
                    <br><img src="<?=$model->getImage();?>" width="270">
                </div> 
                <div class="col-md-8">
                    <h1 class="text-uppercase"><?=$model->title;?></h1>
                    <p><em class="lead"><?=$model->description;?></em></p>
                    <br><h3>Понадобится:</h3>
                    <p><?=$model->ingredients_description;?></p>
                    <br><h3>Как готовить:</h3>
                    <p><?=$model->content;?></p>
                </div>
            </div>
        </div> 
        <?= app\components\SidebarWidget::widget();?> 
    </div>
</div> 