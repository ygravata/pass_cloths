class CreateCattles < ActiveRecord::Migration[6.0]
  def change
    create_table :cattles do |t|
      t.string :cattle_name
      t.string :politician
      t.string :type

      t.timestamps
    end
  end
end
