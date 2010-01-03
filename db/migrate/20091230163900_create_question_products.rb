class CreateQuestionProducts < ActiveRecord::Migration
  def self.up
    create_table :question_products do |t|
      t.references :product
      t.references :question

      t.timestamps
    end
  end

  def self.down
    drop_table :question_products
  end
end
