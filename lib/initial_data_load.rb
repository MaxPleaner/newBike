$data = OpenStruct.new \
        JSON.parse     \
        File.read      \
        "bikes.json"