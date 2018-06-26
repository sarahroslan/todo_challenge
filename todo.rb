            # Pre-configurations (Change if you want an awesome difficulty assessment)
require_relative 'config/application'

# Your Code begins from this line onwards #

class Todo < ActiveRecord::Base
	has_many :tasks
	attr_accessor :description, :status

	def add(description)
		task = Task.new(description: description, status: "undone")
		task.save
	end

	def list
		tasks = Task.all
		tasks.all.each_with_index do |task,index|
		puts "#{index+1} #{task.description} #{task.status}" 
 		end
	end

	def delete(id)
		task = Task.all[id - 1]
		if task 
			task = task.delete
		else
			puts "Task not found! Please try again."
		end

	end

	def update(id, description, status)
		task = Task.all[id-1]	
		if task 
			task = task.update(description: description, status: status)
		else
			puts "Task not found! Please try again."
		end
		
	end
#update status only
	def update_done(id)
			task = Task.all[id-1]	
			task.update(description: description, status: "done")

	end
end
	
todo = Todo.new

#puts todo.add("sleep","undone")
#puts todo.list

#puts "hello"

action = ARGV[0]
	if action == "add" 
		todo.add ARGV[1]
		todo.list
	elsif action == "list"
		todo.list
		todo.delete ARGV[1].to_i
		todo.list
	elsif action == "update"
		todo.update ARGV[1].to_i, ARGV[2],ARGV[3]
		todo.list
	elsif action == "done" # this is not working!
		todo.update_done ARGV[1].to_i, ARGV[2], ARGV[3]
		todo.list
	else
		puts "error"
	end
#pay attention to driver code and the information passed from it, to the methods above!!