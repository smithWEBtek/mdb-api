class CreateMp3s < ActiveRecord::Migration[5.2]
  def change
    create_table :mp3s do |t|
			t.string :name

    end
  end
end
