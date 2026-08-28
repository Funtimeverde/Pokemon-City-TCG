
Preparación y despliegue en Vercel

Requisitos:
- Node.js y npm instalados: https://nodejs.org/
- (Opcional) Yarn si prefieres usar `yarn`.

Pasos locales recomendados:

1. Clona o navega hasta el proyecto y asegura Node >=16.

```bash
npm ci
```

2. Instala dependencias (incluye `@vercel/analytics` que ya está listada en `package.json`):

```bash
npm install
```

3. (Opcional) Verifica que `app/root.jsx` existe y contiene `Analytics`:

```bash
# abrir archivo
code app/root.jsx
```

4. Desplegar con `npx` (no requiere instalación global):

```bash
npm run deploy
```

5. Alternativa — instalar CLI globalmente y desplegar:

```bash
npm install -g vercel
vercel login
vercel --prod
```

Consejos y notas:
- Si usas Remix, asegúrate de tener configurado el `adapter` apropiado o utiliza la integración oficial de Vercel.
- Si necesitas variables de entorno, configúralas con `vercel env add` o desde el dashboard de Vercel antes del despliegue.
- `package.json` contiene ahora `@vercel/analytics` en `dependencies` y scripts de `build`/`start`.
- `vercel.json` contiene una configuración de Analytics con endpoints personalizados para script, evento y vista.
- He añadido `.vercelignore` para excluir archivos grandes/privados del despliegue.
- No puedo ejecutar comandos de red desde este entorno; ejecuta los pasos anteriores localmente y dime si quieres que ajuste archivos o verifique resultados.
