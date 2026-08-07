# jnardiello.me — redesign 2026

Bold typographic redesign of jnardiello.me. Jekyll template, drop-in replacement for the existing repo.

## Struttura

- `_layouts/default.html` — head, fonts (Archivo + IBM Plex Mono), header/footer
- `_layouts/post.html` — pagina articolo
- `_includes/header.html` / `footer.html`
- `css/main.css` — tutto lo stile (design tokens in `:root`)
- `index.html` — home: hero, bio, talks recenti, progetti, archivio
- `writing/` — archivio post (era la home list)
- `talks/` — talks raggruppati per anno da `_data/talks.yml`
- `about/` — bio estesa, community, progetti, social
- `img/portrait.png` — ritratto usato in home e about

## Deploy

```sh
bundle install
bundle exec jekyll serve   # http://localhost:4000
```

Per pubblicare: sostituisci il contenuto della repo jnardiello.github.io con questa cartella e pusha su master.

Nota: `permalink: /:title.html` è invariato — gli URL dei vecchi post non cambiano.
