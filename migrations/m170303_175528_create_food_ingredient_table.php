<?php

use yii\db\Migration;

/**
 * Handles the creation of table `food_ingredient`.
 */
class m170303_175528_create_food_ingredient_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('food_ingredient', [
            'id' => $this->primaryKey(),
            'food_id' => $this->integer(),
            'ingredient_id' => $this->integer()
        ]);
        
        
        $this->createIndex(
            'idx-food_id',
            'food_ingredient',
            'food_id'
        );
        
        $this->addForeignKey(
            'fk-food_id',
            'food_ingredient',
            'food_id',
            'food',
            'id',
            'CASCADE'
        );
        
        
        $this->createIndex(
            'idx-ingredient_id',
            'food_ingredient',
            'ingredient_id'
        );
        
        $this->addForeignKey(
            'fk-ingredient_id',
            'food_ingredient',
            'ingredient_id',
            'ingredient',
            'id',
            'CASCADE'
        );
        
        
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('food_ingredient');
    }
}
