const http = require('http');

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  if (req.url === '/' && req.method === 'GET') {
    res.writeHead(200, { 'Content-Type': 'application/json' });

    res.end(
      JSON.stringify({
        message: 'DevSecOps Shift Left Demo',
        status: 'running',
      }),
    );

    return;
  }

  res.writeHead(404, { 'Content-Type': 'application/json' });

  res.end(
    JSON.stringify({
      error: 'Not Found',
    }),
  );
});

server.listen(PORT, '0.0.0.0', () => {
  console.log(`Application is running on port ${PORT}`);
});
