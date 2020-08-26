class CreatePackages < ActiveRecord::Migration[5.2]
  def change
    create_table :packages do |t|
      t.string :name
      t.string :guide_number
      t.string :status
      t.string :description

      t.timestamps
    end
  end
end
