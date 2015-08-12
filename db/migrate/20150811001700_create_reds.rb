class CreateReds < ActiveRecord::Migration
  def change
    create_table :reds do |t|
      t.references :aim
      t.references :user

      t.timestamps null: false
    end
  end
end
