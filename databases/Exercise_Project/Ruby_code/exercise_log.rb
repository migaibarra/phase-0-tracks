## Exercise Log Project
#  Coded by Miguel A. Ibarra, Jr.

# Requiring gems
require 'sqlite3'
require 'faker'

# Creating a SQLite3 database:
db = SQLite3::Database.new("../SQLite3/Exercise_Logs.db")

create_users = <<-SQL
	CREATE TABLE IF NOT EXISTS Users(
		UserID INTEGER PRIMARY KEY,
		Firstname VARCHAR(255),
		Lastname VARCHAR(255),
		DOB NVARCHAR(25),
		Age INT,
		Weight INT,
		Exercise_Log INT
	)
SQL

create_exercise_logs = <<-SQL
	CREATE TABLE IF NOT EXISTS exercise_logs(
		Exercise_Log INTEGER PRIMARY KEY,
		Exercise_type INT,
	)
SQL

create_outdoor_run = <<-SQL
	CREATE TABLE IF NOT EXISTS outdoor_run(
		Exercise_type INTEGER PRIMARY KEY,
		Exercise VARCHAR(255),
		Date NVARCHAR(25),
		Distance INT,
		Time INT,
		Calories INT
	)
SQL

create_cycling = <<-SQL
	CREATE TABLE IF NOT EXISTS cycling(
		Exercise_type INTEGER PRIMARY KEY,
		Exercise VARCHAR(255),
		Date NVARCHAR(25),
		Distance INT,
		Time INT,
		Ave_speed INT,
		Calories INT
	)
SQL

create_swimming = <<-SQL
	CREATE TABLE IF NOT EXISTS swimming(
		Exercise_type INTEGER PRIMARY KEY,
		Exercise VARCHAR(255),
		Date NVARCHAR(25),
		Pool_length INT,
		Laps INT,
		Time INT,
		Calories INT
	)
SQL

# Creating the tables
db.execute(create_users)
db.execute(create_exercise_logs)
db.execute(create_outdoor_run)
db.execute(create_cycling)
db.execute(create_swimming)

# Creating multiple users using faker:
def create_user(db, firstname, lastname, dob, weight)
	db.execute("INSERT INTO Users (Firstname, Lastname, DOB, Weight) VALUES (?, ?, ?, ?)")
end

# Filing in fake data using faker:
100.times do
	create_user(db, Faker::Name.first_name, Faker::Name.last_name, Faker::Date.birthday(18, 65), Random.rand(100...250))
end




