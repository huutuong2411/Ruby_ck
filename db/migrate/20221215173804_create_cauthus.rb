class CreateCauthus < ActiveRecord::Migration[7.0]
  def change
    create_table :cauthus do |t|
      t.string :name
      t.string :club
      t.string :age

      t.timestamps
    end
  end
end
