# Clearing Advance — Test Cases  
Author: Chitwatchara W.  
Module: E-Expense / Clearing

---

## TC-CLR-001: Create Clearing from existing Advance
**Preconditions:**  
- Advance exists with status = Approved  
- User has permission to clear Advance

**Steps:**  
1. Open approved Advance  
2. Click **Create Clearing**  
3. Fill required fields (actual amount, description, attachments)  
4. Submit

**Expected Result:**  
- Clearing request created successfully  
- Status = Pending Approval

**Severity:** Critical

---

## TC-CLR-002: Clearing amount exceeds advance amount
**Preconditions:**  
- Advance amount = 10,000 THB

**Steps:**  
1. Create Clearing  
2. Enter actual amount = 12,000 THB  
3. Submit  

**Expected Result:**  
- Error: *"Amount exceeds approved advance"*  
- Cannot submit request  

**Severity:** High

---

## TC-CLR-003: Upload invalid or corrupted file
**Steps:**  
1. Create Clearing  
2. Upload corrupted image or unsupported type  
3. Submit  

**Expected Result:**  
- System rejects file  
- Error message displayed  

**Severity:** Medium

---

## TC-CLR-004: Multi-level approval workflow for Clearing
**Preconditions:**  
- Clearing requires 2 approvers

**Steps:**  
1. Submit Clearing  
2. Approver 1 logs in → approves  
3. Approver 2 logs in → approves  

**Expected Result:**  
- Status flows: Pending → Approved (Level 1) → Approved (
