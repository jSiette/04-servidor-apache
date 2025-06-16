#!/bin/bash

# Script para instalar Apache y levantar un sitio web básico

echo "📦 Instalando Apache..."
sudo apt update
sudo apt install -y apache2

echo "📁 Copiando archivo index.html de prueba..."
sudo cp index.html /var/www/html/index.html

echo "✅ Habilitando y arrancando el servicio Apache..."
sudo systemctl enable apache2
sudo systemctl restart apache2

echo "🌐 Sitio de prueba activo en: http://localhost"
