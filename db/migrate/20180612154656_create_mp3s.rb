class CreateMp3s < ActiveRecord::Migration[5.2]
  def change
    create_table :mp3s do |t|
			t.string :name
			t.string :description
			t.integer :song_id
			t.string :url
			
    end
  end
end