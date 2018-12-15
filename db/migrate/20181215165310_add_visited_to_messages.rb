class AddVisitedToMessages < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :visited, :boolean, default: false
  end
end
