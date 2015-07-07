class CreateViolins < ActiveRecord::Migration
  def change
    create_table :violins do |t|
      t.string :maker

      t.timestamps null: false
    end
  end
end
