.PHONY: update-releases update

update: update-releases
	./update.sh

update-releases: kerl
	./kerl update releases

kerl:
	curl -O https://raw.githubusercontent.com/yrashk/kerl/master/kerl && \
	chmod a+x kerl
