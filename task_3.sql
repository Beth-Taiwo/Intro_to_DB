import mysql.connector

mydb = mysql.connector.connect(
    host="localhost",
    user="yourusername",
    password="yourpassword",
    database="alx_book_store"
)

mycursor = mydb.cursor()

mycursor.execute("SHOW TABLES")

tables = mycursor.fetchall()

print("List of tables in the database:")
for table in tables:
    print(table[0])