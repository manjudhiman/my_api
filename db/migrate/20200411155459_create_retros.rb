class CreateRetros < ActiveRecord::Migration[6.0]
  def change
    create_table :retros do |t|
      t.integer :retro

      t.timestamps
    end
  end
end
