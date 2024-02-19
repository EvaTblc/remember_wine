class CreateWines < ActiveRecord::Migration[7.0]
  def change
    create_table :wines do |t|
      t.string :name
      t.date :year
      t.string :type
      t.string :come_from
      t.string :vignoble
      t.text :description
      t.float :price
      t.timestamps
    end
  end
end
