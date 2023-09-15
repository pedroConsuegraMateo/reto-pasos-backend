const app = require('express')();

require('./api/usersRoutes')(app);

app.listen('3000', () => {
  console.log('App listening on port 3000!');
})