#!/bin/bash

set -e

echo "🔧 Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y

echo "📦 Instalando Bind9 e isc-dhcp-server..."
sudo apt install -y bind9 bind9utils bind9-doc isc-dhcp-server

echo "📁 Copiando arquivos de configuração..."

# DNS (Bind9)
sudo cp ../configs/named.conf.options /etc/bind/named.conf.options
sudo cp ../configs/named.conf.local /etc/bind/named.conf.local
sudo cp ../configs/db.exemplo.local /etc/bind/db.exemplo.local

# DHCP
sudo cp ../configs/dhcpd.conf /etc/dhcp/dhcpd.conf

echo "🔐 Corrigindo permissões..."
sudo chown root:bind /etc/bind/db.exemplo.local
sudo chmod 644 /etc/bind/db.exemplo.local

echo "🧪 Verificando configuração do Bind9..."
sudo named-checkconf
sudo named-checkzone exemplo.local /etc/bind/db.exemplo.local

echo "📡 Habilitando encaminhamento de DNS..."
sudo systemctl enable bind9
sudo systemctl restart bind9

echo "🔧 Configurando serviço DHCP..."
sudo systemctl enable isc-dhcp-server
sudo systemctl restart isc-dhcp-server

echo "✅ Serviços ativados:"
systemctl status bind9 | grep Active
systemctl status isc-dhcp-server | grep Active

echo "🚀 Configuração concluída com sucesso!"
