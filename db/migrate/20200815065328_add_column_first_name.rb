class AddColumnFirstName < ActiveRecord::Migration[5.2]
  def change
    add_column :admins, :first_name, :string
    add_column :admins, :last_name, :string
    add_column :admins, :kana_fname, :string
    add_column :admins, :kana_lname, :string
    add_column :admins, :phone_number, :integer
    add_column :admins, :postal_code, :integer
    add_column :admins, :address, :text
    add_column :admins, :deleted_user, :string
  end
end
