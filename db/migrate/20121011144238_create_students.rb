require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |student|
      student.string                  :first_name
      student.string                  :last_name
      student.string                  :gender
      student.date                    :birthday
      student.string                  :email
      student.string                  :phone
      student.timestamps
    end
  end

  # def up
  #   add_column :students, :name, :string
  #   Student.all.each do |student|
  #     student.update_attribute! :name => student.first_name + " " + student.last_name
  #   end
  #   remove_column :students, :first_name
  #   remove_column :students, :last_name
  # end
end
