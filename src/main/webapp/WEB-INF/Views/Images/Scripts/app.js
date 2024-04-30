const express = require('express');
const bodyParser = require('body-parser');

const app = express();

app.use(bodyParser.urlencoded({ extended: true }));

app.post('/submit-form', (req, res) => {
  console.log(req.body);
  res.send('Form submitted!');
});

app.listen(3000, () => {
  console.log('Server listening on port 3000');
});