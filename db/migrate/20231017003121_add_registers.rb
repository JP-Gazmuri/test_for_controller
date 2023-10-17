class AddRegisters < ActiveRecord::Migration[7.0]
  def change
    create_table :records do |t|
     
      t.integer :status, null: false, default: 0
      t.integer :locker, null: false, default: 0
      t.string :password_deposit, null: false, default: ""
      t.string :password_retire, null: false, default: ""
      t.timestamps null: false
    end
  end
end
