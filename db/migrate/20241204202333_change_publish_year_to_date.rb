class ChangePublishYearToDate < ActiveRecord::Migration[8.0]
  def change
    change_column :books, :publish_year, :date, null: false
    # Ex:- change_column("admin_users", "email", :string, :limit =>25)
  end
end
