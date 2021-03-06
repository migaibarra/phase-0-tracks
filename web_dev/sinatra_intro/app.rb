# require gems
require 'sinatra'
require 'sqlite3'
require 'faker'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

create_contact_table = <<-SQL
  CREATE TABLE IF NOT EXISTS contact(
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    address VARCHAR(255)
  )
SQL

db.execute(create_contact_table)

# Copied student ID and name from students table using the following SQL commands
# in the SQL command line:

# INSERT INTO contact (id, name) SELECT id, name FROM students;

# The next few lines of code are run only once to fill in the database with fake
# addresses (Please note that this did not quite work the way I intended and 
# everyone has the same addresss, so let's pretend they all live in a commune):

# def create_contact(db, address)
#   db.execute("UPDATE contact SET address = (?)", [address])
# end

# 50.times do
#   create_contact(db, Faker::Address.street_address)
# end 

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end 
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

# writing a GET route that retrieves
# The students addresses
get '/contact' do
	contact = db.execute("SELECT * FROM contact")
	response = ""
	contact.each do |contact|
		response << "ID: #{contact['id']}<br>"
		response << "Name: #{contact['name']}<br>"
		response << "Address: #{contact['address']}<br><br>"
	end
	response
end

# writing a great job route to tell a person that they did a great job
get '/great_job/:person' do
	person = params[:person]
	"Good job, #{person}!"
end

# writing a route to add two numbers together
