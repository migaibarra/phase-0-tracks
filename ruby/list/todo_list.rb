class TodoList
	attr_accessor :list

	def initialize(array)
		@list = array
	end

	def get_items
		@list
	end

	def add_item(item)
		@list.push(item)
	end

	def delete_item(item)
		@list.delete(item)
	end

	def get_item(index)
		@list[index]
	end
end