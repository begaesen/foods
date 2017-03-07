<?php

use yii\db\Migration;

/**
 * Handles the creation of table `ingredient`.
 */
class m170303_175321_create_ingredient_table extends Migration
{
    /**
     * @inheritdoc
     */
    public function up()
    {
        $this->createTable('ingredient', [
            'id' => $this->primaryKey(),
            'title' => $this->string(),
            'visible' => $this->integer()
        ]);
    }

    /**
     * @inheritdoc
     */
    public function down()
    {
        $this->dropTable('ingredient');
    }
}
