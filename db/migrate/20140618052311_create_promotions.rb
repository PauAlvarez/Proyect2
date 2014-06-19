class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.date :fechapromo
      t.string :mediodecomunica
      t.text :descrippromo
      t.text :acuerdo
      t.references :user, index: true
      t.references :client, index: true

      t.timestamps
    end
  end
end
