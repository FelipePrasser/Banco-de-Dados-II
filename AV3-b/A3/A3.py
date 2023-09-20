import mysql.connector

sakilaBD=mysql.connector.connect(
    user="root",
    password="root",
    host="localhost",
    database="sakila"
)

conexao=sakilaBD.cursor()
conexao.execute("Select * from ator_filme")
resultado=conexao.fetchall()
for i in resultado:
    print(i)

sakilaBD.close()