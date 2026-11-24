#!/bin/sh
# Rebuild index.html from the artifact source (~/Projects/pflege-demo/praesentation/index.html), then commit + push.
cd "$(dirname "$0")" && python3 - <<'PY'
src=open('/Users/polkingo/Projects/pflege-demo/praesentation/index.html').read()
head,rest=src.split('<style>',1)
open('index.html','w').write('<!doctype html>\n<html lang="de">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n<meta name="description" content="Werley: der Pflege-Agent zwischen Pflegekraft, Patientin, Hausarzt, Apotheke und Lieferant.">\n'+head.replace('<meta name="claude:viewport-fit-sides" content="cover">\n','')+'<style>'+rest.replace('</style>','</style>\n</head>\n<body>',1)+'\n</body>\n</html>\n')
PY
