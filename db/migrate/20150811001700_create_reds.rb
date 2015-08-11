class CreateReds < ActiveRecord::Migration
  def change
    create_table :reds do |t|
      t.aim :references
      t.user :references

      t.timestamps null: false
    end
  end
end
