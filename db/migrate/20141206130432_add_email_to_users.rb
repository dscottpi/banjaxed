class AddEmailToUsers < ActiveRecord::Migration
  def up
    change_table :users, bulk: true do |t|
      t.string :github_email
    end
  end

  def down
    change_table :users, bulk: true do |t|
      t.remove :github_email
    end
  end

end
