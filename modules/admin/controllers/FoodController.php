<?php

namespace app\modules\admin\controllers;

use Yii;
use app\models\Food;
use app\models\FoodForm;
use app\models\Ingredient;
use app\models\FoodSearch;
use yii\web\Controller;
use yii\web\UploadedFile;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;
use yii\helpers\ArrayHelper;

/**
 * FoodController implements the CRUD actions for Food model.
 */
class FoodController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Food models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new FoodSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Food model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        $model = $this->findModel($id);
        
        return $this->render('view', [
            'model' => $model,
        ]);
    }

   
    public function actionCreate()
    {
        $model = new FoodForm();
        $model->isNewRecord = true;
        $ings = ArrayHelper::map(Ingredient::find()->where('visible = 1')->all(),'id','title');
        asort($ings);
        $selectedIngs = array();
        
        if ($model->load(Yii::$app->request->post())) {
            $model->ings = Yii::$app->request->post('ings');
            $selectedIngs = $model->ings;
            if(count($model->ings) < 2 || count($model->ings) > 5)
            {
                Yii::$app->session->setFlash('errorMess','Выберите от 2-х до 5-ти ингредиентов');
                return $this->render('create', compact('model','ings','selectedIngs'));
            }
            
            if($model->validate())
            {
                return $this->redirect(['view', 'id' => $model->saveFood()]);
            }
        } else {
            return $this->render('create', compact('model','ings','selectedIngs'));
        }
    }

    
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);
        $selectedIngs = $model->getSelectedIngs();
        $ings = ArrayHelper::map(Ingredient::find()->where('visible = 1')->all(),'id','title');
        asort($ings);
        $img = $model->image;
        
        if($model->load(Yii::$app->request->post()))
        {
            $model->image = $img;
            $ingreds = Yii::$app->request->post('ings');
            if(count($ingreds) < 2 || count($ingreds) > 5)
            {
                Yii::$app->session->setFlash('errorMess','Выберите от 2-х до 5-ти ингредиентов');
                return $this->render('create', compact('model','ings','selectedIngs'));
            }
            $model->visible = 1;
            $model->date = date('Y-m-d');
            $model->save();
            $model->saveIngs($ingreds); 
            if(UploadedFile::getInstance($model,'image'))
            {
                $file = UploadedFile::getInstance($model,'image');
                $model->saveImage($file);
            }
            
            return $this->redirect(['view', 'id' => $model->id]);
        } else {
            return $this->render('update',compact('model','ings','selectedIngs'));
        }
        
        
    }

    /**
     * Deletes an existing Food model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Finds the Food model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Food the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Food::findOne($id)) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
