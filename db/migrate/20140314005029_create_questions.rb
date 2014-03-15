class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.text :content
      t.integer :best_answer_id
      t.integer :votes, :default => 0
      t.belongs_to :user
      t.timestamps
    end
  end
end
