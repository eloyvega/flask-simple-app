# Karma Pulse Twitter Engagement API

## Endpoints

### Accounts

El endpoint de accounts devuelve todos los usuarios que se registraron en la demo y dieron acceso a sus cuentas.

#### Uso

```
curl -v  http://host:port/accounts
```

**Respuesta**

["sofi_gomez28", "RafaelSotoN", "ferfabs", "botonamarillo", "MarcAndTony", "citlallimugnoz", "ChrisLejarazu", "omarjkuri", "Sr_Sol", "ElRubs_", "ruzsiankid", "DannLeFou", "garfiaslopez", "inchelilia", "lorematzu", "Domoalberto", "ximen000", "jarritosmx", "alexmanius", "AnaRoss_", "eljulesmx", "amesaz", "sandie_magu", "xspohn", "TheVansters", "jareOficial", "LanixMobileMX", "mrspauochoa", "pcasaubond", "Odilchen", "lyondb", "FedeClasing", "diegocordero", "GeraRodRam", "marge_rc", "maresa"]

### Totals

El endpoint de totals devuelve los tweets de un usuario y los resultados obtenidos de cada tweet al ser analizados con el endpoint de totales de twitter.

#### Uso

**Solicitar los primeros 10 tweets de un usuario ordenados por fecha**

```
http://host:port/totals?owner=jarritosmx&count=10
```

Dentro de la respuesta obtendremos un atributo con el identificador **next** este nos servida para paginar en los siguientes 10 resultados.

**Ejemplo**

```
http://host:port/totals?owner=jarritosmx&count=10&next=9
```

Es posible solicitar que los tweets vengan ordenadas de distintas formas. Por defecto cuando no se indica el valor de order_by los tweets se se regresan ordenados por fecha del mas viejo al mas reciente.

Las opciones para order los tweets son:

**retweets**: Del tweet con menor numero de retweets al mayor.
**favorites**: Del tweet con menor numero de favorites al mayor.
**replies**: Del tweet con menor numero de replies al mayor.
**total_engage**: Se ordenan de menor a mayor segun haya sido el resultado de la suma de retweets, favorites y replies.

**Ejemplo**
```
http://host:port/totals?owner=jarritosmx&count=10&order_by=retweets
```
