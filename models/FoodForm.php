<?
namespace app\models;
use Yii;
use yii\base\Model;
use yii\web\UploadedFile;
use app\models\Food;

class FoodForm extends Model
{
    public $title;
    public $ings;
    public $description;
    public $content;
    public $ingredients_description;
    public $image;
    
    public $isNewRecord;
    
    public function  rules()
    {
        return [
            ['title','required'],
            [['description','content','ingredients_description'], 'trim'],
            ['image','file','extensions' => 'jpg,png'],
        ];
    }
    
    public function  saveFood()
    {
        $model = new Food();
        $model->title = $this->title;
        $model->description = $this->description;
        $model->content = $this->content;
        $model->ingredients_description = $this->ingredients_description;
        $model->visible = 1;
        $model->viewed = 0;
        $model->date = date('Y-m-d');
        $model->save(false);
        $model->saveIngs($this->ings);
        if(UploadedFile::getInstance($this,'image'))
        {
            $file = UploadedFile::getInstance($this,'image');
            $model->saveImage($file);
        }
        return $model->id;
    }
}