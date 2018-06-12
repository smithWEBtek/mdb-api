class CreateListSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :list_songs do |t|
      t.integer :list_id
      t.integer :song_id

    end
  end
end
