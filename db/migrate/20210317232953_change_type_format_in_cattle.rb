class ChangeTypeFormatInCattle < ActiveRecord::Migration[6.0]
  def change
    change_column :cattles, :cattle_type, :integer, using: 'cattle_type::integer'
  end
end
