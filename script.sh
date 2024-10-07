#!/bin/sh

# first get all the ships
curl -s 'https://swapi.dev/api/starships/' > ships

# just ships with pilots (as json array)
jq -r '[.results[] | select(.pilots != null and (.pilots | length) > 0) | {name, pilots}]' ships > ships2

# just pilots (as text)
pilots=$(jq '.[].pilots | .[]' ships2)

# get their names from the API
# result is list of lines (URI and name) separated by tab character
echo "$pilots" | xargs -n 1 -I {} sh -c 'echo -n "{} "; curl -s "{}" | jq -r ".name"' > pilots

# substitute URI with corresponding name
# probably could do this with jq but I am quicker with python
python3 display.py <<EOF
EOF
