GCSS_SOURCE=src/gcss/*.gcss
CSS_TARGET=static/css/all.css

css: $(CSS_TARGET)

$(CSS_TARGET): $(GCSS_SOURCE)
	cat $^ | gcss >$@

watch:
	goat

dep:
	go get github.com/yosssi/goat/...
	go get -u github.com/yosssi/gcss/...
