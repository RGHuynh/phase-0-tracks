require "sqlite3"
db = SQLite3::Database.new("user_log.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS login(
    id INTEGER PRIMARY KEY,
    bulletin INTEGER,
    list_date DATE,
    list VARCHAR(255),
  );
SQL

db.execute(create_table_cmd)

def create_todo_list(db, date, todo)
  db.execute(
    "INSERT INTO login(list_date, list)
    VALUES (?, ?)",[date, todo]
  )
end


def things_to_do
  p "What do you want to add to your todo list?"
  todo = gets.chomp
end

current_date = Time.now.strftime("%d/%m/%Y")

continue = "Y"
until continue == "N"
  add_to_list = things_to_do
  create_todo_list(db, current_date, add_to_list)
  p "Do you want to continue (Y/N)"
  continue = gets.chomp.upcase
end

# if there is something in the list aalredy, do not dublicate
