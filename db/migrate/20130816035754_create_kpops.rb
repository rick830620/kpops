class CreateKpops < ActiveRecord::Migration
  def change
    create_table :kpops do |t|
      t.string :group
      t.string :leader
      t.date :birth
      t.integer :member
      t.string :famous
      t.boolean :exist

      t.timestamps
    end
  end
end
