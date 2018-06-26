require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to

class CreateTodoTable < ActiveRecord::Migration[5.0]
 
  def change
		create_table :todos do |t|
			t.string :title
		end
	end
end