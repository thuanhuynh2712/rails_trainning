class CreateUserTokens < ActiveRecord::Migration[7.1]
  def change
    create_table :user_tokens do |t|
      t.string :token

      t.timestamps
    end
  end
end
