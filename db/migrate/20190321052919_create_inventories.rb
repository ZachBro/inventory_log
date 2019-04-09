class CreateInventories < ActiveRecord::Migration[5.2]
  def change
    create_table :inventories do |t|
      t.string  :number
      t.integer :employee_out_id
      t.integer :employee_in_id

      t.timestamps
    end
  end
end
