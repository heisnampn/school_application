class CreateStudentRatings < ActiveRecord::Migration[5.2]
  def change
    create_table :student_ratings do |t|
      t.integer :rating,  default: 0
      t.references :user, foreign_key: true, index: true
      t.timestamps
    end
  end
end
