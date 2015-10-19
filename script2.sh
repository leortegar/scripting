#!/bin/bash
#script para cambiar los atributos de un archivo y asignarle permisos de ejecución

echo -e "Introduce un nombre de archivo: \c "
read fichero
if [ -f $fichero ]; then
permisos=`ls -l $fichero`
if [ -x $fichero ]; then
  echo "Ya cuenta con permisos de ejecución"
  echo "$permisos"
  else
   echo "Archivo existente"
   echo "$permisos"
   echo "Se asignan permisos de ejecución para User and Group al archivo $fichero"
   chmod u+x $fichero
   chmod g+x $fichero
   permisos=`ls -l $fichero`
   echo "$permisos"
fi
else
echo "Archivo no existente, asegurese de ingresar correctamente el nombre y ruta del archivo"
fi
