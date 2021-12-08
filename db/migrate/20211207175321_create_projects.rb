class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string        :name,            null: false
      t.belongs_to    :user,            index: true, foreign_key: true
      t.text          :managers,        array: true
      t.text          :executors,       array: true
      t.string        :description,     null: false
      t.text          :tags,            hash: true
      t.timestamps
    end
  end
end
