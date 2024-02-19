class ModifyYearIntoInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :wines, :year, :integer
  end
end
