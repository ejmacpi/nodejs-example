const http = require('http');
const port = 9002;
const server = http.createServer((req, res) => {
   res.writeHead(200, {'Content-Type': 'text/plain'});
   res.end('nodejs web server\n');
});
server.listen(port, () => {
  console.log(`Server running at localhost:${port}/`);
});
