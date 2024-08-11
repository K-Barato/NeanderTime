function update_state_player(_level, _player){
	var _header_map = ds_map_create();
	ds_map_add(_header_map, "Content-Type", "application/json");
	var _url = "none";
	var _json_data = "none";
	switch (_level)
	{
		case "level1":
			if(_player == "player_1")
			{
				_url = "https://firestore.googleapis.com/v1/projects/nantertime/databases/(default)/documents/actions/62yJ8Y1Kmqm9Db0c8uJM?updateMask.fieldPaths=p1_level1";
				_json_data = "{\"fields\": {\"p1_level1\": {\"booleanValue\": true}}}";
			}else
			{
				_url = "https://firestore.googleapis.com/v1/projects/nantertime/databases/(default)/documents/actions/62yJ8Y1Kmqm9Db0c8uJM?updateMask.fieldPaths=p2_level1";
				_json_data = "{\"fields\": {\"p2_level1\": {\"booleanValue\": true}}}";
			}

		break;
			
		
		case "level2":
		
			if(_player == "player_1")
			{
				_url = "https://firestore.googleapis.com/v1/projects/nantertime/databases/(default)/documents/actions/62yJ8Y1Kmqm9Db0c8uJM?updateMask.fieldPaths=p1_level2";
				_json_data = "{\"fields\": {\"p1_level2\": {\"booleanValue\": true}}}";
			}else
			{
				_url = "https://firestore.googleapis.com/v1/projects/nantertime/databases/(default)/documents/actions/62yJ8Y1Kmqm9Db0c8uJM?updateMask.fieldPaths=p2_level2";
				_json_data = "{\"fields\": {\"p2_level2\": {\"booleanValue\": true}}}";
			}
			
		break;
		
		case "level3":
		
			if(_player == "player_1")
			{
				_url = "https://firestore.googleapis.com/v1/projects/nantertime/databases/(default)/documents/actions/62yJ8Y1Kmqm9Db0c8uJM?updateMask.fieldPaths=p1_level3";
				_json_data = "{\"fields\": {\"p1_level3\": {\"booleanValue\": true}}}";
			}else
			{
				_url = "https://firestore.googleapis.com/v1/projects/nantertime/databases/(default)/documents/actions/62yJ8Y1Kmqm9Db0c8uJM?updateMask.fieldPaths=p2_level3";
				_json_data = "{\"fields\": {\"p2_level3\": {\"booleanValue\": true}}}";
			}
		
		break;
		
	}
	
	http_request(_url, "PATCH", _header_map, _json_data);
}