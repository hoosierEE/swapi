import json

un = {} # {url: name}
with open("pilots") as pilots:
    for line in pilots.read().splitlines():
        u,n = line.split(' ',1)
        un[u] = n

with open("ships2") as ships:
    text = ships.read()
    for u,n in un.items():
        text = text.replace(u,n)
    results = json.loads(text)

for ship in results:
    print(ship['name'], f'(pilots: {", ".join(ship["pilots"])})')
