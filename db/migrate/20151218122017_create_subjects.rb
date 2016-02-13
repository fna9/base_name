class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :title, :null => false
      t.string :type, :null => false
      t.string :type_of_reporting, :null => false

      t.timestamps null: false
    end
  end
end
