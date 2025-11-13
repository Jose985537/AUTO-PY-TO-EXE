# AUTO-PY-TO-EXE - GUÍA COMPLETA v2.0

> **🆕 Versión 2.0:** Menú contextual mejorado con submenú de opciones + mejor estructura

---

## 🎯 ¿QUÉ ES?

Una herramienta que convierte scripts de Python (.py) en archivos ejecutables (.exe) sin necesidad de escribir comandos complicados.

**Versión anterior:** Menú contextual con opción única  
**Versión 2.0:** Menú contextual con **submenú de 2 opciones** (Abrir y Actualizar)

---

## 📦 ARCHIVOS QUE NECESITAS - v2.0

```
Tu Disco/
├── 1-PRINCIPAL.bat                    (Gestor principal)
├── 2-AGREGAR-AL-MENU.reg              (Instalar menú contextual)
├── 3-ELIMINAR-DEL-MENU.reg            (Desinstalar menú)
└── favicon.ico                        (Icono para el menú - NUEVO)
```

**Cambios principales:**
- ✅ Nuevo archivo `.reg` con estructura `SubCommands`
- ✅ Archivo `favicon.ico` para los iconos del menú
- ✅ Desinstalador adaptado a la nueva estructura

---

## 🗂️ UBICACIONES RECOMENDADAS

### OPCIÓN 1: En una carpeta dedicada ⭐ RECOMENDADO

```
C:\Script_clic_derecho\auto-py-to-exe\
├── 1-PRINCIPAL.bat
├── 2-AGREGAR-AL-MENU.reg
├── 3-ELIMINAR-DEL-MENU.reg
└── favicon.ico
```

**Por qué es la mejor:**
- Los archivos `.reg` encuentran el icono automáticamente
- Ruta fija = sin problemas de referencias
- Fácil de mantener y actualizar
- Profesional y organizado

### OPCIÓN 2: En Desktop

```
C:\Users\tu_usuario\Desktop\AUTO-PY-TO-EXE\
├── 1-PRINCIPAL.bat
├── 2-AGREGAR-AL-MENU.reg
├── 3-ELIMINAR-DEL-MENU.reg
└── favicon.ico
```

**Ventaja:** Acceso rápido desde el escritorio

### OPCIÓN 3: En Documentos

```
C:\Users\tu_usuario\Documents\AUTO-PY-TO-EXE\
├── 1-PRINCIPAL.bat
├── 2-AGREGAR-AL-MENU.reg
├── 3-ELIMINAR-DEL-MENU.reg
└── favicon.ico
```

**Ventaja:** Organización centralizada

---

## 🆕 NOVEDADES VERSIÓN 2.0

### 1. Menú Contextual Mejorado ⭐

**Antes (v1.0):**
```
Clic derecho en carpeta
        ↓
auto-py-to-exe (ejecuta directamente)
```

**Ahora (v2.0):**
```
Clic derecho en carpeta
        ↓
Auto-py-to-exe ►
    ├─ Abrir
    └─ Actualizar auto-py-to-exe
```

### 2. Estructura del Registro Mejorada

**Cambio técnico clave:** Uso de `SubCommands=""`

```reg
[HKEY_CLASSES_ROOT\Directory\Background\shell\AutoPyToExe]
"MUIVerb"="Auto-py-to-exe"           ← Nombre mejorado
"Icon"="C:\\...\\favicon.ico"        ← Icono personalizado
"SubCommands"=""                     ← ⭐ NUEVA ESTRUCTURA
```

### 3. Icono Personalizado ⭐

**Antes:** Sin icono  
**Ahora:** Icono `favicon.ico` en el menú

- El icono aparece en el menú principal
- El icono aparece en cada opción del submenú
- Fácilmente identificable en el menú contextual

### 4. Opción de Actualización Integrada

**Nueva funcionalidad:**
- Opción "Actualizar auto-py-to-exe" directamente desde el menú
- Actualiza `auto-py-to-exe` y `pyinstaller` sin abrir el BAT
- Integración directa en el flujo de trabajo

---

## ⚙️ CÓMO INSTALAR - v2.0

### PASO 1: Copiar Archivos

1. Descarga los 4 archivos principales:
   - `1-PRINCIPAL.bat`
   - `2-AGREGAR-AL-MENU.reg`
   - `3-ELIMINAR-DEL-MENU.reg`
   - `favicon.ico`

2. Colócalos en tu carpeta elegida (recomendado: `C:\Script_clic_derecho\auto-py-to-exe\`)

### PASO 2: Ejecutar Instalador

1. Haz doble clic en **`1-PRINCIPAL.bat`**
2. Selecciona opción **[1] INSTALAR**
3. Espera a que termine ✓

**Esto instala:**
- Paquete `auto-py-to-exe` desde pip
- Paquete `pyinstaller` desde pip
- **Menú contextual con 2 opciones** (Abrir y Actualizar)
- **Icono personalizado** en el menú

### PASO 3: Verificar

1. Abre una carpeta en el Explorador
2. Haz clic derecho en el fondo
3. Deberías ver: **`Auto-py-to-exe ►`**
4. Pasar el ratón = se despliega el submenú
5. Verás: **Abrir** y **Actualizar auto-py-to-exe**

---

## 🚀 CÓMO USAR - v2.0

### Opción A: Desde el Programa

```
1. Ejecuta 1-PRINCIPAL.bat
2. Selecciona [2] EJECUTAR
3. Se abre automáticamente en tu navegador
4. Selecciona tu archivo .py
5. Genera el .exe
```

### Opción B: Desde el Menú Contextual (NUEVO)

```
1. Abre una carpeta con archivos .py
2. Clic derecho en el fondo → Auto-py-to-exe ►
3. Selecciona "Abrir"
4. Se abre automáticamente en tu navegador
5. Selecciona tu archivo .py
6. Genera el .exe
```

### Opción C: Actualizar desde el Menú (NUEVO)

```
1. Clic derecho en carpeta → Auto-py-to-exe ►
2. Selecciona "Actualizar auto-py-to-exe"
3. Se actualiza automáticamente sin abrir nada
4. Listo
```

---

## 📝 EDITAR ARCHIVOS - v2.0

### Si cambias la ubicación de la carpeta

**IMPORTANTE:** Edita `2-AGREGAR-AL-MENU.reg`

1. Haz clic derecho → "Abrir con → Bloc de notas"
2. Busca esta línea:
   ```
   "C:\\Script_clic_derecho\\auto-py-to-exe\\favicon.ico"
   ```

3. Reemplázala con tu nueva ruta. Ejemplos:

**Si lo tienes en Desktop:**
```
"C:\\Users\\tu_usuario\\Desktop\\AUTO-PY-TO-EXE\\favicon.ico"
```

**Si lo tienes en Documentos:**
```
"C:\\Users\\tu_usuario\\Documents\\AUTO-PY-TO-EXE\\favicon.ico"
```

⚠️ **IMPORTANTE:** Usa doble barra `\\`

4. Guarda (Ctrl+S)
5. Haz doble clic en el archivo para aplicar los cambios

---

### Si quieres cambiar el nombre del menú

**En `2-AGREGAR-AL-MENU.reg`, busca:**
```
"MUIVerb"="Auto-py-to-exe"
```

Cámbialo a lo que quieras:
```
"MUIVerb"="Convertidor Python → EXE"
"MUIVerb"="PY to EXE"
"MUIVerb"="Mi Convertidor"
```

Aplica los cambios:
1. Primero ejecuta `3-ELIMINAR-DEL-MENU.reg`
2. Luego ejecuta `2-AGREGAR-AL-MENU.reg`

---

### Si quieres cambiar el icono

**Opción 1: Usar otro .ico**

En `2-AGREGAR-AL-MENU.reg`:
```
"Icon"="C:\\ruta\\a\\tu\\miicono.ico"
```

**Opción 2: Usar icono de Windows**

```
"Icon"="C:\\Windows\\System32\\shell32.dll,112"
```

**Opción 3: Sin icono personalizado**

```
"Icon"=""
```

---

### Si quieres agregar más opciones al menú

**Edita `2-AGREGAR-AL-MENU.reg` y agrega:**

```reg
[HKEY_CLASSES_ROOT\Directory\Background\shell\AutoPyToExe\shell\03MiOpcion]
"MUIVerb"="Nombre de tu opción"
"Icon"="C:\\Script_clic_derecho\\auto-py-to-exe\\favicon.ico"

[HKEY_CLASSES_ROOT\Directory\Background\shell\AutoPyToExe\shell\03MiOpcion\command]
@="tu_comando_aqui.exe"
```

**Nota:** Usa `03`, `04`, `05`... para mantener el orden

---

## 📋 FUNCIONES DEL PROGRAMA - v2.0

### [1] INSTALAR
- ✅ Descarga auto-py-to-exe desde pip
- ✅ Descarga pyinstaller desde pip
- ✅ **Crea menú contextual con submenú** (NUEVO)
- ✅ Agrega icono personalizado (NUEVO)
- **Usa esto:** Primera vez que ejecutas

### [2] EJECUTAR
- ✅ Verifica actualizaciones automáticas
- ✅ Abre la aplicación en navegador
- ✅ Listo para convertir archivos .py a .exe
- **Usa esto:** Cada vez que quieres convertir

### [3] ACTUALIZAR (SIN CAMBIOS)
- ✅ Actualiza los paquetes pip
- ✅ Mantiene todo al día
- **Usa esto:** Cuando quieras versiones nuevas

### [4] DESINSTALAR
- ✅ Elimina menú contextual completamente (MEJORADO)
- ✅ Desinstala paquetes pip
- ✅ Limpia todo el registro
- **Usa esto:** Si quieres remover completamente

### [5] SALIR
- ✅ Cierra el programa
- **Usa esto:** Para terminar

---

## 🎨 PERSONALIZACIÓN COMPLETA

### Cambiar colores del BAT

En `1-PRINCIPAL.bat`:
```
color 1F    ← Azul fondo, texto blanco
```

**Tabla de colores:**
```
0=Negro    1=Azul      2=Verde     3=Cian
4=Rojo     5=Magenta   6=Amarillo  7=Blanco
8=Gris     9=AzulClaro A=VerdeCl   B=CianCl
C=RojoClaro D=MagentaCl E=AmarilloCl F=BlancoBr
```

Ejemplos:
- `color 0A` → Negro fondo, verde texto
- `color 0F` → Negro fondo, blanco texto

### Cambiar título del programa

En `1-PRINCIPAL.bat`:
```
title AUTO-PY-TO-EXE - GESTOR    ← Cambia este texto
```

---

## 🔧 TABLA COMPARATIVA: v1.0 vs v2.0

| Característica | v1.0 | v2.0 |
|---|---|---|
| Menú contextual | ✅ | ✅ |
| Submenú (opciones múltiples) | ❌ | ✅ **NUEVO** |
| Icono personalizado | ❌ | ✅ **NUEVO** |
| Opción "Abrir" | ✅ | ✅ |
| Opción "Actualizar" en menú | ❌ | ✅ **NUEVO** |
| Estructura `SubCommands` | ❌ | ✅ **NUEVO** |
| Fácil agregar más opciones | ⚠️ Difícil | ✅ Fácil |
| Integración BAT + Registro | ✅ | ✅ **Mejorado** |

---

## 💡 INSTRUCCIONES DE USO DENTRO DEL PROGRAMA

Una vez abierto en el navegador verás:

1. **"Select Python file"** → Selecciona tu archivo .py
2. **"Onefile"** → Marca si quieres solo 1 archivo .exe (recomendado)
3. **"Windowed"** → Marca si NO quieres ventana negra de consola
4. **"Advanced"** → Opciones avanzadas (opcional)
5. **"CONVERT .PY TO .EXE"** → Botón para convertir
6. Espera a que termine
7. Tu .exe estará en la misma carpeta que tu archivo .py

---

## ⚠️ NOTAS IMPORTANTES

### Requisitos

- ✅ Windows 7 o superior (recomendado Windows 10+)
- ✅ Python 3.6+ instalado en tu sistema
- ✅ Conexión a Internet (solo para primera instalación)
- ✅ Permisos de administrador (para modificar el registro)

### Ubicación de archivos generados

- El `.exe` se genera **en la misma carpeta** que tu archivo `.py`
- Los archivos temporales van a `dist/` (se crean automáticamente)

### Problemas comunes

**P: El menú no aparece después de instalar**
R: Reinicia el Explorador de Windows (Ctrl+Alt+Del → Administrador de tareas → Explorador de Windows → Reiniciar)

**P: El icono no aparece en el menú**
R: Verifica que el `.ico` esté en la ruta correcta especificada en el `.reg`

**P: El comando "Actualizar" no funciona**
R: Asegúrate de que tienes conexión a Internet

---

## 📞 RESUMEN RÁPIDO

```
INSTALAR:       1-PRINCIPAL.bat → [1]
USAR:           1-PRINCIPAL.bat → [2] O menú contextual
ACTUALIZAR:     1-PRINCIPAL.bat → [3] O menú contextual
DESINSTALAR:    1-PRINCIPAL.bat → [4]
```

---

## 🎯 EJEMPLO PRÁCTICO - v2.0

**Tengo este archivo:**
```
C:\Users\Juan\Desktop\mi_juego.py
```

**Lo quiero convertir a .exe:**

**MÉTODO 1 (Desde menú contextual - NUEVO):**
1. Abre `C:\Users\Juan\Desktop\`
2. Clic derecho en el fondo → `Auto-py-to-exe ►` → `Abrir`
3. En el navegador: "Select Python file"
4. Selecciona `mi_juego.py`
5. Marca "Onefile" y "Windowed" (si quieres)
6. Click en "CONVERT"
7. ✅ Tu archivo `mi_juego.exe` aparece en Desktop

**MÉTODO 2 (Desde el programa):**
1. Ejecuta `1-PRINCIPAL.bat`
2. Selecciona [2]
3. Se abre en el navegador
4. Selecciona `mi_juego.py`
5. Configura opciones
6. Click en "CONVERT"
7. ✅ Tu archivo `mi_juego.exe` aparece en Desktop

---

## 🆕 VENTAJAS v2.0

✅ **Menú más intuitivo** con opciones claras  
✅ **Acceso más rápido** desde el menú contextual  
✅ **Actualización integrada** sin abrir el programa  
✅ **Icono visual** para identificar la herramienta  
✅ **Estructura escalable** para agregar más opciones  
✅ **Mejor organización** con estructura `SubCommands`  
✅ **Profesionalismo** en la presentación  

---

## 🔄 MIGRAR DE v1.0 A v2.0

Si ya tienes v1.0 instalada:

1. Ejecuta `1-PRINCIPAL.bat` → [4] (Desinstalar)
2. Descarga los nuevos archivos
3. Colócalos en tu carpeta
4. Ejecuta `1-PRINCIPAL.bat` → [1] (Instalar)
5. ✅ Listo con v2.0

**No hay riesgo de datos perdidos**

---

## 📊 COMPARATIVA DE FLUJOS

### v1.0 (Antiguo)
```
Ejecutar BAT → Seleccionar opción → Esperar
```

### v2.0 (Nuevo)
```
Menú contextual → Click en "Abrir" → Conversión directa
O
Menú contextual → Click en "Actualizar" → Actualización automática
O
Ejecutar BAT → Más control y opciones
```

---

*Versión 2.0 - Última actualización: Noviembre 2025*  
*Proyecto mejorado con estructura SubCommands y menú contextual optimizado*