class CreatePagePages < ActiveRecord::Migration
  def change
    create_table :page_pages do |t|
	t.references :page1, index: true
	t.references :page2, index: true
	t.foreign_key :pages, column: :page1_id
	t.foreign_key :pages, column: :page2_id
      t.timestamps null: false
    end
  end
end
