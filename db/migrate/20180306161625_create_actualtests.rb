class CreateActualtests < ActiveRecord::Migration[5.1]
  def change
    create_table :actualtests do |t|
      t.string :title
      t.numeric :stringlength
      t.numeric :numberoftests

      t.timestamps
    end
  end
end
