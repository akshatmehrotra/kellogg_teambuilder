class CreateQuarters < ActiveRecord::Migration
  def change
    create_table :quarters do |t|
      t.string :term

      t.timestamps

    end
  end
end
