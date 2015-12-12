class AddPlanToUser < ActiveRecord::Migration
  def change
    add_column :users, :plain_id, :integer
  end
end
