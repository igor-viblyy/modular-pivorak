class CreatePivorakEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :pivorak_events_events do |t|
      t.string   :title,     null: false
      t.datetime :start,     null: false
      t.datetime :finish,    null: false
      t.string   :place,     null: false
      t.text     :agenda,    null: false

      t.timestamps
    end
  end
end
