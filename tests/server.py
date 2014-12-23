from wsgiref.simple_server import make_server
from ws4py.websocket import WebSocket
from ws4py.server.wsgirefserver import WSGIServer, WebSocketWSGIRequestHandler
from ws4py.server.wsgiutils import WebSocketWSGIApplication
import time

class RavnHandler(WebSocket):
	def received_message(self, m):
		print m

	def r_send(self, message):
		"""
		Adds "$" to delimeter for messages
		"""
		self.send(message + "$")
		print "HERE2"

	def opened(self):
		print "HERE"
		time.sleep(.1)
		self.r_send("%" + ",".join([
			str("LOITER"),
			str(29.67895865659),
			str(31.67895865659),
			str(25.68945489566),
			str(50.98894),
			str(25),
			str(150),
			str(200.646),
			str(0.365),
			str(20.646),
			str(True),
			str(30.56),
			str(26.59)
		]))

server = make_server('', 9000, server_class=WSGIServer,
	handler_class=WebSocketWSGIRequestHandler,\
	app=WebSocketWSGIApplication(handler_cls=RavnHandler))
server.initialize_websockets_manager()
server.serve_forever()
