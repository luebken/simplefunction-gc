#! /usr/bin/make -f

URL := $(shell gcloud functions describe simplefunctionA --format json | jq .httpsTrigger.url)

deploy:
	cd simplefunctionA; gcloud functions deploy simplefunctionA --trigger-http;

trigger:
	curl $(URL)

delete: 
	gcloud functions delete simplefunctionA