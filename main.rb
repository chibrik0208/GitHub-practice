require_relative 'task_manager'

manager = TaskManager.new

task1 = Task.new("Buy groceries", "Milk, eggs, bread")
task2 = Task.new("Work on project", "Finish the Git exercise")

manager.add_task(task1)
manager.add_task(task2)

puts "\nAll Tasks:"
manager.list_tasks

puts "\nSearching for 'git':"
manager.search("git")

puts "\nMarking second task as completed:"
manager.complete_task(2)
puts "\nAll tasks after completion:"
manager.list_tasks

puts "\nMarking task #2 as important:"
manager.mark_important(2)
puts "\nAll tasks:"
manager.list_tasks