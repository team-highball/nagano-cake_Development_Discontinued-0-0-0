class CreateShippingAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :shipping_addresses do |t|

      t.integer       :client_id
      t.string        :destination
      t.integer       :postal_code
      t.integer       :phone_number
      t.timestamps
    end
  end
end
