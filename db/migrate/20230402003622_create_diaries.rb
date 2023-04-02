class CreateDiaries < ActiveRecord::Migration[6.1]
  def change
    create_table :diaries do |t|
      t.string :tite
      t.text :summary
      t.text :description
      t.integer :importance
      t.date :date

      t.timestamps
    end
  end
end
