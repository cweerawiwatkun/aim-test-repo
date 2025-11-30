# Reimburse — Test Cases  
Author: Chitwatchara W.  
Module: E-Expense / Reimbursement

---

## TC-REM-001: Submit Reimburse (normal case)
**Preconditions:**  
- User logged in  
- User has receipts to submit

**Steps:**  
1. Navigate to **Reimburse** page  
2. Click **Create New**  
3. Fill mandatory fields (amount, date, category, description)  
4. Upload valid receipt image  
5. Click **Submit**

**Expected Result:**  
- Reimburse request created  
- Status = Pending Approval  
- Reimburse ID generated

**Severity:** Critical

---

## TC-REM-002: Submit without receipt
**Steps:**  
1. Create Reimburse  
2. Do not upload any receipt  
3. Click **Submit**

**Expected Result:**  
- Validation message: *"Receipt required"*  
- Cannot submit

**Severity:** High

---

## TC-REM-003: Invalid receipt file type
**Steps:**  
1. Create Reimburse  
2. Upload unsupported file (e.g., `.exe`, `.zip`)  
3. Submit

**Expected Result:**  
- System rejects file  
- Displays error message

**Severity:** Medium

---

## TC-REM-004: Amount exceeds policy limit
**Preconditions:**  
- Policy limit = 2,000 THB per transaction

**Steps:**  
1. Enter amount = 3,000 THB  
2. Submit

**Expected Result:**  
- Error message: *"Exceeds policy limit"*  
- Submission blocked

**Severity:** High

---

## TC-REM-005: Multi-level approval
**Preconditions:**  
- Reimburse requires 2 approvers

**Steps:**  
1. Submit Reimburse  
2. Approver 1 → approves  
3. Approver 2 → approves

**Expected Result:**  
- Status flows: Pending → Approved (Level 1) → Approved (Level 2) → Completed

**Severity:** Critical

---

## TC-REM-006: Save as Draft
**Steps:**  
1. Create Reimburse  
2. Fill partial info  
3. Click **Save as Draft**

**Expected Result:**  
- Status = Draft  
- User can edit later

**Severity:** Medium

---

## TC-REM-007: Cancel Reimburse request
**Preconditions:**  
- Status = Pending Approval

**Steps:**  
1. Open request  
2. Click **Cancel Request**  
3. Confirm

**Expected Result:**  
- Status changes to Cancelled  
- Removed from approver queue

**Severity:** Medium
