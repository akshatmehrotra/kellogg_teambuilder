class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :instructor
      t.integer :calendar_id
      t.integer :quarter_id
      t.integer :department_id
      t.integer :team_size
      t.integer :section_id

      t.timestamps

    end
  end
end
