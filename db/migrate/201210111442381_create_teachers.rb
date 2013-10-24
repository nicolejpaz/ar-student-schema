require_relative '../config'

class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |teacher|
      teacher.string                  :name
      teacher.string                  :email
      teacher.string                  :phone
      teacher.timestamps
    end
  end
end
