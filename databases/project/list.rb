require "sqlite3"
db = SQLite3::Database.new("user_log.db")

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS login(
    id INTEGER PRIMARY KEY,
    bulletin INTEGER,
    list_date DATE,
    list VARCHAR(255),
    user_name INTEGER,
    user_pw INTEGER,
    FOREIGN KEY(user_name) REFERENCES user_acc(username),
    FOREIGN KEY(user_name) REFERENCES user_acc(pw)
  );
SQL

create_user_table_cmd = <<-SQL
CREATE TABLE IF NOT EXISTS user_acc(
  id INTEGER PRIMARY KEY,
  username VARCHAR(255),
  pw VARCHAR(255)
);
SQL

db.execute(create_user_table_cmd)
db.execute(create_table_cmd)

def create_todo_list(db, date, todo)
  db.execute(
    "INSERT INTO login(list_date, list)
    VALUES (?, ?)",[date, todo]
  )
end

def login(db, username, password)
  db.execute(
    "INSERT INTO user_acc(username, pw)
    VALUES(?,?)",[username, password]
  )
end

def things_to_do
  p "Add to todo list"
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

#   IF THERE IS MORE, KEEP ASKING
