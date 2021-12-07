class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string        :name,            null: false
      t.belongs_to    :user,            as: :owner
      t.text          :managers,        array: true,  default: []
      t.text          :executors,       array: true,  default: []
      t.string        :description,     null: false
      t.text          :tags,            hash: true,   default: {}
      t.timestamps
    end
  end
end
