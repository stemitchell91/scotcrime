class CreateStatistics < ActiveRecord::Migration
  def change
    create_table :statistics do |t|
      t.string :year
      t.float :number1

      t.timestamps null: false
    end
  end
end
