<?php

use yii\db\Migration;

class m170306_083832_add_column_to_food extends Migration
{
    public function up()
    {
        $this->addColumn('food','description',$this->text());    
        $this->addColumn('food','content',$this->text());    
        $this->addColumn('food','ingredients_description',$this->text());    
        $this->addColumn('food','image',$this->string());    
        $this->addColumn('food','viewed',$this->integer());    
        $this->addColumn('food','date',$this->date());    
    }

    public function down()
    {
        $this->dropColumn('food','description');
        $this->dropColumn('food','content');
        $this->dropColumn('food','ingredients_description');
        $this->dropColumn('food','image');
        $this->dropColumn('food','viewed');
        $this->dropColumn('food','date');
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
