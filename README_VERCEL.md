# Vercel Deployment Guide

Este README describe la integración de Vercel para tu proyecto Remix y todos los componentes recientes añadidos para soporte de Analytics y despliegue en la nube.

## 1. Componentes integrados para Vercel

### Archivos clave

- `package.json`
  - Incluye `@vercel/analytics` en `dependencies`
  - Añade scripts:
    - `dev` — ejecuta Remix en modo desarrollo
    - `build` — construye la app Remix
    - `vercel-build` — build usado por Vercel
    - `start` — sirve la app creada
    - `deploy` — despliega con `npx vercel --prod`

- `vercel.json`
  - Configura el builder oficial `@vercel/remix`
  - Rutas:
    - `filesystem` para archivos estáticos
    - fallback de todas las rutas a `/` para Remix
  - Configuración Analytics personalizada:
    - `scriptSrc`: `/_vercel/analytics/script.js`
    - `eventEndpoint`: `/_vercel/analytics/event`
    - `viewEndpoint`: `/_vercel/analytics/view`

- `app/root.jsx`
  - Inserta el componente `<Analytics />` de `@vercel/analytics/remix`
  - Coloca el analytics script en el layout global de Remix

- `.vercelignore`
  - Excluye carpetas y archivos no necesarios para el deploy (
    `node_modules`, `.vercel`, `.env`, `build`, `dist`, `.DS_Store`)

- `deploy.ps1`
  - Script PowerShell de ayuda para ejecutar el despliegue con `npx vercel --prod`

- `DEPLOY_INSTRUCTIONS.md`
  - Documenta los pasos de preparación y despliegue
  - Explica el uso de `npm run deploy` y la alternativa con CLI global

## 2. Configuración Analytics

La integración actual usa Vercel Analytics con endpoints personalizados en `vercel.json`.

```json
"analytics": {
  "scriptSrc": "/_vercel/analytics/script.js",
  "eventEndpoint": "/_vercel/analytics/event",
  "viewEndpoint": "/_vercel/analytics/view"
}
```

Si necesitas usar un path distinto, reemplaza `/_vercel/analytics` por `/<unique-path>`:

```json
"analytics": {
  "scriptSrc": "/<unique-path>/script.js",
  "eventEndpoint": "/<unique-path>/event",
  "viewEndpoint": "/<unique-path>/view"
}
```

## 3. Flujo de despliegue en Vercel

### Requisitos

- Node.js >= 16
- npm instalado
- Si quieres la CLI global: `npm install -g vercel`

### Comandos

```bash
npm install
npm run build
npm run deploy
```

### Alternativa con CLI global

```bash
npm install -g vercel
vercel login
vercel --prod
```

### Si la app usa Remix

- `vercel.json` está configurado para `@vercel/remix`
- `package.json` incluye `vercel-build`
- Asegúrate de tener dependencias de Remix instaladas en el proyecto

## 4. Estructura actual del despliegue Vercel

- `vercel.json`: configuración de build y routes
- `package.json`: scripts y dependencia `@vercel/analytics`
- `app/root.jsx`: integración de Analytics en el layout
- `.vercelignore`: evita subir archivos innecesarios
- `DEPLOY_INSTRUCTIONS.md`: instrucciones de uso
- `deploy.ps1`: script de despliegue para PowerShell

## 5. Hacer el repositorio privado

### Opción 1: desde el sitio web de GitHub

1. Ve al repositorio en GitHub.
2. Haz clic en `Settings`.
3. En la sección `Danger Zone`, selecciona `Change repository visibility`.
4. Elige `Make private`.

### Opción 2: con GitHub CLI (si está instalado)

```bash
gh repo edit Funtimeverde/GitHub --visibility private
```

### Opción 3: crear un nuevo repo privado y subirlo

1. Crea el repo privado en GitHub.
2. Apunta tu remoto a ese repo:

```bash
git remote set-url origin https://github.com/TU_USUARIO/NOMBRE_REPO_PRIVADO.git
```

3. Sube el contenido:

```bash
git add .
git commit -m "Deploy repo privately"
git push -u origin main
```

## 6. Notas finales

- El README principal del proyecto ahora puede vincular a este README dedicado a Vercel.
- Si quieres, puedo también crear un `README_VERCEL.md` más corto para usuarios finales y dejar esta versión como guía técnica.
- El repositorio actual ya tiene un remoto `origin`; puedes conservarlo y cambiar su visibilidad a privado.
