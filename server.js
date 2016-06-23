var tty = require('tty.js');

var app = tty.createServer({
  shell: 'sh',
  users: {
   'devday':'devday'
  },
  "cwd": "/opt/app-root/src",
  "geometry": [180, 124],
   "colors": [
      "#2e3436",
      "#cc0000",
      "#4e9a06",
      "#c4a000",
      "#3465a4",
      "#75507b",
      "#06989a",
      "#d3d7cf",
      "#555753",
      "#ef2929",
      "#8ae234",
      "#fce94f",
      "#729fcf",
      "#ad7fa8",
      "#34e2e2",
      "#eeeeec"
    ],
   port: 8080
});

app.get('/foo', function(req, res, next) {
  res.send('bar');
});

app.listen();
