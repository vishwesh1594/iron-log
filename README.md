# 🏋️ IRON·LOG

**A fast, beautiful, installable workout tracker for a 5-phase / 5-day gym program.**

IRON·LOG turns a coached PDF training plan into a daily companion app: open it on any phone, see exactly today's session, tick off sets, log your weights, and watch your lifts climb week over week. No accounts, no servers, no tracking — your data lives on your device.

> **Live app:** enable GitHub Pages on this repo (Settings → Pages → deploy from `main`), then open the Pages URL on your phone and tap **Add to Home Screen**. It installs and runs like a native app — fully offline.

---

## ✨ Key Features

| | Feature |
|---|---|
| 📅 | **Today-first design** — the app opens on today's workout automatically: the right phase, the right week, the right day. Rest and step days included. |
| ✅ | **One-tap set logging** — big check buttons sized for gym use; reps pre-fill from your program targets. |
| 🏋️ | **Smart weight memory** — every weight you enter in Week 1 is referencible forever: each exercise shows a **"Last: 60/62.5 kg × 5,5,5"** chip from your previous session, and pre-fills set-by-set placeholders. |
| 📜 | **Per-exercise history** — tap the "Last" chip to expand every past session for that lift, labelled by phase and week (`P1 · W3`), across the entire program. |
| ⏱️ | **Automatic rest timer** — starts when you complete a set, using the plan's own rules: 30 s after 12+ reps, 2 min after 8–10, 3 min under 8. Vibrates when it's time to lift. |
| 🔗 | **Supersets, warm-ups, abs & cardio** — superset rounds are visually paired; mobility warm-ups, cool-downs, ab routines and the daily 20-min walk are built-in checklists. |
| 📈 | **Session volume & progress ring** — live completion ring while you train; history shows total tonnage lifted per session. |
| 🗓️ | **5 full phases, 4 weeks each** — sets and reps update automatically as weeks progress (e.g. 4×8 → 5×5 on heavy movements); the week advances itself every Monday. |
| 📴 | **100 % offline** — a service worker caches the whole app; it opens instantly with no signal in a basement gym. |
| 🔒 | **Private by design** — all data stays in your browser's local storage; one-tap JSON backup & restore. |
| 🌑 | **Gym-ready dark UI** — high-contrast graphite + amber design with a condensed athletic typeface, built for OLED screens and chalky thumbs. |

## 📱 Install on your phone

1. Open the GitHub Pages URL for this repo in **Chrome** (Android) or **Safari** (iPhone).
2. Android: tap **⋮ → Add to Home screen** (Chrome will offer "Install app").
   iPhone: tap **Share → Add to Home Screen**.
3. Launch from the icon — full-screen, offline, instant.

## 🗂️ Repo layout

| File | Purpose |
|---|---|
| `index.html` | The entire app — single file, zero dependencies, embedded fonts |
| `manifest.webmanifest` | PWA manifest (name, icons, standalone display) |
| `sw.js` | Service worker — cache-first offline support |
| `icon-*.png` | App icons (incl. maskable) |
| `workout-tracker.html` | Head-less build of the same app (used for Claude artifact hosting) |

## 🏪 Play Store

This app is Play-Store-ready as a **Trusted Web Activity**: once GitHub Pages is live, [PWABuilder](https://www.pwabuilder.com) can package the Pages URL into a signed Android App Bundle for upload to the Google Play Console (requires a one-time $25 Google Play developer registration).

## 🛠️ Tech notes

- Single-file vanilla JS/CSS/HTML — no framework, no build step, ~105 KB total.
- Typeface: Barlow Condensed (600/700), subset and embedded as base64 WOFF2.
- State: one localStorage key (`vsironlog_v1`) holding settings + per-date logs; exercise history is keyed by exercise name, so progress follows a movement across phases and days.
- Program data is transcribed from a coached Livezy plan (coach: Allan J. Fernandes).

---

*Personal project — training plan © its author; app code free to reuse.*
