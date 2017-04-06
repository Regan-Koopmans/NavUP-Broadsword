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
	@nsqlookupd &
	@nsqd --lookupd-tcp-address=127.0.0.1:4160 &
	@nsqadmin --lookupd-http-address=127.0.0.1:4161 &
	@echo "Message service is running..."

kill-comms:
	@killall nsqlookupd
	@killall nsqd
	@killall nsqadmin
	@rm *.dat
