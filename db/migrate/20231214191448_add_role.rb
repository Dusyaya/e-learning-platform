class AddRole < ActiveRecord::Migration[7.1]
  def change
    change_table :users do |t|
      t.string :role, null: false, default: 'user'
    end
  end
end
