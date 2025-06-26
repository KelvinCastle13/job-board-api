class ChangeDescriptionToTextInJobs < ActiveRecord::Migration[8.0]
  def change
    change_column :jobs, :description, :text
  end
end
