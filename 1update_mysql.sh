import mysql.connector

db = mysql.connector.connect(
    host=input("Enter hostname: "),
    user=input("Enter Username: "),
    password=input("Enter Password: "),
    database=input("Enter Database Name:")
)

cs=db.cursor()

#cs.execute("""
#alter table student
#add column email varchar(50)
#""")

cs.execute("""
update student
set email = concat(fname, ".", lname, "@ambertag.com")
""")
print("query executed")
db.commit()

cs.execute("select * from student")
students_mail = cs.fetchall()
print("----------------------")
print("Student data with email")

for student in students_mail:
    print(student)


cs.close()
db.close()

