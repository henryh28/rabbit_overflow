class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :content, null: false
      t.integer :best_answer_id
      t.belongs_to :user
      t.timestamps
    end
  end
end
