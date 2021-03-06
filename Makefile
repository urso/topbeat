BEATNAME=topbeat
SYSTEM_TESTS=true

include scripts/Makefile

.PHONY: install-cfg
install-cfg:
	cp etc/topbeat.template.json $(PREFIX)/topbeat.template.json
	# linux
	cp etc/topbeat.yml $(PREFIX)/topbeat-linux.yml
	# binary
	cp etc/topbeat.yml $(PREFIX)/topbeat-binary.yml
	# darwin
	cp etc/topbeat.yml $(PREFIX)/topbeat-darwin.yml
	# win
	cp etc/topbeat.yml $(PREFIX)/topbeat-win.yml

