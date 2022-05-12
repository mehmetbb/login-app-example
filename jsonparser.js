function readJsonFile(source, callback) {

    var xhr = new XMLHttpRequest;
    xhr.open("GET", source);
    xhr.onreadystatechange = function() {
        if (xhr.readyState == XMLHttpRequest.DONE) {
            var doc = xhr.responseText;
            var json = JSON.parse(doc);
            callback.update(json);
        }
    }

   xhr.send();
}

