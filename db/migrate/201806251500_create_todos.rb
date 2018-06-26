require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to

class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    # HINT: checkout ActiveRecord::Migration.create_table
    create_table :tasks do |t|
    	t.string :description
      t.string :status
      t.timestamps 

      #if add foreign key here so no need that other (create_tasks) rb file.
    end
  end
end