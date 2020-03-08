class CreatePromoters < ActiveRecord::Migration[6.0]
  def change
    create_table :promoters do |t|
      t.references :user, null: false, foreign_key: true
      t.references :establishment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
