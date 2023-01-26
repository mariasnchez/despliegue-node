<h1> Aplicación hola mundo en node.js </h1>

<h3>Paso 1</h3>
    <p>Instalamos node.js en nuestro equipo. </p>
    <p> Enlace: https://nodejs.org/es/ </p>
    <br>

<h3>Paso 2</h3>
    <p>Una vez instalados, verificamos la instalación con los siguientes comandos:</p>
    <li>node --version</li>
    <li>npm --version</li>
    <br>

<h3>Paso 3</h3>
    <p>Debemos crear una carpeta para nuestro proyecto en donde guardaremos los archivos. </p>
    <br>

<h3>Paso 4</h3>
    <p>Creamos el archivo <strong>package.json</strong> </p>
    <p>En nuestro editor de código escribimos lo siguiente:</p>
        <p>{<br>
            "name": "helloworld",<br>
            "version": "1.0.0",<br>
            "description": "",<br>
            "main": "app.js",<br>
            "scripts": {<br>
            "start": "node ./node_modules/pm2/bin/pm2 start ./server.js --name hello_aws --log ../logs/app.log",<br>
            "stop": "node ./node_modules/pm2/bin/pm2 stop hello_aws",<br>
            "build": "echo 'Building' .. "<br>
            },<br>
            "dependencies": {<br>
            "pm2": "^5.2.2"<br>
            },<br>
            "keywords": [],<br>
            "author": "",<br>
            "license": "ISC"<br>
        }</p>
    <br>

<h3>Paso 5</h3>
    <p>Creamos el archivo <strong>app.js</strong></p>
    <p>Debemos escribir el siguiente código:</p>
       <p> const { hostname } = require('os'); <br>
        const http = require('http');<br>

        const message = "Hola Mundo";<br>
        const port = 8080;<br>

        const server = http.createServer((req,res) => {<br>
            res.statusCode = 200;<br>
            res.setHeader('Content-Type',"text/plain");<br>
            res.end(message);<br>
        });<br>

        server.listen(port, hostname, () => {<br>
            console.log(`Servidor corriendo en http://${hostname()}:${port}/`);<br>
        });</p>

<h3>Paso 6</h3>
    <p><strong> Iniciar el servidor</strong></p>
    <p>Abrimos la terminal en nuestra carpeta.</p>
    <p>Escribimos el siguiente comando:</p>
    <li>node app.js</li>
    <p>Nos debe aparecer en la terminal "Servidor corriendo en http://DESKTOP-DL545SN:8080/" </p>
    <p>Si clickamos en el enlace nos aparecerá nuestra página "Hola mundo".</p>

<h3>Paso 7</h3>
    <p><strong>Parar el servidor</strong></p>
    <p>Pulsamos las teclas CTRL+C</p>
    <p>Nuestro servidor estaría inactivo.</p>
