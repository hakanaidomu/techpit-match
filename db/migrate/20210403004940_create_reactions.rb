class CreateReactions < ActiveRecord::Migration[6.0]
  def change
    create_table :reactions do |t|

      t.timestamps
      t.references :to_user, null: false, foreign_key: { to_table: :users }
      t.references :from_user, null: false, foreign_key: { to_table: :users }
      t.integer :status, null: false
    end
  end
end
