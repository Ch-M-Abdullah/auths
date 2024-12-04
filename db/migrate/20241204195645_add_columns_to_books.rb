class AddColumnsToBooks < ActiveRecord::Migration[8.0]
  def change
    add_column :books, :title, :string, null: false
    add_column :books, :description, :text, null: false
    add_column :books, :author, :string, null: false
    add_column :books, :publish_year, :string, null: false
  end
end
