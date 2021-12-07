class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string        :name,            null: false
      t.belongs_to    :user
      t.text          :managers,        array: true
      t.text          :executors,       array: true
      t.string        :description,     null: false
      t.text          :tags,            hash: true
      t.timestamps
    end
  end
end
