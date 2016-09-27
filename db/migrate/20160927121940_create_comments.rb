class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :post, foreign_key: true, index: true
      t.string :description

      t.timestamps
    end
  end
end
