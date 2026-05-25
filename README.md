# Hardcore50-Global-Trading
Global asset multi-factor auditing and backtesting engine focused on HALO(Heavy Assets, Low Obsolescence) equities.
---

## 📂 Project Architecture

```text
Hardcore50-Global-Quant-Engine/
├── src/
│   ├── data_pipeline/          # Module 1: Cross-Market Data Auditing & Storage
│   │   ├── schema.sql          # Multi-market (US, HK, KR) Daily/Tick DB Schema
│   │   ├── static_universe.sql # Fixed Dec 31 Anchor Filter (ROIC, Market Cap)
│   │   └── timezone_align.py   # Cross-market timezone alignment & denoising
│   │
│   └── backtest_engine/        # Module 2: High-Performance C++ Backtest Center
│       ├── include/
│       │   ├── Common.hpp      # StockData & TradingSignal core structs
│       │   └── ThreadPool.hpp  # High-concurrency worker pool
│       ├── src/
│       │   ├── main.cpp        # Engine entry point
│       │   └── Analytics.cpp   # Sharpe Ratio, Max Drawdown (MDD) calculation
│       └── CMakeLists.txt
│
├── config/                     # Module 3: Macro Stress Testing Configurations
│   ├── stress_factors.json     # Geopolitical risk & cross-border friction factors
│   └── liquidity_distortion.yaml
│
└── README.md                   # Module 4: Strategic Investment Whitepaper

📈 System Core Methodology
The H50 Hardcore Rule: Strictly lock down the global semiconductor & infrastructure universe on December 31st annually based on structural metrics (ROIC, Market Cap) to eliminate survivorship bias and market noise.

No-Framework C++ Execution: Pure C++17/20 STL implementation utilizing multi-threading (<thread>, <mutex>) to concurrently benchmark historical performance across massive historical market drawdowns (e.g., 2025-2026 market cycles).

Friction-Aware Simulation: Integrating non-standard geopolitical and settlement friction coefficients directly into the portfolio's clearance liquidation.

---
