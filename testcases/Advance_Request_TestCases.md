# Advance Request — Test Cases  
Author: Chitwatchara W.  
Module: E-Expense / Advance

---

## TC-ADV-001: Create Advance (normal case)
**Preconditions:**  
- User is logged in  
- User has permission to create Advance

**Steps:**  
1. Navigate to **Advance Request** page  
2. Click **Create New**  
3. Fill in mandatory fields (Reason, Amount, Date, Cost Center, etc.)  
4. Attach supporting files (optional)  
5. Click **Submit**

**Expected Result:**  
- Advance is created successfully  
- Status = *Pending Approval*  
- Advance number is generated

**Severity:** Critical

---

## TC-ADV-002: Create Advance with missing required fields
**Steps:**  
1. Go to Advance Request  
2. Leave mandatory fields blank  
3. Click **Submit**

**Expected Result:**  
- Validation message displayed for each missing field  
- Cannot submit the request  

**Severity:** High

---

## TC-ADV-003: Amount exceeds user's approval limit
**Preconditions:**  
- User approval limit = 10,000 THB

**Steps:**  
1. Create new Advance  
2. Enter amount = 20,000 THB  
3. Submit  

**Expected Result:**  
- Error: *"Amount exceeds approval limit"*  
- Submission blocked  

**Severity:** High

---

## TC-ADV-004: Attach invalid file type
**Steps:**  
1. Create Advance  
2. Upload unsupported file format (e.g., `.exe`)  
3. Submit  

**Expected Result:**  
- System rejects the file  
- Error message displayed: *"Invalid file type"*  

**Severity:** Medium

---

## TC-ADV-005: Multi-level approval routing
**Preconditions:**  
- User requires 2-level approval

**Steps:**  
1. Create Advance  
2. Submit  
3. Approver 1 logs in → approves  
4. Approver 2 logs in → approves  

**Expected Result:**  
- Status updates: Pending → Approved (Level 1) → Approved (Level 2) → Completed

**Severity:** Critical

---

## TC-ADV-006: Save as Draft
**Steps:**  
1. Create new Advance  
2. Fill some fields  
3. Click **Save as Draft**

**Expected Result:**  
- Request saved with status *Draft*  
- User can edit later  

**Severity:** Medium

---

## TC-ADV-007: Cancel Advance request
**Preconditions:**  
- Advance exists with status = Pending Approval

**Steps:**  
1. Open request  
2. Click **Cancel Request**  
3. Confirm

**Expected Result:**  
- Status changes to *Cancelled*  
- Approver no longer sees it  

**Severity:** Medium
