#!/bin/bash
main() {
	echo 'hello world'
}
main

# keep to work containers
exec tail -f /dev/null
