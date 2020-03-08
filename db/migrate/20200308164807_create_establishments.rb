class CreateEstablishments < ActiveRecord::Migration[6.0]
  def change
    create_table :establishments do |t|
      t.integer :admin_id
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
