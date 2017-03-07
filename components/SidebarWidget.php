<?
namespace app\components;
use yii\base\Widget;
use app\models\Food;


class SidebarWidget extends Widget
{
    public function  run()
    {
        $popular = Food::find()->where("visible = 1")->orderBy('viewed desc')->limit(5)->all();
        $recent = Food::find()->orderBy('id desc')->limit(4)->all();
        return $this->render('sidebar',compact('popular','recent'));
    }
}