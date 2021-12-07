class CreateSubprojects < ActiveRecord::Migration[6.1]
  def change
    create_table :subprojects do |t|
      t.belongs_to  :admin
      t.string      :name, null: false
      t.string      :description
      t.timestamps
    end
  end
end
