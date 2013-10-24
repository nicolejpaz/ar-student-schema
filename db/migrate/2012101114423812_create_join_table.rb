require_relative '../config'

class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :students, :teachers do |column| #:students_teachers do |column|
      column.integer :student_id
      column.integer :teacher_id
    end
  end
end
