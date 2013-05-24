var http = require('http');

var server = http.createServer(function(request, response){
  response.writeHead(200, {"Content-Type": "application/javascript"});
  var data = 'callback([{"title":"SF","value": 7},{"title":"Tokyo","value": 11},{"title":"New York","value": 10},{"title":"Manila","value": 2}])'
  response.write(data);
  response.end();
});

server.listen(80);