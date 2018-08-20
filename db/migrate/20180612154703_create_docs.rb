class CreateDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :docs do |t|
			t.integer :song_id
			t.string :format
			t.string :description
			t.string :url
    end
  end
end
