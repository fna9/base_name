class CreateMessagerUsers < ActiveRecord::Migration
  def change
    create_table :messager_users do |t|
      t.references :messager, index: true
      t.references :user, index: true
	t.foreign_key :messagers
	t.foreign_key :users

      t.timestamps null: false
    end
  end
end
