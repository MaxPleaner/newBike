$data = OpenStruct.new \
        JSON.parse     \
        File.read      \
        ENV["JsonDatabasePath"]