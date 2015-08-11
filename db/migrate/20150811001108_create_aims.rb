class CreateAims < ActiveRecord::Migration
  def change
    create_table :aims do |t|
      t.aim :references
      t.user :references
      t.description :string

      t.timestamps null: false
    end
  end
end
