## Добавляем конфиги
```
kubectl create configmap caddyfile --from-file=Caddyfile
kubectl create configmap geo-rest-config --from-file=geo-rest-config.toml
```

## Добавляем сервисы
```
kubectl create -f elastic-service.yml
kubectl create -f tarantool-service.yml
kubectl create -f backend-service.yaml
kubectl create -f frontend-service.yml
```

## Добавляем ssl сертификаты для ingress
```
kubectl create secret tls track-delivery.club --key track-delivery.club.key --cert track-delivery.club.crt
```

## Добавляем ingress
```
kubectl create -f ingress.yaml
```

## Добавляем рабочие нагрузки
```
kubectl create -f elastic-deployment.yaml
kubectl create -f tarantool-deployment.yaml
kubectl create -f backend-deployment.yaml
kubectl create -f frontend-deployment.yml
```
