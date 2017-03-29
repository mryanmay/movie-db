class CreateAppearances < ActiveRecord::Migration[5.0]
  def change
    create_table :appearances do |t|
      t.belongs_to :movie, index: true
      t.belongs_to :actor, index: true
      t.timestamps null: false
    end
  end
end
