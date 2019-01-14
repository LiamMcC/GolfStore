class CreateUserProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :user_profiles do |t|
      t.string :name
      t.string :lastname
      t.string :street
      t.string :county
      t.string :postal_code
      t.string :city
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
