class AddNameToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :description, :string, default: "Fale mais sobre você! Deixe sua descrição :)"
    add_column :users, :coin, :integer, default: 15
  end
end
