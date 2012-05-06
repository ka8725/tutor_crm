class AddSubjectCategoryIdToSubjectCategory < ActiveRecord::Migration
  def change
    add_column :subjects, :subject_category_id, :integer
  end
end
