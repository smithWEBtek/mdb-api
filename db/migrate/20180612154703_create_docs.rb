class CreateDocs < ActiveRecord::Migration[5.2]
  def change
    create_table :docs do |t|
			t.string :name
			t.string :description
			t.integer :song_id
			t.string :format
			t.string :url
			
    end
  end
end
