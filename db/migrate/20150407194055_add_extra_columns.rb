class AddExtraColumns < ActiveRecord::Migration
  def change
	add_column :statistics, :number2, :float
	add_column :statistics, :number3, :float
	add_column :statistics, :number4, :float
	add_column :statistics, :number5, :float
	add_column :statistics, :number6, :float
	add_column :statistics, :number7, :float
	add_column :statistics, :number8, :float
  end
end
