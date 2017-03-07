<?php

use yii\db\Migration;

/**
 * Handles the creation of table `food`.
 */
class m170303_171722_create_food_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('food', [
            'id' => $this->primaryKey(),
            'title' => $this->string()
        ]);
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('food');
    }
}
