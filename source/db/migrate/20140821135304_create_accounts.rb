class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :key
      t.string :description

      t.timestamps
    end
  end
end
