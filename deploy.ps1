# Script de despliegue para PowerShell
# Requiere Node.js/npm. Ejecuta:
# npm install
# npm run install:analytics
# npm run deploy

Write-Host "Ejecutando despliegue con npx vercel --prod"
npx vercel --prod
