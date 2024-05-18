class CreateTestings < ActiveRecord::Migration[7.1]
  def change
    create_table :testings do |t|
      t.string :message
      t.timestamps
    end
  end
end
