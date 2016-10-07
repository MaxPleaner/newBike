Thread.new do
	loop do
		File.open(ENV["JsonDatabasePath"], 'w') do |f|
			f.write({ bikes: $data.bikes }.to_json)
		end
		sleep ENV["JsonDatabaseSyncInterval"].to_i
	end
end