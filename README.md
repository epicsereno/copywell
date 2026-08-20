# Copywell

**Batch SEO product descriptions for every SKU.**

Drop a CSV of products → map columns → pick a voice → Grok writes unique SEO titles, meta descriptions, body copy, and bullets. Edit, rewrite, export CSV.

## Stack

- TanStack Start (React 19 + Vite)
- Tailwind v4
- Better Auth (Google / X)
- Postgres (Neon) + PGLite fallback in preview
- xAI Grok (`grok-4.5`) for catalog copy

## Features

- CSV upload / paste / sample catalog
- Column mapping (SKU, name, brand, category, features, keywords)
- Voices: editorial, luxury, technical, friendly, concise
- Length: short / medium / long
- Sequential per-SKU generation (max 15 per catalog)
- Inline edit + rewrite notes
- CSV export
- Per-user catalog history

## Local

```bash
npm install
npm run dev   # 0.0.0.0:8080
```

Requires `XAI_API_KEY` for writing. Auth works in preview via the Grok broker; set `DATABASE_URL` for production Neon.

## Review

Built in Grok App Builder for e-commerce catalog teams who need non-generic PDP copy at scale.
