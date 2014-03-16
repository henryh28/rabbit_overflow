class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :content, null: false
      t.string :author, :default => "Guest"
      t.belongs_to :question
      t.timestamps
    end
  end
end
