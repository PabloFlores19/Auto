# Calabash mobile test suite
###################################################################################################################################################
Instalar:

1. RVM con ruby --> 2.0 en adelante
2. Instalar `SDK de Android` y agregar diferentes APIS > a la 19 recomendablemente.
3. Agregar las variables de entorno `$JAVA_HOME` y `$ANDROID_HOME` al archivo `.bash_profile` o `.profile` en el caso de mac y linux.
4. Instalar Bundler `$gem install bundler.`
5. Clonar el repositorio en Gitlab.
6. ir a la carpeta del proyecto y Ejecutar `bundle install`

###################################################################################################################################################

Correr Scripts:

1. Conectar nuestro dispositivo android y aceptar los permisos.

2. Verificar si esta conectado con el comando `$adb devices`.
List of devices attached   
2GHBBBA591600183	device

3. Agregamos nuestro ID en el archivo `cucumber.yml` que se encuentra en la carpeta config dentro del proyecto
por ejemplo:
`htc: --tag @mx ADB_DEVICE_ARG=2GHBBBA591600183`
Donde: `htc:` es el nombre de nuestro Profile a ejecutar con el `ID` de nuestro dispositivo.

4. Entramos hasta la carpeta `global` en nuestro proyecto recomendamos poner nuestras apps en esta ubicación y le hacemos un `resign` a nuestra aplicación a probar, esta aplicación .apk
la ponemos dentro de la misma carpeta `global`, para hacer el resign ejecutamos estos 2 comandos:
 `$ calabash-android resign Claromusica_20160622_MEXICO_6_2_31.apk`
 `$ calabash-android build Claromusica_20160622_MEXICO_6_2_31.apk`
        Nos tiene que mostrar algo como esto:
 `Done signing the test server. Moved it to test_servers/f6a141fe8564cd4dfe4bc70f529b1024_0.7.3.apk`.
 
5. Por ultimo ejecutamos el siguiente comando para correr los test
 `$ calabash-android run Claromusica_20160622_MEXICO_6_2_31.apk -p htc`
 Con este comando estamos ejecutando nuestra aplicacion ya firmada con el `-p htc` le estamos indicando a que dispositivo y con que perfil,
 en caso de tener varios dispositivos conectados.


Nota: Cada vez que queramos probar una version de apk diferente, tenemos que repetir el paso 4 y de preferencia que sean dispositivos que
     no tengan la apk instalada en el sistema por default.












#TODO


