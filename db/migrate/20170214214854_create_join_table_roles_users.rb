class CreateJoinTableRolesUsers < ActiveRecord::Migration[5.0]
  def change
    create_join_table :roles, :users do |t|
      # t.index [:roles_id, :users_id]
      # t.index [:users_id, :roles_id]
    end
  end
end
