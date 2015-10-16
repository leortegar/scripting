#!/bin/bash
funcion2(){
  if [ -f /bin/ls -a -f /bin/ln ] ; then
    return 0 #ejecución exitosa  $?
  else
    return 1 #ejecución con error, no existe "Falsa"
  fi
}

#programa principal
if funcion2 ; then
  echo "Los dos archivos existen"
  exit 0
else
  echo "Falta al menos un archivo"
  exit 1
fi
