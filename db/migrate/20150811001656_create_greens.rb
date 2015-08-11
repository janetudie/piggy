class CreateGreens < ActiveRecord::Migration
  def change
    create_table :greens do |t|
      t.aim :references

      t.timestamps null: false
    end
  end
end
