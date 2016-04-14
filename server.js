var tty = require('tty.js');

var app = tty.createServer({
  shell: 'bash',
  users: {
    'user00': 'openshift3',
    'user01': 'openshift3',
    'user02': 'openshift3',
    'user03': 'openshift3',
    'user04': 'openshift3',
    'user05': 'openshift3',
    'user06': 'openshift3',
    'user07': 'openshift3',
    'user08': 'openshift3',
    'user09': 'openshift3',
    'user10': 'openshift3',
    'user11': 'openshift3',
    'user12': 'openshift3',
    'user13': 'openshift3',
    'user14': 'openshift3',
    'user15': 'openshift3',
    'user16': 'openshift3',
    'user17': 'openshift3',
    'user18': 'openshift3',
    'user19': 'openshift3',
    'user20': 'openshift3',
    'user21': 'openshift3',
    'user22': 'openshift3',
    'user23': 'openshift3',
    'user24': 'openshift3',
    'user25': 'openshift3',
    'user26': 'openshift3',
    'user27': 'openshift3',
    'user28': 'openshift3',
    'user29': 'openshift3',
    'user30': 'openshift3',
    'user31': 'openshift3',
    'user32': 'openshift3'
  },
  port: 8080
});

app.get('/foo', function(req, res, next) {
  res.send('bar');
});

app.listen();
