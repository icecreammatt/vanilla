GCSS_SOURCE=src/gcss/*.gcss
ALL_GCSS_TARGET=static/css/all.gcss
CSS_TARGET=static/css/all.css

#$(CSS_TARGET): $(ALL_GCSS_TARGET)
#	gcss $^

#$(ALL_GCSS_TARGET): $(GCSS_SOURCE)
#	cat $^ >$@

css: $(CSS_TARGET)

$(CSS_TARGET): $(GCSS_SOURCE)
	cat $^ | gcss >$@

watch:
	goat

dep:
	go get github.com/yosssi/goat/...
	go get -u github.com/yosssi/gcss/...
