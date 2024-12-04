


# Usa una imagen base de Python
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de tu aplicación al contenedor
COPY . /app

# Instala las dependencias desde requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expone el puerto 5000 para la aplicación Flask
EXPOSE 5000

# Define el comando para ejecutar tu aplicación
CMD ["flask", "run", "--host=0.0.0.0"]
