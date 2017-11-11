require "sqlite3"

# ADD CURRENT DATE
current_date = Time.now.strftime("%d/%m/%Y")

# ADD USER FOR TITLE
p "Add title"
title = gets.chomp
# ASK USER FOR THINGS THEY WANT TO ADD
#   IF THERE IS MORE, KEEP ASKING
