import mysql.connector

def query_mysql(query):
	cnx = mysql.connector.connect(user='zack', password='batist90',
								  host='138.197.151.78',port='3306',
								  database='open-archaeo',charset="utf8")
	cursor = cnx.cursor()
	cursor.execute(query)
	#get header and rows
	header = [i[0] for i in cursor.description]
	rows = [list(i) for i in cursor.fetchall()]
	#append header to rows
	rows.insert(0,header)
	cursor.close()
	cnx.close()
	return rows

#take list of lists as argument	
def nlist_to_html(list2d):
	#bold header
	htable=u'<table border="1" bordercolor=000000 cellspacing="0" cellpadding="1" style="table-layout:fixed;vertical-align:bottom;font-size:13px;font-family:verdana,sans,sans-serif;border-collapse:collapse;border:1px solid rgb(130,130,130)" >'
	list2d[0] = [u'<b>' + i + u'</b>' for i in list2d[0]] 
	for row in list2d:
		newrow = u'<tr>' 
		newrow += u'<td align="left" style="padding:1px 4px">'+(row[0])+u'</td>'
		row.remove(row[0])
		newrow = newrow + ''.join([u'<td align="right" style="padding:1px 4px">' + (x) + u'</td>' for x in row])  
		newrow += '</tr>' 
		htable+= newrow
	htable += '</table>'
	return htable
	

def sql_html(items_query):
	return nlist_to_html(query_mysql(items_query))
def sql_html(people_query):
	return nlist_to_html(query_mysql(people_query))
def sql_html(organizations_query):
	return nlist_to_html(query_mysql(organizations_query))
	
items_query = "select `name`, `description`, `maintainer1`, `maintainer2`, `maintainer3`, `maintainer4`, `url1`, `url2`, `url3` from `items`"
people_query = "select `name`, `position`, `affiliated-department`, `affiliated-institution`, `homepage`, `github`, `gitlab`, `twitter`, `email` from `people`"
organizations_query = "select `name`, `abbreviation`, `description`, `host-department`, `host-institution`, `homepage`, `github`, `gitlab`, `bitbucket`, `twitter` from `organizations`"

items_html = sql_html(items_query)
people_html = sql_html(people_query)
organizations_html = sql_html(organizations_query)

with open("/Users/zackbatist/Dropbox/open-archaeo/items.html", "w") as file:
	file.write(items_html)
with open("/Users/zackbatist/Dropbox/open-archaeo/people.html", "w") as file:
	file.write(people_html)
with open("/Users/zackbatist/Dropbox/open-archaeo/organizations.html", "w") as file:
	file.write(organizations_html)
