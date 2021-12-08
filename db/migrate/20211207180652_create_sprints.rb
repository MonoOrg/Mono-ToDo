class CreateSprints < ActiveRecord::Migration[6.1]
  def change
    create_table :sprints do |t|
      t.date        :date_start,  null: false
      t.date        :date_end,    null: false
      t.string      :name,        null: false
      t.string      :description, null: true
      t.belongs_to  :project,     null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
