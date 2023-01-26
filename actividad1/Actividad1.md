# Actividad 1 - SO1

| Nombre                           | Carné                                      |
|:--------------------------------:|:------------------------------------------:|
| Kevin Steve Martínez Lemus       | 202004816                  			  	|

## ¿Qué es el Kernel?

Un kernel es el núcleo o el corazón de un sistema operativo, es el principal responsable de mediar entre los procesos del usuario y el hardware disponible en la máquina, es decir, proporcionar acceso al hardware, al software que lo solicita, de manera segura; y procesamiento paralelo de múltiples tareas.

## Tipos de Kernel

Los diferentes sistemas operativos y dispositivos tienen diferentes tipos de kernel. Según sus características, se pueden dividir principalmente en 3 categorías:

**1. Kernel Monolítico:**  Es un gran núcleo para todas las tareas. Es totalmente responsable de la gestión de la memoria y los procesos, la comunicación entre procesos y proporciona funciones de soporte de controladores y hardware. Los sistemas operativos que utilizan núcleos monolíticos incluyen Linux, OS X y Windows.

**2. Microkernel:**  El microkernel es deliberadamente pequeño para que una falla no destruya todo el sistema operativo. Pero para realizar las mismas funciones que el núcleo grande, se divide en varios módulos. Como ejemplo de una aplicación, solo el componente Mach de OS X, ya que ningún sistema operativo tiene un microkernel hasta el momento.

**3. Kernel Híbrido:** Es la combinación de un núcleo monolítico y un micronúcleo se denomina núcleo híbrido. En este caso, los núcleos grandes se vuelven más compactos y escalables. Otras partes del núcleo se pueden cargar dinámicamente. Esto ya sucede hasta cierto punto en Linux y OS X.

## User vs Kernel Mode

El código del sistema básicamente tiene dos estados:

- **User Mode:** El sistema está en modo de usuario cuando el sistema operativo está ejecutando una aplicación de usuario, como ejecutar un editor de texto. La transición del modo usuario al modo kernel ocurre cuando una aplicación solicita ayuda del sistema operativo o cuando ocurre una interrupción o una llamada al sistema. En el modo de usuario, el bit de estado se establece en 1. Cambia de 1 a 0 cuando se pasa del modo de usuario al modo kernel.

- **Kernel Mode:** El sistema se inicia en modo kernel en el momento del arranque y, después de cargar el sistema operativo, ejecuta aplicaciones en modo usuario. Hay algunas instrucciones privilegiadas que solo se pueden ejecutar en modo kernel. Estas son instrucciones de interrupción, control de entrada y salida, etc. Si una instrucción privilegiada se ejecuta en modo usuario, es ilegal y se generará una trampa. Los bits de modo en el modo kernel se establecen en 0. Cambia de 0 a 1 cuando se pasa del modo kernel al modo usuario.

El código en modo kernel tiene acceso ilimitado al hardware, mientras que el código en modo usuario tiene acceso limitado al SCI(Special Circumstance Instructions). Cuando se produce un error en el modo de usuario, no ocurre gran cosa: el kernel en realidad se activa en este punto y repara todo el daño. Por otro lado, un kernel panic puede colapsar todo el sistema. Sin embargo, existen algunas medidas de seguridad para evitarlo.

