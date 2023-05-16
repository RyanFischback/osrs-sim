const express = require('express');
const connectDB = require('./db/db');
const dotenv = require('dotenv').config();
const port = process.env.PORT;

connectDB();

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));

app.listen(port, function () {
  console.log("Server started on port ".concat(port));
});