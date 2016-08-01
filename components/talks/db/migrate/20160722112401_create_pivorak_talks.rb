class CreatePivorakTalks < ActiveRecord::Migration[5.0]
  def change
    create_table :pivorak_talks_talks do |t|
      t.string   :speaker,     null: false
      t.string   :topic,       null: false
      t.text     :description, null: false
      t.string   :video,       null: false
      t.text     :slides
      t.integer  :event_id
      t.timestamps
    end
  end
end
