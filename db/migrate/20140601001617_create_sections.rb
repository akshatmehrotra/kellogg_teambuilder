class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.integer :number

      t.timestamps

    end
  end
end
