var tty = require('tty.js');

var app = tty.createServer({
  shell: 'bash',
  users: {
    foo: 'bar'
  },
  port: 8080
});

app.get('/foo', function(req, res, next) {
  res.send('bar');
});

app.listen();
