
def html_page(content)
	<<-HTML
		<!doctype html>
		<html lang='en'>
		<body>
		#{content}
		</body>
		</html>
	HTML
end