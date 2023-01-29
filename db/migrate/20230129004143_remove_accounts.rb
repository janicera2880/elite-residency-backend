class RemoveAccounts < ActiveRecord::Migration[6.1]
  def change
    remove_table :accounts do |t|
      t.string :name
      t.string :email
      
  end
end
