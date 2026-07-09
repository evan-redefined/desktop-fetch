# 💻 Laptop Fetcher

A simple, lightweight, and zero-dependency Bash script to retrieve and display essential laptop identification details directly from your Linux terminal. 

This tool is specifically designed to fetch manufacturing data rather than generic hardware specs, making it highly useful for quick device audits, system administration, or checking warranty statuses.

---

## ✨ Features
* **Zero Dependencies**: Runs natively using pure Bash and core Linux system files (`/sys/class/dmi/id/`).
* **Fast & Lightweight**: Executes instantly without relying on heavy runtimes or external packages.
* **Essential Info**: Cleanly displays Vendor/Brand, Device Model, Serial Number (S/N), and BIOS details with aesthetic terminal coloring.

## 📸 Preview
```text
💻 LAPTOP DEVICE INFORMATION
-----------------------------------
Brand/Vendor  : Acer
Device Model  : Aspire A314-41
Serial Number : NXH7MSN00383804E7C6600
BIOS Version  : V1.06 (04/03/2019)
-----------------------------------
