class CreateCourses < ActiveRecord::Migration[7.1]
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :author
      t.decimal :rate
      t.string :duration
      t.string :language

      t.timestamps
    end
  end
end
