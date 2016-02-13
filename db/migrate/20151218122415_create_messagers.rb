class CreateMessagers < ActiveRecord::Migration
  def change
    create_table :messagers do |t|
      t.string :header
      t.text :text, :null => false
      t.references :talk, :index => true, :null => false
      t.belongs_to :talk, :index => true

      t.timestamps null: false
    end
  end
end
