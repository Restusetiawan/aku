#!/bin/bash

while true
do
	#menampilkan informasi penggunaan disk dari semua berkas journalctl
	journalctl -a --disk-usage
	echo""
	sleep 3s

	#menghapus log penggunaan disk dari semua berkas journalctl hingga berkisar 10 MB
	journalctl --vacuum-size=10MB
	echo""
	sleep 4s

	#menampilkan informasi penggunaan disk dari semua berkas journalctl setelah menhapus log
	journalctl -a --disk-usage
	echo""
	sleep 3s
done
