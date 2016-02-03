class CreateAppsMembers < ActiveRecord::Migration
  def change
    create_table :apps_members, id: false do |t|
      t.integer :app_id
      t.integer :member_id
    end
    add_index :apps_members, :app_id
    add_index :apps_members, :member_id
  end
end
