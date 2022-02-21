class CreateArtifacts < ActiveRecord::Migration[6.1]
  def change
    create_table :artifacts do |t|
      t.string :name
      t.string :manufacturer
      t.string :sku
      t.string :image_src
      t.string :location
      t.string :keywords
      t.belongs_to :category, null: false, foreign_key: true
    end
  end
end
