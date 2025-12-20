Inventory_Optimizer_PRO
=======================

Used by two major retail chains in Ontario, Canada, managing 3,000 SKUs each weekly, INVENTORY_OPTIMIZER_PRO is a state-of-the-art Python system that automates multi-store inventory management. It intelligently balances regular and clearance SKUs, optimizes transfers based on sales trends, and ensures critical products are always available—all while drastically reducing manual labor and operational costs.

⚠️ License
----------
This repository contains proprietary software. Please review the LICENSE file BEFORE PROCEEDING FURTHER.

Overview
--------
Inventory_Optimizer_PRO transforms chaotic inventory operations into a precise, data-driven, and highly efficient system. It dynamically calculates sales over a configurable period and determines the optimal SKU distribution across stores, ensuring:

- High-demand SKUs are always adequately stocked.
- Low-priority SKUs are managed intelligently to minimize unnecessary transfers.
- Clearance SKUs are handled strategically to minimize costs.
- Out-of-stock situations and ties between stores are resolved based on store capacity and sales trends.

The system is scalable across companies, districts, and store networks, making it suitable for multi-chain retail operations.

Key Features
------------
**Intelligent Inventory Allocation**
- Sales-Driven Transfers: Stock moves where it will be sold the most.
- Priority-Based SKU Management: Critical SKUs never run out; low-impact SKUs are deprioritized for transfer.
- Clearance SKU Handling: Clearance items are transferred only when cost-effective, reducing waste.
- Out-of-Stock Awareness: Temporary stock-outs during the sales period are considered in transfers.
- Tie Resolution: Stores with equal demand are evaluated based on additional parameters to ensure optimal allocation.

**Operational Efficiency**
- Reduces Manual Labor: Saves 20+ hours per week for inventory teams.
- Minimizes Costs: Cuts unnecessary product movements, fuel, driver wages, and operational overhead.
- Weekly Optimization: Rebalances stock across all stores and districts on a weekly schedule.
- Scalable & Extensible: Modular design allows new stores, districts, or companies to be added effortlessly.

**Logging & Reporting**
- Detailed Transfer Logs: Track each SKU movement with donor, receiver, and quantity.
- Condensed Summaries: Simplified outputs for management or auditing purposes.
- Updated Inventory Snapshots: Provides real-time view of store inventories after transfers.
- Performance-Aware: Efficient handling of thousands of SKUs per execution.

Inputs & Outputs
----------------
**Inputs**
- CSV or Excel files containing SKU, Product Name, Category, store inventories, and sales data.
- Example filenames:
  - rawTransferCompany1.xlsx
  - clearance_transfer_input_company2.csv
  - rawTransferCompany3.xlsx

**Outputs**
- Detailed Transfer Logs: `transfers_output_*`
- Condensed Transfer Summaries: `transfers_output_good_*`
- Updated Inventory Reports: `updated_available_numbers_*`
All outputs are in CSV format, ready for operational use or reporting.

How It Works (Conceptually)
---------------------------
1. **Dynamic Donor & Receiver Selection:**  
   Calculates which stores have excess stock and which stores need it most, based on SKU priority, sales trends, and store capacity.

2. **Intelligent Transfer Logic:**  
   Balances regular SKUs, clearance SKUs, and critical SKUs efficiently with minimal operational waste.

3. **Tie Handling & Prioritization:**  
   When multiple stores meet the same criteria, secondary parameters determine the best allocation.

4. **Weekly Rebalancing:**  
   Designed for weekly execution, maintaining optimal stock levels while adapting to changing sales patterns.

5. **Reporting & Traceability:**  
   Every transfer is logged, summarized, and consolidated into actionable reports for inventory managers.

Setup
-----
1. Install Python 3.9+ (tested up to 3.11).  
2. Install required packages:
3. Place input files in the project directory.  
4. Run the scripts
5. Outputs are generated automatically as CSV files.

Repository Structure
-------------------
Inventory_Optimizer_PRO/
├── LICENSE # License file
├── .gitignore # Git ignore file
├── README.txt # This file
├── rawTransferCompany1.xlsx / .csv # Input data for Company1
├── rawTransferCompany2.xlsx / .csv # Input data for Company2
├── rawTransferCompany3.xlsx / .csv # Input data for Company3
├── windsor_transfer.py # SKU transfer module for Company1
├── sarnia_clearance_transfer.py # Clearance transfer module for Company2
├── greentown_transfer.py # SKU transfer module for Company3
├── transfers_output_good_* # Condensed transfer outputs
└── updated_available_numbers_* # Updated inventory per store


Impact
------
- Streamlines inventory across multiple stores, companies, and districts.  
- Reduces wasted operational effort and cost.  
- Ensures high-demand SKUs are always available while optimizing low-impact SKUs.  
- Fully auditable, modular, and ready for scaling.  
- A single weekly execution maintains perfect balance, even in complex real-world retail networks.  

**INVENTORY_Optimizer_PRO is not just software—it’s a complete operational solution that turns manual chaos into precise, intelligent, and cost-saving inventory management.**
