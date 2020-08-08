#!/bin/bash

.PHONY: serve
serve:
	docker run --rm \
		--volume="${PWD}:/srv/jekyll" \
		-p 4000:4000 \
		-it jekyll/jekyll:4 \
		jekyll serve --livereload

.PHONY: build
build:
	docker run --rm \
		--volume="${PWD}:/srv/jekyll" \
		-p 4000:4000 \
		-it jekyll/jekyll:4 \
		jekyll build --config _config.yml

clean: 
	rm -rf _site/
