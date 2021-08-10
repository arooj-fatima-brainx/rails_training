class CreateJoinTableUserProduct < ActiveRecord::Migration[6.1]
  def change
    create_join_table :users, :my_products do |t|
      # t.index [:user_id, :my_product_id]
      # t.index [:my_product_id, :user_id]
    end
  end
end
