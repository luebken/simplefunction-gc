const request = require('request');

exports.simplefunctionA = (req, res) => {
  console.log('start simplefunctionA')
  request('https://us-central1-testing-serverless.cloudfunctions.net/simplefunctionB', {}, (err, res2, body) => {
    if (err) { return console.log(err); }
    res.send('Hello World from simplefunctionA + ' + body);
  });
};
