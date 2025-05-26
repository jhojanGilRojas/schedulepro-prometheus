# Usamos la imagen oficial de Prometheus
FROM prom/prometheus:latest

# Copiamos el archivo de configuración prometheus.yml dentro del contenedor
COPY prometheus.yml /etc/prometheus/prometheus.yml

# Exponemos el puerto 9090 (por defecto de Prometheus)
EXPOSE 9090

# El comando por defecto ya está configurado en la imagen oficial para usar /etc/prometheus/prometheus.yml,
# pero puedes declararlo explícitamente si quieres:
CMD ["--config.file=/etc/prometheus/prometheus.yml"]
