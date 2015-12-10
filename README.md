# Flask simple app

Aplicacion simple con Flask.

## Uso

Correr con el servidor de flask

```
python run.py
```

Correr con gunicorn

```
gunicorn app.main:app
```

## Dockerfile

Construir imagen

```
docker build -t "flask-simple-container" .
```

Ejecutar contenedor

```
docker run -d --name my-flask-container -p 8000:8000 flask-simple-container
```

Validar ejecución

```
curl localhost:8000
```