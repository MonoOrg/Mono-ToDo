class CreateBacklogs < ActiveRecord::Migration[6.1]
  def change
    create_table :backlogs do |t|
      t.belongs_to  :project, null: false
      t.timestamps
    end
  end
end
