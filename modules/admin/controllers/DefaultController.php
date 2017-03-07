<?php

namespace app\modules\admin\controllers;

use yii\web\Controller;
use Yii;
/**
 * Default controller for the `admin` module
 */
class DefaultController extends Controller
{
    /**
     * Renders the index view for the module
     * @return string
     */
    public function actionIndex()
    {
        if(Yii::$app->user->isGuest)
        {
             return $this->redirect(['/site/login']);
        }
        return $this->render('index');
    }
}
