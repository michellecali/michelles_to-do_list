MyApp.get "/" do
	redirect "/all_tasks"
end

MyApp.get "/all_tasks" do
	@current_page = "list of all tasks"
	@currentHash = List.getCurrentHash("todolist.txt")
	@taskStatus = List.getTaskStatus(@currentHash)
	@taskDescription = List.getTaskDescription(@currentHash)
	erb :"/all_tasks"
end

MyApp.post "/all_tasks" do
	redirect "/all_tasks"
end