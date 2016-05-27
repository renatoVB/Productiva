class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :category
      t.string :rut
      t.string :address

      t.timestamps
    end
  end
end