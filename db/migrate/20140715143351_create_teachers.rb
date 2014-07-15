class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :teacher_code

      t.timestamps
    end
  end
end
