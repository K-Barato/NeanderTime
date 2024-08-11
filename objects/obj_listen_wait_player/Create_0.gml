
// Crea un mapa para el encabezado
var _header_map = ds_map_create();
ds_map_add(_header_map, "Content-Type", "application/json");
var _url = "none";
var _json_data = "none";
// Define la URL y los datos JSON para enviar
player_selected = obj_global_values_manager.player_selected;
if(player_selected == "player_1")
{
	_url = "https://firestore.googleapis.com/v1/projects/nantertime/databases/(default)/documents/actions/62yJ8Y1Kmqm9Db0c8uJM?updateMask.fieldPaths=player1_ready";
	_json_data = "{\"fields\": {\"player1_ready\": {\"booleanValue\": true}}}";
}else
{
	_url = "https://firestore.googleapis.com/v1/projects/nantertime/databases/(default)/documents/actions/62yJ8Y1Kmqm9Db0c8uJM?updateMask.fieldPaths=player2_ready";
	_json_data = "{\"fields\": {\"player2_ready\": {\"booleanValue\": true}}}";
}

// Realiza la solicitud HTTP con el método PATCH
http_request(_url, "PATCH", _header_map, _json_data);

request_interval = 60 * 1; // Change to 1 for the demo
request_timer = request_interval;

//waiting player
waiting_state_player = "none";