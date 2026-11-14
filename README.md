# VOYAGO — Premium 3D Travel Agency Platform

> **"Discover Beyond Destinations."**  
> An ultra-modern, luxury travel-tech web application built with **Three.js**, **Leaflet**, and an **Express-compatible REST API** in pure Node.js.

---

## 🌟 Platform Highlights

1. **Brand Identity & Luxury Aesthetics**
   - Obsidian dark mode with celestial gold (`#e5c389`) and electric azure accents.
   - Glassmorphic navigation, sticky headers, and floating search bar.
   - Fluid typography combining *Plus Jakarta Sans* and *Playfair Display*.
   - Responsive micro-interactions and depth shadows.

2. **Immersive 3D Hero Experience**
   - Interactive 3D Earth Globe rendered in **Three.js** with atmospheric halo and landmass point cloud.
   - 3D flight arcs connecting Paris, Dubai, Kashmir, Tokyo, Bali, and Switzerland.
   - Glowing destination pin markers at accurate latitude/longitude coordinates with hover and pulse effects.
   - Drag to rotate, auto-spin with damping interpolation, and real-time mouse parallax.
   - Built-in **Canvas 3D perspective projection fallback** that guarantees fluid 60 FPS performance even if WebGL is disabled or offline.

3. **Destination Explorer**
   - 10 realistic luxury destinations:
     - **Bali** (Indonesia) — Beach & Culture
     - **Switzerland** (Zermatt & Interlaken) — Mountains & Glaciers
     - **Dubai** (UAE) — Futuristic Wonder & Desert Dunes
     - **Paris** (France) — Art, Romance & Gastronomy
     - **Tokyo** (Japan) — Cyberpunk Megacity & Hot Spring Ryokan
     - **Meghalaya** (India) — Living Root Bridges & Mist Canyons
     - **Kashmir** (India) — Royal Houseboats & Alpine Gondola
     - **Goa** (India) — Sun-drenched Catamarans & Heritage Quarters
     - **Amalfi Coast** (Italy) — Cliffside Positano & Capri Yacht
     - **Iceland** (Reykjavik) — Northern Lights & Crystal Ice Caves
   - Dynamic category filtering (*All, Beach, Mountains, Luxury, Culture, Adventure*).
   - Real-time search by city, country, or keyword.
   - Full Destination Details Modal with climate, best travel season, attractions, and linked packages.

4. **Curated Travel Packages**
   - 10 signature packages with pricing, hotel tiers, transport modes, and daily itineraries.
   - Seats left indicators, discount badges, and rating tags.
   - "View Details" modal with comprehensive day-by-day travel itinerary.
   - Direct "Book Now" integration that pre-selects the destination and package in the planner.

5. **Trip Planner & Demo Booking System**
   - 4-step wizard:
     1. Destination & Package Selection
     2. Departure / Return Dates & Traveler Roster (Adults, Children, Suite Tier)
     3. Bespoke Concierge Add-ons (VIP Transfer, Private Guide, Travel Insurance, Candlelit Dinner)
     4. Lead Passenger Info & Promo Code Validation (`VOYAGO20` for 20% off, `VOYAGE10` for 10% off)
   - **Live Dynamic Cost Calculator HUD**: updates instantly on every change.
   - Full input validation (names, valid email, dates).
   - Submits demo booking to Express REST API `POST /api/bookings`.
   - Persists reservation in memory and `localStorage.voyago_bookings`.
   - Fires colorful **Confetti burst** upon completion.
   - Generates a branded **Booking Voucher / Confirmation Receipt** with reference code (e.g. `VOY-842910`), printable view (`window.print()`), and link to Admin view.

6. **Interactive Planetary Map**
   - Integrated **Leaflet** engine with CartoDB luxury dark tiles.
   - Custom animated pulse markers across 10 global destinations.
   - Interactive popups with thumbnail photo, budget badge, rating, and direct "Explore" and "Book Now" actions.
   - Interactive search sidebar: clicking any destination triggers smooth `map.flyTo()` zoom animation!

7. **Lightweight Backend REST API**
   - Pure Node.js zero-dependency HTTP server with Express-compatible architecture.
   - Endpoints:
     - `GET /api/destinations` — Query filtering by category, search
     - `GET /api/destinations/:id` — Single destination lookup
     - `GET /api/packages` — Query filtering by destination, category, sort
     - `GET /api/packages/:id` — Single package lookup
     - `POST /api/packages` — Admin create package
     - `PUT /api/packages/:id` — Admin edit package
     - `DELETE /api/packages/:id` — Admin remove package
     - `POST /api/bookings` — Create demo booking with validation
     - `GET /api/bookings` — List all demo bookings
     - `PATCH /api/bookings/:id/status` — Update booking status (Confirmed, Pending, Completed, Cancelled)
     - `GET /api/stats` — Metrics for admin dashboard
   - Serves static frontend assets with MIME detection and CORS headers.

8. **Admin Dashboard**
   - Executive KPI cards: Total Destinations, Available Packages, Demo Bookings, Estimated Revenue.
   - Interactive revenue distribution bar chart.
   - Demo Booking Management Table with search and inline status selector (`Confirmed`, `Pending`, `Completed`, `Cancelled`).
   - Travel Package Inventory Manager: Add New Package modal, Edit Package modal, Delete Package.

9. **Global Currency Converter**
   - Real-time instant conversion across USD ($), EUR (€), GBP (£), and INR (₹).

---

## 📁 Project Structure

```
voyago/
├── server/
│   ├── server.js              # REST API & Static Asset Server (Express pattern)
│   └── data.js                # In-memory store (Destinations, Packages, Bookings, Stats)
├── public/
│   ├── index.html             # Master Single Page Application
│   ├── css/
│   │   └── style.css          # Master Design System (Glassmorphism, Animations, Dark Mode)
│   └── js/
│       ├── api.js             # REST API Client with Offline Cache Fallback
│       ├── globe3d.js         # Three.js 3D Earth Globe with Canvas Fallback & Mouse Parallax
│       ├── map.js             # Leaflet Interactive Map with Custom Pins & FlyTo
│       ├── booking.js         # Trip Planner, Dynamic HUD Calculator, Promo Codes & Voucher
│       ├── admin.js           # Admin Dashboard KPIs, Status Updates, Package CRUD & Charts
│       └── app.js             # SPA Router, Search, Currency Switcher, Modals & Toast Alerts
├── package.json               # Project manifest
├── start.bat                  # Windows double-click launcher
├── serve.ps1                  # PowerShell launcher
└── README.md                  # Documentation & Manual
```

---

## 🚀 How to Run the Application

### Option A: Using the PowerShell Launcher
```powershell
powershell -ExecutionPolicy Bypass -File C:\Users\gmall\.gemini\antigravity\scratch\voyago\serve.ps1
```

### Option B: Using the Antigravity Node Runner Directly
```powershell
& "C:\Users\gmall\AppData\Roaming\Antigravity\bin\agy-node.cmd" "C:\Users\gmall\.gemini\antigravity\scratch\voyago\server\server.js"
```

### Option C: Using Standard Node.js (if added to PATH)
```bash
cd C:\Users\gmall\.gemini\antigravity\scratch\voyago
node server/server.js
```

### Accessing the Web Application
Open your browser and navigate to:
```
http://localhost:5000
```

---

## 🧪 Testing the Complete User Journey

1. **Homepage Experience**:
   - Scroll through the hero section; observe the rotating 3D Earth Globe and mouse parallax on the floating travel badges.
   - Use the floating search bar to type "Swiss" or select "Mountains"; click **Search** to jump directly to filtered results.
2. **Explore Destinations**:
   - Click category filter pills (*Beach, Mountains, Luxury, Culture, Adventure*).
   - Click **Details** on any destination card (e.g. *Bali*) to view the full modal with weather, best season, attractions, and linked packages.
3. **Select Travel Package**:
   - Scroll to Signature Travel Packages.
   - Click **Details** on *Alpine Grandeur: Matterhorn & Glacier Express* to inspect the day-by-day itinerary.
   - Click **Book Now**; observe that the Trip Planner automatically pre-selects Switzerland and the Matterhorn package!
4. **Trip Planner & Live Cost Calculation**:
   - Change the number of adults and children; observe the live cost HUD update in real time.
   - Check or uncheck bespoke add-ons (VIP Transfer, Guide, Insurance).
   - Enter promo code `VOYAGO20` and click **Apply** to see an instant 20% discount applied!
5. **Submit Demo Booking**:
   - Fill in your name, email, and phone.
   - Click **Confirm Demo Reservation**.
   - Enjoy the vibrant confetti celebration and inspect the official Booking Confirmation Voucher with reference code (e.g. `VOY-842910`).
   - Click **Print Voucher** or click **View in Admin Dashboard**.
6. **Admin Dashboard**:
   - Check the live KPI cards and revenue chart.
   - In the Booking Management table, find your newly created booking.
   - Change its status from `Confirmed` to `Completed` using the inline dropdown; observe the instant API sync and toast notification!
   - Switch to the **Travel Package Inventory** tab; click **+ Add New Package** to create a custom package!
7. **Interactive Planetary Map**:
   - Scroll to the Interactive Map section.
   - Click markers to see popup destination cards.
   - Select any destination in the map sidebar to fly across the globe with smooth camera panning.

---

## ⚠️ Known Limitations
- **In-Memory Persistence**: As specified in the requirements, data is stored in memory in `data.js` and in client-side `localStorage`. If the Node.js server process is restarted, backend memory state resets to default initial data, but user bookings remain preserved in browser `localStorage`.
- **Demo Booking Mode**: VOYAGO is a luxury demonstration platform; no actual financial or payment gateway transactions are processed.
