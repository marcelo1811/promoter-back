class CreateRegisters < ActiveRecord::Migration[6.0]
  def change
    create_table :registers do |t|
      t.references :promoter, null: false, foreign_key: true
      t.references :establishment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
