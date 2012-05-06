class AddFieldsToSubjects < ActiveRecord::Migration
  def change
    add_column :subjects, :title, :string
    add_column :subjects, :seo_text, :text
    add_column :subjects, :keywords, :text
    add_column :subjects, :description, :text
  end
end
