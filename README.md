# AUTO-PY-TO-EXE - GUÍA RÁPIDA

## 🎯 ¿QUÉ ES?

Una herramienta que convierte scripts de Python (.py) en archivos ejecutables (.exe) sin necesidad de escribir comandos complicados.

---

## 📦 ARCHIVOS QUE NECESITAS

```
Tu Disco/
├── 1-PRINCIPAL.bat
├── 2-AGREGAR-AL-MENU.reg
└── 3-ELIMINAR-DEL-MENU.reg
```

**Solo necesitas estos 3 archivos. No importa dónde los guardes.**

---

## 🗂️ UBICACIONES RECOMENDADAS

### OPCIÓN 1: En una carpeta dedicada (RECOMENDADO)

```
C:\Script_clic_derecho\auto-py-to-exe\
├── 1-PRINCIPAL.bat
├── 2-AGREGAR-AL-MENU.reg
├── 3-ELIMINAR-DEL-MENU.reg
└── favicon.ico (opcional, para icono)
```

**Ventaja:** Organizado y fácil de encontrar

### OPCIÓN 2: En Desktop

```
C:\Users\tu_usuario\Desktop\
├── 1-PRINCIPAL.bat
├── 2-AGREGAR-AL-MENU.reg
└── 3-ELIMINAR-DEL-MENU.reg
```

**Ventaja:** Acceso rápido

### OPCIÓN 3: En Documentos

```
C:\Users\tu_usuario\Documents\AUTO-PY-TO-EXE\
├── 1-PRINCIPAL.bat
├── 2-AGREGAR-AL-MENU.reg
└── 3-ELIMINAR-DEL-MENU.reg
```

**Ventaja:** Organización profesional

---

## ⚙️ CÓMO HACER AJUSTES EN LOS ARCHIVOS

### 🔧 SI CAMBIAS LA UBICACIÓN DE LA CARPETA

**Editar 2-AGREGAR-AL-MENU.reg:**

1. Haz clic derecho en `2-AGREGAR-AL-MENU.reg`
2. Selecciona "Abrir con → Bloc de notas"
3. Busca esta línea:
```
"C:\\Script_clic_derecho\\auto-py-to-exe\\favicon.ico"
```

4. Reemplázala con tu ruta. Ejemplo:

**Si lo tienes en Desktop:**
```
"C:\\Users\\tu_usuario\\Desktop\\favicon.ico"
```

**Si lo tienes en Documentos:**
```
"C:\\Users\\tu_usuario\\Documents\\AUTO-PY-TO-EXE\\favicon.ico"
```

⚠️ **IMPORTANTE:** Usa doble barra `\\` en lugar de `\`

5. Guarda el archivo (Ctrl+S)

---

### 🎨 SI QUIERES CAMBIAR EL ICONO

**En el archivo .reg:**

```
"Icon"="C:\\ruta\\a\\tu\\icono\\miicono.ico"
```

Ejemplos:
- Tu icono en la misma carpeta: `"C:\\Users\\tu_usuario\\Desktop\\miicono.ico"`
- Un icono de Windows: `"C:\\Windows\\System32\\shell32.dll,1"`

---

### 🖥️ SI QUIERES CAMBIAR EL NOMBRE DEL MENÚ

**En el archivo .reg, busca:**
```
@="auto-py-to-exe"
```

Cámbialo a lo que quieras. Ejemplos:
```
@="Convertir Python a EXE"
@="Mi Convertidor"
@="PY → EXE"
```

---

## 📝 GUÍA DE EDICIÓN DE ARCHIVOS

### Para editar .bat:

1. Haz clic derecho → "Editar"
2. Cambia lo que necesites
3. Guarda (Ctrl+S)

**Cosas que puedes cambiar en 1-PRINCIPAL.bat:**

- Título: `title AUTO-PY-TO-EXE - GESTOR` → Tu título
- Colores: `color 1F` → Otros códigos (Ver tabla más abajo)
- Mensajes: Cualquier `echo` puede editarse

### Para editar .reg:

1. Haz clic derecho → "Abrir con → Bloc de notas"
2. Cambia lo que necesites
3. Guarda (Ctrl+S)

**NO mover las secciones** `[HKEY_CLASSES_ROOT...]` ni los símbolos

---

## 🎨 TABLA DE COLORES PARA .bat

```
0 = Negro       A = Verde claro
1 = Azul        B = Cian
2 = Verde       C = Rojo claro
3 = Cian        D = Magenta claro
4 = Rojo        E = Amarillo claro
5 = Magenta     F = Blanco
6 = Amarillo    
7 = Blanco
8 = Gris
9 = Azul claro
```

**Formato:** `color XY` (primer dígito = fondo, segundo = texto)

Ejemplos:
- `color 1F` → Fondo azul, texto blanco (actual)
- `color 0A` → Fondo negro, texto verde
- `color 0F` → Fondo negro, texto blanco

---

## 🚀 INICIO RÁPIDO

### PASO 1: INSTALAR

1. Haz doble clic en **1-PRINCIPAL.bat**
2. Escribe: **1** (y presiona Enter)
3. Espera a que termine ✓

**Esto instala:**
- Auto-py-to-exe
- PyInstaller
- Agrega opción al menú contextual

### PASO 2: USAR

**Opción A - Desde el programa:**
1. Abre **1-PRINCIPAL.bat**
2. Escribe: **2** (y presiona Enter)
3. Se abre automáticamente en tu navegador

**Opción B - Desde carpeta:**
1. Abre una carpeta donde tengas archivos .py
2. Clic derecho en el fondo
3. Selecciona **"auto-py-to-exe"**
4. Se abre automáticamente

---

## 📋 FUNCIONES DEL PROGRAMA

### [1] INSTALAR
- Descarga todo lo necesario
- Agrega opción al menú del explorador
- **Usa esto la primera vez**

### [2] EJECUTAR
- Actualiza automáticamente
- Abre la aplicación en navegador
- **Usa esto cada vez que quieras convertir archivos**

### [3] DESINSTALAR
- Quita todo del sistema
- Elimina opción del menú
- **Usa esto si quieres remover completamente**

### [4] SALIR
- Cierra el programa

---

## 💡 INSTRUCCIONES DE USO DENTRO DEL PROGRAMA

Una vez abierto en el navegador verás:

1. **"Select Python file"** → Selecciona tu archivo .py
2. **"Onefile"** → Marca si quieres solo 1 archivo .exe
3. **"Windowed"** → Marca si NO quieres ventana negra
4. **"CONVERT .PY TO .EXE"** → Botón convertir
5. Espera a que termine
6. Tu .exe estará en la carpeta del proyecto

---

## 🔧 PROPÓSITO DE CADA ARCHIVO

| Archivo | Propósito | Cuándo usar |
|---------|----------|-----------|
| **1-PRINCIPAL.bat** | Control total | Siempre |
| **2-AGREGAR-AL-MENU.reg** | Agregar menú manual | Opcional |
| **3-ELIMINAR-DEL-MENU.reg** | Quitar menú manual | Opcional |

---

## ⚠️ IMPORTANTE - NOTAS SOBRE DIRECTORIOS

### ✅ Tres formas de usar

**FORMA 1: Sin editar nada (más fácil)**
- Descarga los 3 archivos
- Úsalos donde los descargues
- Todo funciona automáticamente

**FORMA 2: Editar ruta del icono (recomendado)**
- Guarda los archivos en una carpeta dedicada
- Edita la ruta en `2-AGREGAR-AL-MENU.reg`
- El icono aparecerá en el menú contextual

**FORMA 3: Personalización completa**
- Edita todo: ruta, nombre del menú, colores, icono
- Haz los cambios en los archivos
- Guarda y úsalos

### ✅ Cómo funciona:

**Auto-py-to-exe usará automáticamente:**
- Tu carpeta de usuario por defecto
- El navegador predeterminado
- Las rutas de instalación de Python

**Tú solo seleccionas** el archivo .py que quieres convertir dentro del programa.

---

## 🎬 EJEMPLO PRÁCTICO

**Quiero convertir un script:**

```
C:\Users\Mi_Usuario\Desktop\mi_script.py
```

**Pasos:**
1. Abre **1-PRINCIPAL.bat**
2. Escribe **2** (ejecutar)
3. En el navegador: "Select Python file"
4. Navega a `C:\Users\Mi_Usuario\Desktop\`
5. Selecciona `mi_script.py`
6. Configura opciones
7. Haz clic en "CONVERT"
8. Tu archivo `mi_script.exe` estará en Desktop ✓

---

## ❓ PREGUNTAS FRECUENTES

**P: ¿Debo instalar Python?**
R: Sí, pero solo la primera vez. El .bat lo verifica automáticamente.

**P: ¿Funciona con cualquier archivo .py?**
R: Sí, solo que algunos puede que necesiten ajustes.

**P: ¿Dónde va el .exe generado?**
R: En la misma carpeta que tu archivo .py.

**P: ¿Puedo desinstalar y volver a instalar?**
R: Sí, sin problemas. Usa opción [3] y luego [1].

**P: ¿Necesito conexión a internet?**
R: Sí, solo para la primera instalación. Después no.

**P: ¿Cómo cambio la ubicación de los archivos?**
R: Edita la ruta en `2-AGREGAR-AL-MENU.reg` cambiando la línea del icono.

**P: ¿Puedo cambiar el nombre del menú?**
R: Sí, en `2-AGREGAR-AL-MENU.reg` busca `@="auto-py-to-exe"` y cámbialo.

**P: ¿Cómo cambio el color de la ventana?**
R: En `1-PRINCIPAL.bat` busca `color 1F` y reemplázalo con otros códigos.

---

## 📞 RESUMEN RÁPIDO

```
1-PRINCIPAL.bat [1] → INSTALAR
1-PRINCIPAL.bat [2] → EJECUTAR (convertir archivos)
1-PRINCIPAL.bat [3] → DESINSTALAR
```

**¡Eso es todo lo que necesitas saber!**

---

*Creado para funcionar de forma simple e intuitiva*
