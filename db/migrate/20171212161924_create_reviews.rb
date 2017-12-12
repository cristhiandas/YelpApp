class CreateReviews < ActiveRecord::Migration[5.1]
  def change
    create_table :reviews do |t|
      t.string :author
      t.string :email
      t.integer :rating
      t.text :comments

      t.timestamps
    end
  end
end
