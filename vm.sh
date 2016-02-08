#!/bin/bash

case "$1" in

#Список Vmid
list)
  echo "Список Vmid"
  ssh esxi 'vim-cmd vmsvc/getallvms'
  exit 0
  ;;

#Список снапшотов конретного Vmid
listsnap)
  echo "Список снапшотов для Vmid $2"
  ssh esxi ''
  exit 0
  ;;

#создание снапшота
createsnap)
  echo "создание снапшота для Vmid $2"
  ssh esxi ''
  exit 0
  ;;

#Удалить снапшот
deletesnap)
  echo "Удаляем снапшот id $3 для Vmid $2"
  ssh esxi ''
  exit 0
  ;;

#Оставновить VM
stopvm)
  echo "Отсановить VM Vmid $2"
  ssh esxi ''
  exit 0
  ;;

#Запустить VM
startvm)
  echo "Запустить VM Vmid $2"
  ssh esxi ''
  exit 0
  ;;

#Перезагрузить VM
restartvm)
  echo "Перезагрузить VM $2"
  ssh esxi ''
  exit 0
  ;;
  
#Выводим справку
*)
  echo "TST"
  exit 0
  ;;
  
esac
exit 0