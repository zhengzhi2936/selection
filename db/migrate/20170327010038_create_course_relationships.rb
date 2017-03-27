class CreateCourseRelationships < ActiveRecord::Migration[5.0]
  def change
    create_table :course_relationships do |t|
      t.integer :student_id
      t.integer :course_id

      t.timestamps
    end
  end
end
