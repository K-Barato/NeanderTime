if (ds_map_exists(async_load, "id")) { // Verifica que async_load contiene un "id"
    if (ds_map_exists(async_load, "result")) {
        var _response = async_load[? "result"]; // Obtiene la respuesta en formato JSON
        show_debug_message("Respuesta recibida: " + _response); // Imprime la respuesta completa

        // Decodificar el JSON
        var _data = json_decode(_response);

        // Asegurarse de que el documento existe
        if (ds_map_exists(_data, "documents")) {
            var _documents = _data[? "documents"];
            
            // Acceder al primer documento
            if (ds_list_size(_documents) > 0) {
                var _first_document = ds_list_find_value(_documents, 0);
                
                // Acceder a los campos del documento
                var _fields = _first_document[? "fields"];
                
                // Extraer el valor de "player1-level1"
				
                var _player1_level1_value = _fields[? "player1_ready"][? "booleanValue"];
				if(player_selected = "player_1"){
					_player1_level1_value = _fields[? "player2_ready"][? "booleanValue"];
				}
                
                // Mostrar el valor en la consola de depuración
                show_debug_message("Valor de player2_ready: " + string(_player1_level1_value));
				show_debug_message("Cambios detectados");
				waiting_state_player = string(_player1_level1_value);
				if(waiting_state_player == "1"){
					room_goto(rm_level_1);
				}
				show_debug_message(waiting_state_player);
            } else {
                show_debug_message("No se encontraron documentos.");
            }
        } else {
            show_debug_message("No se encontró la clave 'documents' en la respuesta.");
        }
    } else {
        show_debug_message("Error en la petición HTTP.");
    }
}

