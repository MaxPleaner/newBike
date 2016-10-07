HtmlPage = -> (content) do
	<<-HTML
		<!doctype html>
		<html lang='en'>
		<body>
		#{content}
		</body>
		</html>
	HTML
end