
build: components index.js dpd-styles.css
	lessc "less/deployd.less" "dpd-styles.css";
	@component build --dev

components: component.json
	@component install --dev

clean:
	rm -fr build components template.js

.PHONY: clean
