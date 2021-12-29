class CreateBooks < ActiveRecord::Migration[6.0]
  def change
    create_table :books do |t|
      t.string :title, index: true
      t.string :authors, index: true
      t.string :isbn, index: true

      t.timestamps
    end
  end
end
