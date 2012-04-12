class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :name
      t.boolean :show_on_the_site

      t.timestamps
    end
  end
end
