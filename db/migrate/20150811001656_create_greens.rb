class CreateGreens < ActiveRecord::Migration
  def change
    create_table :greens do |t|
      t.references :aim
      t.references :user

      t.timestamps null: false
    end
  end
end
