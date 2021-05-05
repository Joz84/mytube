class CreateVisios < ActiveRecord::Migration[6.0]
  def change
    create_table :visios do |t|
      t.references :user, null: false, foreign_key: true
      t.string :api_token

      t.timestamps
    end
  end
end
