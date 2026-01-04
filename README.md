# Hydra GUI (Built on Open WebUI) 🐙🐉

> A Matuxy-flavoured control room for the “Hydra” multi-agent workflow — inspired by Open WebUI’s battle-tested UX.

**TL;DR**
- **Frontend:** Svelte + Vite + QT5 (dev server on `5173`)
- **Backend:** Python (FastAPI/Uvicorn) (API on `8080`)
- **Data:** SQLite (`webui.db`) by default (can be swapped)
- **Deploy:** Docker-first; Railway-friendly with a persistent volume mounted to `/app/backend/data`

---

## What This Repo Is
Hydra GUI is a **personal/forked UI layer + backend workflow for a personal knowledge system(dynamic database that intelligently grows with you as you talk to the custom made John llms)** around Open WebUI’s frontend stub now heavily refactored:
- the **same “self-hosted AI platform” UI patterns**
- a more “Hydra” themed onboarding + branding + docs
- a workflow that’s built around multi-agent orchestration (Gemini/Claude/GPT/Perplexity)

## Architecture (the two fires + tunnel)
# 🐉 Project HYDRA: A Distributed Intelligence Control System

> **"We do not build software to recite data. We build it to reason."**

## WEBSITE LINK:



## 📜 The Prelude: Why This Exists
In the era of Large Language Models, the challenge is no longer "accessing" intelligence—it is **orchestrating** it and applying the devops, frontend fundementals and frameworks, backend auths hooks transitions and flows, Backend persistance and model of whatever domain you have

**Project HYDRA** is not merely a chatbot. It is a **Distributed Control Interface** designed to tame the stochastic nature of AI. Born from a fork of *Open WebUI*, this system was re-engineered to serve as a proof-of-concept for **high-dimensional data management**, **asynchronous system control**, and **secure enterprise deployment**.

It serves as the living portfolio of **John **, demonstrating that the skills required to run a system (reliability, concurrency, analysis) are the same skills required to govern a digital mind.

---

## 🏗️ The Architecture: Anatomy of the Beast
To build a system that thinks, one must first build a system that *flows*. Hydra is architected as a microservice organism.

### 1. The Nervous System (Backend Orchestration)
* [cite_start]**Core:** Python (FastAPI) [cite: 128]
* **Role:** Manages the asynchronous handshake between human intent and the different chatbots either from my own Runpod or AWS (my kuberneties and containers for talking to my inferfaces and applications)
* **The Code Story:**
Implemented **Pydantic models** to enforce strict data validation (Object-Oriented Design)
Utilized **Async/Await** patterns to handle high-latency inference requests without blocking the UI thread—mirroring the non-blocking I/O required in **Accelerator Control Systems**[cite: 91].
Engineered **Role-Based Access Control (RBAC)** to secure the "cockpit" from unauthorized entry[cite: 110].

### 2. The Visual Cortex (Frontend Interface)
* **Core:** SvelteKit + Vite + Pyt QT5
* **Role:** A reactive, state-managed dashboard that renders complex token streams in real-time.
* **The Code Story:**
    * Managed state flow for chat history, ensuring persistence across sessions.
    * Designed a responsive **"Dark Mode" Geometry**, prioritizing data readability for long-duration monitoring tasks.
    *designed to be a feedback loop for LORA and LERA since I train my own diffusion/language models and host them

### 3. The Containment Field (DevOps & Infrastructure)
* **Core:** Docker & Railway
* **Role:** Ensures the system survives in hostile environments (the public web).
* **The Code Story:**
    * Solid **App and safety principles** by injecting API Keys and Configuration via Environment Variables (`.env`).
    * Deployed via **Docker Containers** to guarantee that "it works on my machine" means "it works on *the* machine.* Modularity and robustness to have buffers between first pass fails

---

## 🧠 The Architect's Skill Tree (Academic Foundations)
This system was not built in a vacuum. It was forged using the foundational "Tech Tree" acquired at the **University of Saskatchewan**.

### 🔹 Domain: Systems Engineering & Control
* **The Skill:** Orchestrating complex, interacting components.
* **The Evidence:**
    * [cite_start]**CMPT 215 (Computer Architecture):** Applied knowledge of memory hierarchy and I/O to optimize token context windows[cite: 104].
    * [cite_start]**CMPT 353 (Full Stack Web):** The blueprint for Hydra's client-server architecture and persistent database storage[cite: 99].
    * [cite_start]**CMPT 370 (Software Engineering):** The discipline behind the Git workflow, version control, and modular code structure used in this repo[cite: 96].

### 🔹 Domain: Algorithmic Logic & AI
* **The Skill:** Solving problems that don't have static answers.
* **The Evidence:**
    * [cite_start]**CMPT 280 (Data Structures & Algorithms):** Used Tree/Graph logic to structure conversation branches and manage efficient retrieval[cite: 101].
    * [cite_start]**MATH 164 (Linear Algebra):** The mathematical backbone of the **Vector Embeddings** (RAG) used for document analysis within Hydra[cite: 150].
    * [cite_start]**STAT 241/245 (Probability & Inference):** Understanding the probabilistic nature of LLM tokens (Top-K/Temperature settings) to tune model reliability[cite: 107].

### 🔹 Domain: Ethics & Professionalism
* **The Skill:** Building tools that are safe and responsible.
* **The Evidence:**
    * [cite_start]**PHIL 232 (Ethics in CS):** Hydra is designed with privacy-first principles (local data storage options) and secure authentication, respecting the gravity of user data[cite: 109].

---

## 🎯 Mission Profiles (Capabilities)
This repository is the technical interview answer to the following CLS/CLSI requirements:

| Target Protocol | Hydra's Countermeasure (Evidence) |
| :--- | :--- |
| **"Implement software tools to improve reliability..."** | Hydra includes robust error handling for API timeouts and self-healing DB connections. |
| **"Develop standardized libraries for GUIs..."** | The frontend uses modular Svelte components, creating a reusable library of UI elements. |
| **"Support simulation and generation of parameters..."** | The system can be prompted to simulate physics scenarios (via Gemini) and output structured JSON data for analysis. |
| **"Conduct literature reviews..."** | Hydra's RAG (Retrieval Augmented Generation) capability allows it to ingest PDF manuals and answer technical queries with citations. |

---

## ⚡ Ignition Sequence (Quick Start)
To awaken the Hydra on your local terminal:

1.  **Clone the Hoard:**
    ```bash
    git clone [https://github.com/Matuxy/Hydra.git](https://github.com/Matuxy/Hydra.git)
    cd Hydra
    ```

2.  **Inject the Fuel (Environment):**
    * Create a `.env` file.
    * Add your `GEMINI_API_KEY` (The Spark).

3.  **Ignite the Engine:**
    * **Windows:** Run `./start_windows.bat`
    * **Linux/Mac:** Run `./start.sh`

4.  **Interface:**
    * Open `http://localhost:3000` to begin the neural link.

---

> *"The machine is not the goal. The machine is the lens through which we see the data."*
>
> — **John [Last Name]**