import mysql.connector
from mysql.connector import Error

try:
    mydb = mysql.connector.connect(
        host="localhost",
        user="yourusername",
        password="yourpassword",
    )

    mycursor = mydb.cursor()

    mycursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    print("Database 'alx_book_store' created successfully!")

except Error as e:
    print(f"The error '{e}' occurred")

finally:
    mycursor.close()
    mydb.close()