class CreateAims < ActiveRecord::Migration
  def change
    create_table :aims do |t|
      t.references :user
      t.string :description

      t.timestamps null: false
    end
  end
end
