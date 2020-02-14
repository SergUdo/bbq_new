class CreateSubscriptions < ActiveRecord::Migration[6.0]
  def change
    create_table :subscriptions do |t|
      t.string, :user_name
      t.string, :user_email
      t.reference :event

      t.timestamps
    end
  end
end
