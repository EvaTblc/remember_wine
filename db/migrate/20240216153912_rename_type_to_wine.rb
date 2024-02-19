class RenameTypeToWine < ActiveRecord::Migration[7.0]
  def change
    rename_column :wines, :type, :color
  end
end
