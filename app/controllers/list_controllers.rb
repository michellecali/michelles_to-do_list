MyApp.get "/" do
	redirect "/all_tasks"
end

MyApp.get "/all_tasks" do
	@current_page = "list of all tasks"
	@currentHash = List.getCurrentHash("todolist.txt")
	@taskStatus = List.getTaskStatus(@currentHash)
	@taskDescription = List.getTaskDescription(@currentHash)
	binding.pry
	erb :"/all_tasks"
end

MyApp.post "/all_tasks" do
	redirect "/all_tasks"
end

MyApp.get "/new_task" do
	@current_page = "create a new task"
	erb :"/new_task"
end

MyApp.post "/new_task" do
	@currentHash = List.getCurrentHash("todolist.txt")
	@nextKey = List.getNextKey(@currentHash)
	@newDescription = params['newDescription']
	@newStatus = params['newStatus']
	@newTask = "#{@nextKey}|#{@newDescription}#{@newStatus}"
	List.writeNewTask("todolist.txt", @newTask)
	redirect "/new_task"
end