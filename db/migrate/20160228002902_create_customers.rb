class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :first_name
      t.string :last_name
      t.string :mobile_phone
      t.string :email
      t.string :sex
      t.text :bio
      t.string :payment_method
      t.string :country
      t.string :currency

      t.timestamps
    end
  end
end
