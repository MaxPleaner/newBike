BikesIndex = -> do
	@bikes = $data.bikes
	@bikes.to_json
end
