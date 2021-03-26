class AddQuantitynbToInstruction < ActiveRecord::Migration[6.0]
  def change
    add_column :instructions, :quantitynb, :integer
  end
end
