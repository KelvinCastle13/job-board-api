class CreateCompanies < ActiveRecord::Migration[8.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :logo
      t.string :description

      t.timestamps
    end
  end
end
