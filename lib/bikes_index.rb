get '/bikes' do
	@bikes = $data.bikes
	html_page(@bikes.ai(html: true))
end
