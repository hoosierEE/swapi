# swapi
Return a list of starships that have at least one pilot, along with their pilots.

# usage

``` sh
git clone https://github.com/hoosierEE/swapi.git
cd swapi
docker build -t swapi:0 .
docker run swapi:0
```

output:

```
Millennium Falcon (pilots: Chewbacca, Han Solo, Lando Calrissian, Nien Nunb)
X-wing (pilots: Luke Skywalker, Biggs Darklighter, Wedge Antilles, Jek Tono Porkins)
TIE Advanced x1 (pilots: Darth Vader)
```
