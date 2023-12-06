class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :main_cast
      t.string :genre
      t.string :runtime
      t.string :synopsis

      t.timestamps
    end
  end
end
