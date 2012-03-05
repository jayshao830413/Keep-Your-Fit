class CreatePlans < ActiveRecord::Migration
  def change
    create_table :plans do |t|
      t.integer :user_id
      t.string :title
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
