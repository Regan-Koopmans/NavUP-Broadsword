import nsq
import tornado.ioloop
import time

json_string = '{"src": "users", "content" : { "email" : "u15081479@tuks.co.za", "message" : "this works"}}'

def pub_message():
	writer.pub('Notification', json_string, finish_pub)

def finish_pub(conn, data):
	print(data)


writer = nsq.Writer(['127.0.0.1:4150'])
tornado.ioloop.PeriodicCallback(pub_message, 1000).start()
nsq.run()
