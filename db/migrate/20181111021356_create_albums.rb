class CreateAlbums < ActiveRecord::Migration[5.2]
  def change
    create_table :albums do |t|

      t.belongs_to :user, through: :collection, index: true
      t.belongs_to :collection, index: true
      t.belongs_to :list, index: true

      t.string :title
      t.string :artist
      t.string :image
      t.string :discog_id
      t.string :label
      t.string :release_date
      t.string :country
      t.string :genre
      t.string :subgenre
      t.text :notes
      t.text :playback_notes
      t.string :sleeve_condition
      t.string :disc_condition
      t.string :pressed


      t.timestamps
    end
  end
end
