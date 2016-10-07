$jsonDatabaseSyncInterval = 5

Thread.new do
	loop do
		File.open($bikeJsonPath, 'w') do |f|
			f.write({ bikes: $data.bikes }.to_json)
		end
		sleep $jsonDatabaseSyncInterval
	end
end