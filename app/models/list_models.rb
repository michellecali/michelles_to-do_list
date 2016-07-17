class List

	def List.getCurrentHash(filename)
		currentHash = {}
		file = File.open(filename, "r")
		file.each_line do |line|
			line.each_line do |pair|
				key,value = pair.split('|')
				currentHash[key] = value.chomp
			end
		end
		return currentHash
	end

	def List.getTaskStatus(currentHash)
		taskStatus = {}
		i = currentHash
		i.each do |j, k|
			l = k[-1]
			taskStatus[j] = l
		end
		return taskStatus
	end

	def List.getTaskDescription(currentHash)
		taskDescription = {}
		i = currentHash
		i.each do |j, k|
			l = k.chop
			taskDescription[j] = l
		end
		return taskDescription
	end

	# def List.printAllTasks(currentHash,taskStatus, taskDescription)
	# 	printAllTasks = {}
	# 	i = currentHash
	# 	i.each do 




	# def List.addNewTask(filename, newString)
	# 	i = newString
	# 	newFile = File.open(filename, "w")
	# 	newFile.print i
	# 	newFile.close
	# end
end

# # for local testing
# x = List.getCurrentHash("todolist.txt")
# print x


# y = List.getTaskStatus(x)
# print y

# z = List.getTaskDescription(x)
# print z




	
