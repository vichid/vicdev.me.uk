var express = require('express');
var nodemailer = require("nodemailer");
var app = express();

app.configure(function() {
    app.use(express.static(__dirname + '/dist'));     // set the static files location /public/img will be /img for users
    app.use(express.logger('dev'));             // log every request to the console
    app.use(express.json());
    app.use(express.urlencoded());
    app.use(express.favicon());
  });

app.get('*', function(req, res) {
  res.sendfile('index.html');
});

app.post('/', function(req, res) {
  console.log(req.body);
  var smtpTransport = nodemailer.createTransport("SMTP",{
      service: "Gmail",
      auth: {
          user: "email",
          pass: "password"
      }
  });

  var mailOptions = {
      from: "email",
      to: "email",
      subject: "Portfolio",
      html: "Name: <b>" + req.body.name + "</b><br>Body: " + req.body.message + "<br>Email:" + req.body.email
  }

  smtpTransport.sendMail(mailOptions, function(error, response){
      if(error){
          res.send(500, 'Something broke');
      }else{
          res.redirect('/');
      }
  });
});

app.listen(3001);
console.log("App listening on port 3001");