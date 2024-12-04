class AddRoleToUSers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :role, :string, default: "employee", null: false
    # Ex:- :null => false
    # Ex:- add_column("admin_users", "username", :string, :limit =>25, :after => "email")
  end
end
