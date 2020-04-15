class CreateImproves < ActiveRecord::Migration[6.0]
  def change
    create_table :improves do |t|
      t.string :comment
      t.references :retro, foreign_key: true

      t.timestamps
    end
  end
end
