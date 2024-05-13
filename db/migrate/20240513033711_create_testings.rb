class CreateTestings < ActiveRecord::Migration[7.1]
  def change
    drop_table :testings if table_exists?(:testings)
    create_table :testings do |t|
      t.string :name

      t.timestamps
    end
  end
end
