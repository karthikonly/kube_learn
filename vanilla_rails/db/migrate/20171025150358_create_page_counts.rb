class CreatePageCounts < ActiveRecord::Migration
  def change
    create_table :page_counts do |t|
      t.integer :count, default: 0

      t.timestamps null: false
    end
  end
end
