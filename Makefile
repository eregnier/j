.PHONY: build push clean deploy

build:
	python3 setup.py sdist
	python3 setup.py bdist_wheel

push: build
	python3 setup.py sdist upload
	python3 setup.py bdist_wheel upload

clean:
	rm -rf build dist q.egg-info
	find -name *.pyc -delete
	@- git status

deploy: push clean
