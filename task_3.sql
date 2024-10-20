import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="yourusername",
    password="yourpassword",
)

mycursor = mydb.cursor()

mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    
mycursor.execute("USE alx_book_store")

mycursor.execute("SHOW TABLES")

tables = mycursor.fetchall()

print("List of tables in the database:")
for table in tables:
    print(table[0])