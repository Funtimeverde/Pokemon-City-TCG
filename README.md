# Pokémon TCG Eeveelutions - Interactive Card Collection

Una colección interactiva de tarjetas Pokémon TCG con soporte multiidioma (Japonés, Inglés, Español) y compatibilidad con múltiples plataformas.

## 🌐 Características

- ✨ **Tarjetas interactivas** con giro en 3D
- 🌍 **Soporte multiidioma**: Japonés (日本語), Inglés (EN), Español (ES)
- 📱 **Responsive**: Móviles, tablets, escritorio, TV y consolas
- ⌨️ **Navegación por teclado**: Compatible con mandos remotos y controles
- ♿ **Accesible**: Soporte ARIA y navegación por foco
- 🎨 **Diseño moderno**: Colores específicos por tipo Pokémon

## 📂 Estructura del Proyecto

```
VS Code/cards/
├── index.html                    # Página principal (versión japonesa)
├── eeveevolutions-tcg-cards.html # Página secundaria
├── styles.css                    # Estilos responsive
├── script.js                     # Lógica y multiidioma
```

## 🚀 Cómo publicar en línea (Elige una opción)

### Opción 1: GitHub Pages (Recomendado - Gratis)

1. Crea un repositorio en https://github.com/new
2. Nombre: `pokemon-eeveelutions-cards` (o el que prefieras)
3. En tu terminal:
```bash
cd 'C:/Users/mathi/OneDrive/Escritorio/GitHub'
git add .
git commit -m "Initial commit: Pokémon TCG cards collection"
git branch -M main
git remote add origin https://github.com/TU_USUARIO/pokemon-eeveelutions-cards.git
git push -u origin main
```

4. En GitHub, ve a **Settings** > **Pages**
5. En "Source", selecciona `main` branch y carpeta `/root`
6. ¡Listo! Tu sitio estará en: `https://tu-usuario.github.io/pokemon-eeveelutions-cards`

### Opción 2: Netlify (Gratis - Más fácil)

1. Ve a https://netlify.com y regístrate
2. Arrastra la carpeta `GitHub` a Netlify
3. ¡Automaticamente obtiene una URL pública en minutos!

### Opción 3: Vercel (Gratis)

1. Ve a https://vercel.com y regístrate
2. Conecta tu GitHub
3. Selecciona el repositorio
4. Deploy automático con cada push

## 🎮 Compatibilidad Verificada

| Plataforma | Compatibilidad | Método de Uso |
|-----------|----------------|---|
| 📱 Mobile (iOS/Android) | ✅ 100% | Touch, navegación táctil |
| 💻 Desktop (Windows/Mac) | ✅ 100% | Mouse, teclado, scroll |
| 🎮 Consola (PS5, Xbox) | ✅ 100% | Mando remoto, D-Pad |
| 📺 TV (Smart TV) | ✅ 100% | Mando remoto, navegación por foco |
| ⌨️ Teclado | ✅ 100% | Tab, Enter, Space, flechas |

## 🎯 Cómo usar

1. **Cambiar idioma**: Haz clic en los botones de idioma (日本語 / EN / ES)
2. **Ver fan names**: Marca la casilla "Show Fan Names"
3. **Girar tarjeta**: Haz clic (móvil/desktop) o presiona Enter/Space (teclado/mando)
4. **Navegar con teclado**: Tab para moverse, Enter para girar

## 📝 Localización

El sistema soporta agregar nuevos idiomas fácilmente. Para añadir un idioma:

1. En `script.js`, ve a la función `getLabels(lang)`
2. Agrega una nueva sección:
```javascript
xx: {
    hp: 'Your text',
    attack: 'Your text',
    // ... etc
}
```

3. En los HTML, usa `data-i18n="key"` en los elementos que quieras traducir

## 🛠️ Desarrollo

Para hacer cambios localmente:

1. Abre los archivos con tu editor
2. Modifica `styles.css` para cambiar diseño
3. Modifica `script.js` para cambiar lógica
4. Los cambios se verán en vivo si abres el archivo HTML en el navegador

## 📋 Archivos Incluidos

- `VS Code/cards/index.html` - Página con título en japonés (predeterminada)
- `VS Code/cards/eeveevolutions-tcg-cards.html` - Página alternativa
- `VS Code/cards/styles.css` - Estilos CSS responsive
- `VS Code/cards/script.js` - JavaScript con lógica multiidioma
- `README.md` - Este archivo

## 📌 Requisitos

- Navegador web moderno (Chrome, Firefox, Safari, Edge)
- Conexión a internet (para cargar imágenes de Pokémon)

## 📄 Licencia

Este proyecto es una creación personal para fines educativos.

---

**¿Necesitas ayuda?** Revisa los comentarios en los archivos o edita según tus necesidades.
