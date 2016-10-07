$pstoreDatabaseSyncInterval = 5
Thread.new do
	loop do
		$db.transaction { $db[bikes] = $data.bikes }
		sleep $pstoreDatabaseSyncInterval
	end
end
