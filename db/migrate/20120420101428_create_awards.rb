class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.references :user
      t.references :badge

      t.timestamps
    end
    add_index :awards, :user_id
    add_index :awards, :badge_id
  end
end
