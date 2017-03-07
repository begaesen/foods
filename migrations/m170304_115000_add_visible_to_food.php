<?php

use yii\db\Migration;

class m170304_115000_add_visible_to_food extends Migration
{
    public function up()
    {
        $this->addColumn('food','visible',$this->integer());
    }

    public function down()
    {
        $this->dropColumn('food','visible');
    }

    /*
    // Use safeUp/safeDown to run migration code within a transaction
    public function safeUp()
    {
    }

    public function safeDown()
    {
    }
    */
}
