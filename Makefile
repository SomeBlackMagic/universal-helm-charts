build:
	docker build -t someblackmagic/universal-helm-charts:php8.2-fpm-latest -f .docker/php8.2-fpm/Dockerfile .
	docker build -t someblackmagic/universal-helm-charts:php8.2-composer-latest -f .docker/php8.2-composer/Dockerfile .
	docker build -t someblackmagic/universal-helm-charts:php8.2-app-latest -f .docker/php-app/Dockerfile .

	docker build -t someblackmagic/universal-helm-charts:nginx-app-latest -f .docker/nginx-app/Dockerfile .


push:
	docker push someblackmagic/universal-helm-charts:php8.2-app-latest
	docker push someblackmagic/universal-helm-charts:nginx-app-latest

deploy-nginx:
	# helm dependency build .helm/charts/app-nginx
	helm upgrade \
		--install \
		--debug \
		--wait \
		-f .helm/apps/nginx.yaml \
		nginx \
		.helm/charts/app-nginx

deploy-php-fpm:
	# helm dependency build .helm/charts/app-php-fpm
	helm upgrade \
		--install \
		--debug \
		--wait \
		-f .helm/apps/php-fpm.yaml \
		php-fpm \
		.helm/charts/app-php-fpm

deploy-php-worker:
	#helm dependency build .helm/charts/app-worker
	helm upgrade \
		--install \
		--debug \
		--wait \
		-f .helm/apps/worker.yaml \
		worker \
		.helm/charts/app-worker

deploy-php-nodejs:
	#helm dependency build .helm/charts/app-nodejs
	helm upgrade \
		--install \
		--debug \
		--wait \
		-f .helm/apps/nodejs.yaml \
		worker \
		.helm/charts/app-nodejs

