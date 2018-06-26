require_relative '../../config/application'

# this is where you should use an ActiveRecord migration to

class CreateTasks < ActiveRecord::Migration[5.0]
 
  def change
		add_reference  :tasks, :todo
	end
end