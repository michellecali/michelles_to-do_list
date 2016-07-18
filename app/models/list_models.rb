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

	def List.getNextKey(currentHash)
		nextKey = currentHash.length
		return nextKey
	end

	# def List.updateTaskDescription(taskDescription, nextKey, newDescription)
	# 	i = nextKey
	# 	j = newDescription
	# 	taskDescription[i] = j
	# 	return taskDescription
	# end

	# def List.updateTaskStatus (taskStatus, nextKey, newStatus)
	# 	i = nextKey
	# 	j = newStatus
	# 	taskStatus[i] = j
	# 	return taskStatus
	# end

	# def List.updateHash(nextKey, newHashValue, currentHash)
	# 	newHash = currentHash
	# 	newHash[nextKey] = newHashValue
	# 	return newHash
	# end

	# def List.makeNewArray(newHash)
	# 	newArray = Array.new
	# 	i = newHash
	# 	i.each do |j, k|
	# 		l = j
	# 		m = k
	# 		n = l + "|" + m
	# 		newArray << n
	# 	end
	# 	return newArray
	# end

	def List.writeNewTask(filename, newTask)
		i = newTask
		newFile = File.open(filename, "a")
		newFile.puts i
		newFile.close
	end

end

# # for local testing
x = List.getCurrentHash("todolist.txt")
print x

# y = List.getTaskStatus(x)
# print y

# z = List.getTaskDescription(x)
# print z

# w = List.getNextKey(x)
# print w 

# v = List.updateTaskDescription(z, w, "Go to the store")
# # print v

# u = List.updateTaskStatus(y, w, "i")
# # print u

# a = List.updateHash(w, "Go to the storei", x)
# puts "appended"
# print a

# b = List.makeNewArray(a)
# puts b




	
