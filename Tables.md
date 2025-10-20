
## Dataverse Tables

### Expenses
- ExpenseID (Auto Number)
- Title (Text)
- Employee (Text)
- Category (Choice: Travel, Food, Office, Other)
- Amount (Currency)
- ReceiptUrl (Text)
- Status (Choice: Submitted, Approved, Rejected, Paid)
- SubmittedOn (DateTime)

### Approvals
- ApprovalID (Auto Number)
- Expense (Lookup → Expenses)
- ApproverEmail (Text)
- Decision (Choice: Pending, Approved, Rejected)
- DecisionOn (DateTime)
- Comments (Multiline)
