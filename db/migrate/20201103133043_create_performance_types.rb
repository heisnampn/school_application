class CreatePerformanceTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :performance_types do |t|
	  t.string  :name
	  t.integer :min_value, default: 1
	  t.integer :max_value
      t.timestamps
    end
  end
end
