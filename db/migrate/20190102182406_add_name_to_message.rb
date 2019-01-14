class AddNameToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :name, :string
  end
end
