class CreateGymMembership < ActiveRecord::Migration[7.0]
  def change
    create_join_table :gyms, :users, table_name: :gym_memberships do |t|
      t.timestamps

      t.index [:gym_id, :user_id]
      t.index [:user_id, :gym_id]
    end
  end
end
