<?php

namespace app\models;

use Yii;

/**
 * This is the model class for table "ingredient".
 *
 * @property integer $id
 * @property string $title
 * @property integer $visible
 *
 * @property FoodIngredient[] $foodIngredients
 */
class Ingredient extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return 'ingredient';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['visible'], 'integer'],
            [['title'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Title',
            'visible' => 'Visible',
        ];
    }

    public function getFoods()
    {
        return $this->hasMany(Food::className(), ['id' => 'food_id'])
            ->viaTable('food_ingredient', ['ingredient_id' => 'id']);
    }
    
    public function  hideFoods()
    {
        $foods = $this->foods;
        foreach ($foods as $food){
            $food->visible = 0;
            $food->save(false);
        }
        
    }
    
    public function  showFoods()
    {
        $foods = $this->foods;
        foreach ($foods as $food){
            $food->visible = 1;
            foreach($food->ingredients as $ing){
                if($ing->visible == 0) {
                    $food->visible = 0;
                    break;
                }
            }
            $food->save(false);
        }
    }
}
