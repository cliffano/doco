all: ci
ci: lint test

lint:
	checkmake src/Makefile-doco

test:
	cd examples && \
	  make -f ../src/Makefile-doco ci test-examples deps-upgrade update-dotfiles update-to-latest update-to-main && \
	  make -f ../src/Makefile-doco update-to-version TARGET_DOCO_VERSION=0.9.0

release-major:
	rtk release --release-increment-type major

release-minor:
	rtk release --release-increment-type minor

release-patch:
	rtk release --release-increment-type patch

release: release-minor

.PHONY: all ci lint release release-major release-minor release-patch test