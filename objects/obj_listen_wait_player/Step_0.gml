request_timer -= 1;
if (request_timer <= 0) {
    var _url = "https://firestore.googleapis.com/v1/projects/nantertime/databases/(default)/documents/actions";
    http_get(_url); // Realiza la petición HTTP
    request_timer = request_interval; // Reinicia el temporizador
}
