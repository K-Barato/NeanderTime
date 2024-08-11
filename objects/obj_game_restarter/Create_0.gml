// Crea un mapa para el encabezado
var _header_map = ds_map_create();
ds_map_add(_header_map, "Content-Type", "application/json");

// Define la URL de Firestore
var _url = "https://firestore.googleapis.com/v1/projects/nantertime/databases/(default)/documents/actions/62yJ8Y1Kmqm9Db0c8uJM";

// Crea el cuerpo de la solicitud JSON con todos los campos que deseas actualizar
var _json_data = "{\"fields\": {\
    \"player1_ready\": {\"booleanValue\": false},\
    \"player2_ready\": {\"booleanValue\": false},\
    \"p1_level1\": {\"booleanValue\": false},\
    \"p1_level2\": {\"booleanValue\": false},\
    \"p1_level3\": {\"booleanValue\": false},\
    \"p2_level1\": {\"booleanValue\": false},\
    \"p2_level2\": {\"booleanValue\": false},\
    \"p2_level3\": {\"booleanValue\": false}\
}}";

// Realiza la solicitud HTTP con el método PATCH
http_request(_url, "PATCH", _header_map, _json_data);

// Limpieza
ds_map_destroy(_header_map);
