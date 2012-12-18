class AddPriceToLineItems < ActiveRecord::Migration
	# タスクE:free_practice
  def change
    add_column :line_items, :price, :decimal
  end
end
