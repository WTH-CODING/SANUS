
require("dotenv").config();

const path = require("path");
const express = require("express");
const app = express();
const mongoose = require("mongoose");
const bodyParser = require("body-parser");
const cookieParser = require("cookie-parser");
const cors = require("cors");
const http = require("http");

//My routes
const authRoutes = require("./routes/auth");
const userRoutes = require("./routes/user");
const healthIssueRoutes = require("./routes/healthIssue");
const reportRoutes = require("./routes/report");

mongoose
  .connect(process.env.DATABASE, {
    useNewUrlParser: true,
    useUnifiedTopology: true,
    useCreateIndex: true,
  })
  .then(() => {
    console.log("DB CONNECTED");
  });


app.use(bodyParser.json());
app.use(cookieParser());
app.use(cors());

app.use("/api", authRoutes);
app.use("/api", userRoutes);
app.use("/api", healthIssueRoutes);
app.use("/api", reportRoutes);

app.use("/check", (req,res)=>{
    res.send("Hanji serve chal raha sojao!");
});
app.use(express.static(__dirname + '/public',  { dotfiles: 'allow' }));
app.get('/', function (req, res) {
  res.send(__dirname + 'index.html');
  });

const httpServer = http.createServer(app);
httpServer.listen(80, () => {
  console.log("Server running on port 80");
});
