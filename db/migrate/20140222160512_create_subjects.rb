class CreateSubjects < ActiveRecord::Migration

  def up
    create_table :subjects do |t|
      t.string "name"
      t.integer "position"
      t.boolean "visible", :default => false
      t.string "password", :limit => 40
      t.timestamps
    end
  end
  
  def down
    drop_table :subjects
  end
  
end
