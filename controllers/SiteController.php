<?php

namespace app\controllers;

use Yii;
use yii\filters\AccessControl;
use yii\web\Controller;
use yii\filters\VerbFilter;
use app\models\LoginForm;
use app\models\ContactForm;
use app\models\Food;
use app\models\Ingredient;
use app\models\FoodIngredient;
use yii\helpers\ArrayHelper;
use yii\data\Pagination;

class SiteController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'only' => ['logout'],
                'rules' => [
                    [
                        'actions' => ['logout'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'error' => [
                'class' => 'yii\web\ErrorAction',
            ],
            'captcha' => [
                'class' => 'yii\captcha\CaptchaAction',
                'fixedVerifyCode' => YII_ENV_TEST ? 'testme' : null,
            ],
        ];
    }

    /**
     * Displays homepage.
     *
     * @return string
     */
    public function actionIndex()
    {
        $data = Food::find() -> where("visible = 1");
        $count = $data->count();
        $pagination = new Pagination(['totalCount' => $count, 'pageSize' => 9 ]);
        $model = $data->offset($pagination->offset)
            ->limit($pagination->limit)
            ->orderBy('id desc')
            ->all();
        
        return $this->render('index',compact('model','pagination'));
    }

    /**
     * Login action.
     *
     * @return string
     */
    public function actionLogin()
    {
        if (!Yii::$app->user->isGuest) {
            return $this->goHome();
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post()) && $model->login()) {
            return $this->redirect(['/admin/default/index']);
        }
        return $this->render('login', [
            'model' => $model,
        ]);
    }

    /**
     * Logout action.
     *
     * @return string
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();
        return $this->goHome();
    }
    
    public function actionView($id)
    {
        $model = Food::findOne($id);
        $model->viewed += 1;
        $model->save(false);
        return $this->render('view',compact('model'));
    }
    
     public function actionSearch()
    {
        $ings = ArrayHelper::map(Ingredient::find()->where('visible = 1')->all(),'id','title');
        asort($ings) ;
        if(Yii::$app->request->post())
        {
            $selectedIngs = Yii::$app->request->post('ings');
            if(count($selectedIngs) < 2 || count($selectedIngs) > 5)
            {
                Yii::$app->session->setFlash('errorMess','Выберите больше 1-го, но не больше 5 - ти ингредиентов');
                return $this->render('search',compact('ings'));
            }
            $array = FoodIngredient::find()
                ->where("ingredient_id in (".implode(',',$selectedIngs).")")
                ->asArray()
                ->select('food_id')
                ->all();
            
            if(!$array)
            {
                return $this->render('search',compact('ings'));
            }
            
            $group =array();
            foreach( $array as $key => $val)
            {
                if(!in_array($val['food_id'],$group))
                {
                    $group[] = $val['food_id'];
                }
            }
            
            $foods = Food::find()
                ->where("id in (".implode(',',$group).") AND visible = 1")
                ->with('ingredients')
                ->asArray()
                ->all();
            
            $foodNormal=array();
            foreach ($foods as $key =>$val)
            {
                foreach($val['ingredients'] as $k )
                {
                    $foodNormal[$val['id']][]= $k['id'];
                }
            }
            
            $foodMatch =array();
            foreach ($foodNormal as $key =>$val)
            {   
                $i = 0;
                foreach($val as $v)
                {  
                    if(in_array($v,$selectedIngs))
                    {
                        $i++;
                    }
                }
                $foodMatch[$key] = $i;
            }
            
            arsort($foodMatch);
            $foodResult['no_match'] = 1;
            foreach ($foodMatch as $key => $val)
            {
                if($val <= 4 && $val >= 2)
                {
                    $foodResult['match'][$key] = $val;
                }
                else
                { 
                    if($val == 5)
                    {
                        $foodResult['full_match'][$key] = $val;
                    }
                }
            }
            
            $Foods  = Food::find()
                ->where("id in (".implode(',',array_keys($foodMatch)).")")
                ->with('ingredients')
                ->all();    
            
            $model = array();
            foreach ( $Foods as $key =>$val )
            {
                $model[$val->id] = $val;
            }
            return $this->render('search',compact('ings','selectedIngs','foodResult','model'));
        } 
         
        return $this->render('search',compact('ings'));
    }
}
