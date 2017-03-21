var mongoose = require( 'mongoose' ),
  express  = require( 'express' ),
  bp       = require('body-parser'),
  path     = require( 'path' ),
  root     = __dirname,
  port     = process.env.PORT || 8000,
  app      = express();
app.use( express.static( path.join( root, 'client/static' )));
app.use( express.static( path.join( root, 'bower_components' )));
app.use(bp.json());
//connect to db and create schemas with validations
mongoose.connect('mongodb://localhost/partials_db');


app.listen( port, function() {
  console.log( `server running on port ${ port }` );
  });
