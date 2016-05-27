class AddActivityIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :activity, index: true
  end
end
