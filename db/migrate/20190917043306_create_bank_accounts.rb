class CreateBankAccounts < ActiveRecord::Migration[5.2]
  def change
    create_table :bank_accounts do |t|
      t.string :name
      t.integer :user_id
      t.string :account_number
      t.float :amount, default: 0.0

      t.timestamps
    end
  end
end
