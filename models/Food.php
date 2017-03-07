<?
namespace app\models;
use Yii;
use yii\db\ActiveRecord;
use app\models\FoodIngredient;
use yii\helpers\ArrayHelper;
use yii\helpers\Url;
use yii\web\UploadedFile;

class Food extends ActiveRecord
{
    public static function tableName()
    {
        return 'food';
    }
    
     public function rules()
    {
        return [
            
            [['title'], 'required'],
            [['title'], 'string', 'max' => 255],
            [['description','content','ingredients_description'], 'trim'],
            ['image','file','extensions' => 'jpg,png'],
            
        ];
    }
    
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Название',
            
        ];
    }
    
    public function getIngredients()
    {
        return $this->hasMany(Ingredient::className(), ['id' => 'ingredient_id'])
            ->viaTable('food_ingredient', ['food_id' => 'id']);
    }
    
    public function  viewIngredients()
    {
        if($this->ingredients)
        {
            $ings = "";
            foreach($this->ingredients as $ing)
            {
                if($ing->visible == 0)
                {
                    $ings .= "<a class='text-danger' href='".Url::toRoute(['ingredient/view','id'=>$ing->id])."'>".$ing->title." ( не активен )</a><br>";
                }else
                {
                    $ings .= "<a href='".Url::toRoute(['ingredient/view','id'=>$ing->id])."'>".$ing->title."</a><br>";
                }
                
            }
            return $ings ;
        }
        else
        {
            return null;
        }
    }
    
    public function  getSelectedIngs()
    {
        $selectedIDs = $this->getIngredients()->select('id')->asArray()->all();
        return ArrayHelper::getColumn($selectedIDs,'id');
    }
    public function  saveIngs($ings)
    {
        if(is_array($ings))
        {
            $this->clearCurrentIngs();
            foreach( $ings as $ing_id )
            {
                $ing = Ingredient::findOne($ing_id);
                $this->link('ingredients',$ing);
            }
        }
    }
    
    public function  clearCurrentIngs()
    {
        FoodIngredient::deleteAll(['food_id'=>$this->id]);
    }
    
    public function  saveImage(UploadedFile $file)
    {
        if($this->validate())
        {
            $name = time().".".$file->extension;
            $file->saveAs(Yii::getAlias('@web').'uploads/'.$name);
            $this->image = $name;
            return $this->save(false);
        }
    }
    
    public function  getImage()
    {
        return ($this->image) ? '/web/uploads/'.$this->image 
            : '/web/uploads/no-image.png';
    }
    
    
}