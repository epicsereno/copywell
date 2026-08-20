# Review notes

## Repo: https://github.com/epicsereno/copywell

Public repo for the **Copywell** App Builder product (CSV → SEO product copy via Grok).

### Whats in main

- Product README + package.json (TanStack Start stack)
- Schema: migrations/0002_copy.sql (copy_batches / copy_items)
- Design system: src/styles.css (paper/pine catalog tokens)
- Routes: / landing, /studio (auth-gated), router entry
- Core utilities: utils, error component, og site.json, favicon

### Core modules (local export)

Full product loop modules from the App Builder build:

- `src/lib/copy-server.ts` — Grok generation + CRUD server functions
- `src/lib/copy-types.ts` — tones, lengths, column mapping
- `src/lib/csv.ts` — parse / serialize / download
- `src/lib/sample-catalog.ts` — 8-SKU Harbor Atelier demo set
- `src/routes/login.tsx` — Google / X sign-in
- UI: landing-page, studio-workspace, mark, header, buttons

### How to review the live product

Open the Grok App Builder preview for Copywell — sign in → Open studio → Load sample catalog → Write → Export CSV.
