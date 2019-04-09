class CreateAssetCounts < ActiveRecord::Migration[5.2]
  def change
    create_table :asset_counts do |t|
      t.string :count

      t.timestamps
    end
  end
end
