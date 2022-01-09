class AddColorToPets < ActiveRecord::Migration[6.1]
  def change
    add_column :pets, :color, :string
  end
end
