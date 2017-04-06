make:
	make update
	make test

update:
	@echo "Updating module repositories..."
	@git submodule update --recursive --remote 
	@echo "Done!"

test:
	@echo "Running tests..."

test-comms:
	@echo "Starting"
	@nsqlookupd > comms1.log &
	@nsqd --lookupd-tcp-address=127.0.0.1:4160 > comms2.log &
	@nsqadmin --lookupd-http-address=127.0.0.1:4161 > comms3.log &
	@echo "Message service is running..."

kill-comms:
	@killall nsqlookupd
	@killall nsqd
	@killall nsqadmin
	@rm *.dat

start:
	@make test-comms &
	@python notification/notificationModule.py > notif.log &
	@python finalReader.py > users.log &
	@node access/Nav\ UP/navUPServer.js 4000 > access.log &
	
test-data:
	@echo "Sending test GIS message to Data" &
	@python MockGISProducer.py &
	@echo "Data is reading GIS message" &
	@python query_resolver.py &


stop:
	@make kill-comms
	@killall python
	@killall node
