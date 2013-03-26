var app = require('express')()
, server = require('http').createServer(app)
, io = require('socket.io').listen(server);

server.listen(8080);

io.sockets.on('connection', function( socket ){
	socket.on('message', function( message ){
		console.log( message );
		io.sockets.emit( 'message', message );
	});
});

io.sockets.on('message', function( message ){
	console.log( message );
	io.sockets.emit( 'message', message );
});
