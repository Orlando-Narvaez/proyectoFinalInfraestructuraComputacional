#!/bin/bash

echo "
	Bienvenido al script
	Realizado por: Orlando Narvaez Baracaldo
	Asignatura:  Infraestructura computacional
"
until [ $option = 14 ]
do
	echo "
	------------------------------------------
	           MENU PRINCIPAL

	Ingrese la opción que desea conocer

	1.  Instalar un servidor web nginx.
	2.  Instalar un servidor http.
	3.  Consultar el release del sistema
            operativo.
	4.  Consular el servidor dns de un
	    servidor.
	5.  Consular el gateway del servidor.
	6.  Consultar el estado de selinux.
	7.  Listar las opciones de firewall
       	    configuradas.
	8.  Mostrar la información del
	    archivo /etc/passwd.
	9.  Imprimir un mensaje con el
            parámetro ingresado.
	10. Listar los discos duros del servidor.
	11. Saber el tiempo que lleva prendido
            el servidor.
	12. Conocer los procesos del servidor.
	13. Limpiar pantalla.
	14. Salir del script.
	-------------------------------------------
	"

	read option

	installNginx()
	{
		echo "

		Has escogido la opción #1.

		Instalando un servidor web nginx.

		"
		sleep 2
		yum install epel-release -y
		yum install nginx -y
		echo "

		Verificando la instalación.

		"
		sleep 2
		rpm -qa | grep nginx
		sleep 3
		echo "

                Volviendo al menu principal.

                "

	}

	installHttp()
	{
		echo "

                Has escogido la opción #2.

                Instalando un servidor http.

                "
		sleep 2
                yum install epel-release -y
                yum install httpd -y
                echo "

                Verificando la instalación.

                "
		sleep 2
                rpm -qa | grep httpd
		sleep 3
		echo "

		Volviendo al menu principal.

		"
	}

	consultRelease()
        {
                echo "

                Has escogido la opción #3.

                Consultando el release del sistema operativo.

                "
                sleep 2
                cat /etc/*release
		sleep 5
                echo "

                Volviendo al menu principal.

                "
        }

	consultServerDns()
	{
		echo "

                Has escogido la opción #4.

                Consultando el servidor dns de un servidor.

                "
                sleep 2
		cat /etc/resolv.conf
		sleep 3
		echo "

                Volviendo al menu principal.

                "
	}

	consultGateway()
	{
		echo "

                Has escogido la opción #5.

                Consultando el gateway del servidor.

                "
		sleep 2
		route -n
		sleep 3
		echo "

                Volviendo al menu principal.

                "
	}

	statusSelinux()
	{
		echo "

                Has escogido la opción #6.

                Consultando el estado de selinux.

                "
		sleep 2
		getenforce
		sleep 3
		echo "

                Volviendo al menu principal.

                "
	}

	listOptionsFirewall()
	{
		echo "

                Has escogido la opción #7.

		Instalando firewall.

                "
		sleep 2
		yum install firewalld
		echo "

		Listando las opciones de firewall configuradas.

		"
		sleep 2
		firewall-cmd --list-all
		sleep 5
		echo "

                Volviendo al menu principal.

                "
	}

	showFileInfo()
	{
		echo "

                Has escogido la opción #8.

                Mostrando la información del archivo /etc/passwd.

                "
		sleep 2
		cat /etc/passwd
		sleep 3
		echo "

                Volviendo al menu principal.

                "
	}

	printMessage()
	{
		echo "

                Has escogido la opción #9.

                A Continuación se imprimirá un mensaje con el
	       	parámetro ingresado

                "
		sleep 2
		echo "Ingrese el mensaje"
		read mensaje
		echo "

		EL mensaje ingresado es el siguiente:

		"
		sleep 2
		echo "$mensaje"
		sleep 3
		echo "

                Volviendo al menu principal.

                "
	}

	listHDD()
	{
		echo "

                Has escogido la opción #10.

                Listando los discos duros del servidor.

                "
		sleep 2
		lsblk
		sleep 3
		echo "

                Volviendo al menu principal.

                "
	}

	timeServer()
	{
		echo "

                Has escogido la opción #11.

                Tiempo que lleva prendido el servidor.

                "
		sleep 2
		uptime
		sleep 3
		echo "

                Volviendo al menu principal.

                "
	}

	serverProcesses()
	{
		echo "

                Has escogido la opción #12.

                Informando los procesos del servidor.

		Recuerde que para dejar de ver los procesos
		de servidor es con el siguiente combinacion
	       	de teclas: CTRL + Z

                "
		sleep 4
		top
	}

	cleanWindow()
	{
		echo "

                Has escogido la opción #13.

                Limpiando ventana.

                "
		sleep 3
		clear

	}

	messageExit()
	{
		echo "

                Has escogido la opción #14.

		Saliendo del script, hasta luego!!!.

		"
	}




	case $option in
		1)
			installNginx
			;;
		2)
			installHttp
			;;
		3)
			consultRelease
			;;
		4)
			consultServerDns
			;;
		5)
			consultGateway
			;;
		6)
			statusSelinux
			;;
		7)
			listOptionsFirewall
			;;
		8)
			showFileInfo
			;;
		9)
			printMessage
			;;
		10)
			listHDD
			;;
		11)
			timeServer
			;;
		12)
			serverProcesses
			;;
		13)
			cleanWindow
			;;
		14)
			messageExit
			;;
	esac
	sleep 6
done
