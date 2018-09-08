#! /usr/bin/make -f

URL := $(shell gcloud functions describe helloGET --format json | jq .httpsTrigger.url)

deploy:
	cd simplefunction-a; gcloud functions deploy helloGET --trigger-http;

trigger:
	curl $(URL)

delete: 
	gcloud functions delete helloGET