
# 💰 Expense Tracker – Power Platform Project

A simple **Expense Tracker** built with **Power Apps (Canvas)**, **Dataverse**, **Power Automate**, and **Power BI**.

## 🚀 Features
- Submit expenses via Power Apps
- Automated approval workflow using Power Automate
- Store expense data in Dataverse
- View analytics dashboards in Power BI
- Role-based access: Employee / Manager
- Teams notifications for approvals

## 🧱 Architecture
User → Power Apps (Canvas) → Dataverse → Power Automate → Power BI

## 📂 Files
- powerapps/ExpenseTracker.msapp — exported Canvas App (placeholder now)
- flows/ExpenseApprovalFlow.json — sample flow definition (placeholder)
- dataverse/Tables.md — table schema
- reports/ExpenseDashboard.pbix — Power BI report (placeholder)

## Export/Import Notes
- **Canvas App**: Power Apps → File → Save As → This computer (.msapp) → place under `powerapps/`
- **Flow**: Power Automate → Export → Package (.zip) → place under `flows/`
- **Power BI**: Save your .pbix under `reports/`

## Daily Update Routine
1) Make a small change (schema, app, flow, or report).  
2) Export artifacts and replace files.  
3) Commit with a clear message.
