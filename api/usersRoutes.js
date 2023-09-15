module.exports = function(app) {
  
  const users = [
    { id: 0, name: 'John', age: 25 },
    { id: 1, name: 'John', age: 25 },
    { id: 2, name: 'Jane', age: 24 },
    { id: 3, name: 'Jim', age: 26 }
  ];

  app.get('/users', (req, res) => {
    res.json(users)
  });

  app.get('/users/:id', (req, res) => {
    const { id } = req.params;
    if (id > users.length - 1) {
      res.status(404).send('User not found');
    }
    
    res.json(users[id]);
  });

}