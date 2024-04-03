#! /bin/bash
rm -rf webapp

mkdir webapp

mkdir css

mkdir js

mkdir docs

mkdir img

cd docs/

mkdir text

mkdir python

cd ..

for file in index.html style.css app.js main.py
    do
        touch ./"${file}"
    done

mv css docs img js ./webapp/

cmd //c tree //F ./

curl -o meme.jpg "https://pm1.aminoapps.com/7021/417429318f6b29b6bc737fb95ba1ddafc9ba2decr1-720-642v2_hq.jpg"

read -p "Introduce la cantidad de archivos a crear:" numfiles
    for x in $( seq 1 $numfiles )
    do
        echo "Archivo ${x}" > "file${x}.txt"
    done

cmd //c tree //F ./

mv file*.txt webapp/docs/text/ && mv style.css webapp/css/ && mv main.py webapp/docs/python/ && mv app.js webapp/js/ && mv meme.jpg webapp/img/ && mv index.html webapp/

cmd //c tree //F ./