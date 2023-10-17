#!/bin/bash

# Нужно было выводить время через HH:MM:SS но я не понял в чём разница
	for run in {1..10}
	do
	date +"%T"
	#sleep 10
	done

# Можно было через cat /proc/cpuinfo но так красивее)
lscpu >> processor_info.txt

# Для поиска от начала строки использовал ^ из регулярок
cat /etc/os-release | grep ^NAME=

# Тут тоже использовал ^ но мозг закипел пока разобрался с "-n" и "p" в конце sed
sed -n 's/^NAME="//p' /etc/os-release | awk '{print$1}'

	for run in {50..100}
	do
	touch $run.txt
	done
