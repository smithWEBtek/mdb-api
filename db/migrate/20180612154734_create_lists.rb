class CreateLists < ActiveRecord::Migration[5.2]
  def change
    create_table :lists do |t|
			t.string :name
			t.string :description
			t.string :date

    end
  end
end
