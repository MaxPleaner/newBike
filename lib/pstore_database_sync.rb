Thread.new do
	loop do
		$db.transaction { $db[bikes] = $data.bikes }
		sleep ENV["PstoreDatabaseSyncInterval"].to_i
	end
end
