require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :students do |student|
      student.belongs_to :teacher
      student.string     :first_name
      student.string     :last_name
      student.string     :gender
      student.date       :birthday
      student.string     :email
      student.string     :phone
      student.timestamps
    end

    create_table :teachers do |teacher|
      teacher.string   :student
      teacher.string   :name
      teacher.string   :email
      teacher.string   :phone
      teacher.timestamps
    end
  end
end
