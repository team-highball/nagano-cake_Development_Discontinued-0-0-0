class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|

      t.string      :client_id
      t.string      :postal_code
      t.string      :address
      t.string      :name
      t.string      :total_bill
      t.integer     :payment_method
      t.string      :postage
      t.integer     :status
      t.timestamps
    end
  end
end
