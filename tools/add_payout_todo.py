#!/usr/bin/env python3
"""Add creator payout automation todo to TASKS_REMAINING.md"""

FILE_PATH = r"C:\My Projects\AIRTA\TASKS_REMAINING.md"

# Read the file
with open(FILE_PATH, 'r', encoding='utf-8') as f:
    content = f.read()

new_section = '''### **Phase 5: Creator Payout Automation (Post Business Banking)**
- [ ] Set up business banking account for holding creator payouts
- [ ] Create Cloud Function to auto-transfer creator credits to holding account
  - Trigger: On new sale (when `sales_transactions` document created)
  - Transfer: Move `creatorCreditPerSale` amount to holding account
  - Keep reference in Firestore for reconciliation
- [ ] Add admin dashboard to view holding account balance
- [ ] Automate actual payouts (PayPal/ACH) from holding account
- [ ] Add tax reporting (1099 generation for creators)
- [ ] **Prerequisite:** Business banking account + proper business entity set up

'''

# Insert before the "---" after Phase 4
marker = "- [ ] Market Pro Plus ($24.99/month)\n\n---"
replacement = "- [ ] Market Pro Plus ($24.99/month)\n\n" + new_section + "---"

content = content.replace(marker, replacement)

# Write back
with open(FILE_PATH, 'w', encoding='utf-8') as f:
    f.write(content)

print("Added Phase 5: Creator Payout Automation to TASKS_REMAINING.md")
