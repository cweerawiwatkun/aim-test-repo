# Regression Checklist — E-Expense System

## 1. Login & Authentication
- [ ] Login with valid credentials
- [ ] Login with invalid password
- [ ] Session timeout
- [ ] Forgot password flow

## 2. Advance Request
- [ ] Create Advance (normal case)
- [ ] Create Advance with attachments
- [ ] Validate amount limit rules
- [ ] Submit approval workflow
- [ ] Manager approval (1-step)
- [ ] Multi-level approval (if applicable)

## 3. Clearing Advance
- [ ] Create Clearing from existing Advance
- [ ] Upload supporting documents
- [ ] Validate remaining balance
- [ ] Negative balance prevention
- [ ] Submit for approval

## 4. Reimbursement
- [ ] Submit Reimburse with receipts
- [ ] Currency handling (if available)
- [ ] Approval chain
- [ ] Export PDF/summary

## 5. Memo Request
- [ ] Create Memo Request
- [ ] Attach files
- [ ] Approval workflow
- [ ] Status updates

## 6. Role & Permission
- [ ] Employee view
- [ ] Manager view
- [ ] Finance role access
- [ ] Admin-only functions

## 7. Reports
- [ ] Generate PDF report
- [ ] Generate CSV report
- [ ] Filter + Search
- [ ] Date range selection

## 8. General UI & Validation
- [ ] Required fields
- [ ] Input validation
- [ ] Error message correctness
- [ ] Loading & skeleton state
- [ ] Pagination (if any)

---

This checklist is executed before every release to ensure core functions are stable.
