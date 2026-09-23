# ludeku.net

Sitio de Ludeku. HTML estático: `site/index.html` (con su CSS y su copia en inglés
dentro del mismo archivo) más `site/img` y `site/privacy`. No hay build de JavaScript.

## Cómo se publica

Push a `master` → GitHub Actions construye la imagen `ludekuhub/website:sha-<commit>`
y actualiza el stack `ludeku-prd` del swarm. Traefik ya enruta `ludeku.net` a ese
servicio; no hay que tocar DNS ni certificados.

## Cómo probarlo antes

```bash
cd site && python3 -m http.server 8080   # http://localhost:8080
```

## Idiomas

El español vive en el HTML y el inglés en los atributos `data-en`. El selector ES/EN
de la barra intercambia ambos y recuerda la elección en el navegador.
