class AddUserToWines < ActiveRecord::Migration[7.0]
  def change
    add_reference :wines, :user, foreign_key: true
  end
end
