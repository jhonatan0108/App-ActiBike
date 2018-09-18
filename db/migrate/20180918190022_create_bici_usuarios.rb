class CreateBiciUsuarios < ActiveRecord::Migration[5.1]
  def change
    create_table :bici_usuarios do |t|
      t.string :username
      t.string :name
      t.string :email 
      t.string :document
      t.string :telephone
      t.string :password
      t.integer :age
      t.float :weight
      t.float :height
      t.timestamps
    end
  end
end
