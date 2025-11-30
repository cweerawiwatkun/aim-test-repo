# Memo Request — Test Cases  
Author: Chitwatchara W.  
Module: E-Expense / Memo Request

---

## TC-MEM-001: Create Memo Request (normal)
**Preconditions:**  
- User logged in and has permission to create memo request.

**Steps:**  
1. Navigate to Memo Request page  
2. Click **Create New**  
3. Fill mandatory fields (Title, Reason, Amount if any, Attachments)  
4. Click **Submit**

**Expected Result:**  
- Memo Request created successfully  
- Status = Pending Approval  
- Memo ID generated

**Severity:** High

---

## TC-MEM-002: Create Memo with attachments
**Steps:**  
1. Create Memo Request  
2. Attach required documents (PDF, image)  
3. Submit

**Expected Result:**  
- Attachments saved and downloadable  
- Status = Pending Approval

**Severity:** Medium

---

## TC-MEM-003: Missing required fields
**Steps:**  
1. Try to submit without Title or Reason  
2. Click Submit

**Expected Result:**  
- Validation errors shown for missing fields  
- Submission blocked

**Severity:** High

---

## TC-MEM-004: Approval routing for Memo
**Preconditions:**  
- Memo requires manager approval

**Steps:**  
1. Submit Memo  
2. Manager logs in → Approve

**Expected Result:**  
- Status changes to Approved  
- Notification sent to requester

**Severity:** Critical

---

## TC-MEM-005: Reject memo with comment
**Steps:**  
1. Approver rejects memo and adds rejection reason  
2. Requester views rejection

**Expected Result:**  
- Status = Rejected  
- Rejection comment visible to requester

**Severity:** Medium

---

## TC-MEM-006: Cancel memo before approval
**Steps:**  
1. Requester cancels memo while status = Pending  
2. Confirm cancel

**Expected Result:**  
- Status = Cancelled  
- Approver cannot act on it afterwards

**Severity:** Medium

---

## TC-MEM-007: Traceability to related Advance/Reimburse
**Steps:**  
1. Create Memo that references Advance ID  
2. Submit and verify linkage in UI

**Expected Result:**  
- Related Advance/Reimburse links shown in memo detail  
- Navigation between related items works

**Severity:** Medium
