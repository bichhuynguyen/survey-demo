class AddInterviewerIdToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :interviewer_id, :integer
  end
end
