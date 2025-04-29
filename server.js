// server.js
const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/', (req, res) => {
  res.send('Hello from Node.js inside Docker!');
});

app.listen(port, () => {
  console.log(`Server is running on port ${port}`);
});
