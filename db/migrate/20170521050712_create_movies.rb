class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :rating
      t.string :total_gross
      t.string :decimal

      t.timestamps
    end
  end
end
