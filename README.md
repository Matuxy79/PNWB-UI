# Hydra GUI (Built on Open WebUI) 🐙🐉

> A Matuxy-flavoured control room for the “Hydra” multi-agent workflow — inspired by Open WebUI’s battle-tested UX.

**TL;DR**
- **Frontend:** Svelte + Vite (dev server on `5173`)
- **Backend:** Python (FastAPI/Uvicorn) (API on `8080`)
- **Data:** SQLite (`webui.db`) by default (can be swapped)
- **Deploy:** Docker-first; Railway-friendly with a persistent volume mounted to `/app/backend/data`

---

## What This Repo Is
Hydra GUI is a **personal/forked UI layer + workflow narrative** around Open WebUI’s architecture:
- the **same “self-hosted AI platform” UI patterns**
- a more “Hydra” themed onboarding + branding + docs
- a workflow that’s built around multi-agent orchestration (Gemini/Claude/GPT/Perplexity)

**Not a replacement for Open WebUI.** Think “skin + story + operational runbook”.

---

## Architecture (the two fires + tunnel)
