class CreateTasks < ActiveRecord::Migration[6.1]
  def change
    create_table :tasks do |t|
      t.string :name, null: false
      t.string :description, null: true
      t.string :tag, null: false, default: ''
      t.string :type, null: false, default: ''
      t.belongs_to :user, as: :executor, null: true
      t.belongs_to :user, as: :author, null: false
      t.timestamps
    end
  end
end
