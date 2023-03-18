# Define the HTML code
html = '''
<!DOCTYPE html>
<html>
<head>
    <title>My Page</title>
</head>
<body>
    <h1>Hello World!</h1>
    <p>This is my first HTML page created with Python.</p>
</body>
</html>
'''

# Save the HTML code to a file
with open('my_page.html', 'w') as f:
    f.write(html)