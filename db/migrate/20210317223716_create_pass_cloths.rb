class CreatePassCloths < ActiveRecord::Migration[6.0]
  def change
    create_table :pass_cloths do |t|
      t.references :cattle, null: false, foreign_key: true
      t.references :phrase, null: false, foreign_key: true

      t.timestamps
    end
  end
end
