require "sqlite3"
db= SQLite3::Database.new("user_log.db")

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

# def create_todo_list(d,date, todo)
#   d.execute(
#     "INSERT INTO login(list_date, list)
#     VALUES (?, ?)",[date, todo]
#   )
# end

# add_to_list = ""
# # ADD CURRENT DATE
# current_date = Time.now.strftime("%d/%m/%Y")
#
# # ADD USER FOR TITLE
# p "Add title"
# title = gets.chomp
# # ASK USER FOR THINGS THEY WANT TO ADD
#
# until continue == "N"
#   p "#{count}. Add to todo list"
#   todo = gets.chomp
#   add_to_list = todo
#   p "Do you want to continue?(Y/N)"
#   user_answer = gets.chomp.upcase
#   count += 1
#   continue = user_answer
# end
#   IF THERE IS MORE, KEEP ASKING
