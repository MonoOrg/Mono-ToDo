class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.belongs_to :owner, null: false
      t.belongs_to :admin, null: false
      t.timestamps
    end
  end
end
