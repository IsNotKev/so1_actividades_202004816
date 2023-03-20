# Actividad 4 - SO1

| Nombre                           | Carnet                                     |
|:--------------------------------:|:------------------------------------------:|
| Kevin Steve Martínez Lemus       | 202004816                  			  	|

## Crear el archivo .service

Se creará el siguiente archivo /lib/systemd/system/actividad4.service con el siguiente contenido:

```
    [Unit]
    Description=Actividad 4

    [Service]
    User=kevin
    ExecStart=/home/kevin/Escritorio/actividad4.sh

    [Install]
    WantedBy=multi-user.target
```

El contenido del script, para imprimir un saludo y la fecha actual, puede ser:

```
    #!/bin/bash

    echo 'Hola!, hoy es'
    echo $(date +"%d/%m/%Y")
```

Es recomendable configurar los permisos 777 al archivo, esto se hace econ el comando: `chmod actividad4.service`.

## Administrar el servicio creado

Antes de poder empezar a utilizarlo debemos habilitarlo con el comando «enable»:

```
    sudo systemctl enable actividad4.service
```

Ahora que ya hemos habilitado el servicio, lo tenemos que iniciar manualmente la primera vez.

```
    sudo systemctl start actividad4.service
```

Y para detenerlo

```
    sudo systemctl stop actividad4.service
```