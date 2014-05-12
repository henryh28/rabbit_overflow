class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.integer :count, default: 0
      t.belongs_to :voteable, polymorphic: true
      t.belongs_to :user
    end
  end
end
