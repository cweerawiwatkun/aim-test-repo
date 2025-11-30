# Login — Test Cases  
Author: Chitwatchara W.  
Module: Authentication

---

## TC-LOGIN-001: Successful login
**Preconditions:**  
- User account exists and is active.

**Steps:**  
1. Navigate to Login page  
2. Enter valid username  
3. Enter valid password  
4. Click **Login**

**Expected Result:**  
- User is redirected to Dashboard  
- Session is created successfully

**Severity:** Critical

---

## TC-LOGIN-002: Login with invalid password
**Steps:**  
1. Open Login page  
2. Enter valid username  
3. Enter incorrect password  
4. Click **Login**

**Expected Result:**  
- Error message: *"Invalid credentials"*  
- User remains on Login page  
- No session created

**Severity:** High

---

## TC-LOGIN-003: Login with inactive user
**Preconditions:**  
- The user exists but status = inactive

**Steps:**  
1. Enter inactive user credentials  
2. Click **Login**

**Expected Result:**  
- Error: *"User inactive. Please contact administrator"*  
- Login blocked

**Severity:** High

---

## TC-LOGIN-004: Forgot password flow
**Steps:**  
1. Click **Forgot Password**  
2. Enter registered email  
3. Click **Submit**

**Expected Result:**  
- System sends password reset email  
- Success message displayed

**Severity:** Medium

---

## TC-LOGIN-005: Session timeout after inactivity
**Steps:**  
1. Login successfully  
2. Stay idle for X minutes (system config)  
3. Perform any action

**Expected Result:**  
- System logs out automatically  
- Message: *"Session expired"*  
- Redirect to Login page

**Severity:** Medium
