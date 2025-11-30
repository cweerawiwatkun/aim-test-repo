# Test Plan — E-Expense System (by Chitwatchara W.)

## 1. Objective
To verify the functional accuracy, workflow stability, and regression reliability of the E-Expense system modules:
- Login
- Advance Request
- Clearing Advance
- Reimburse
- Memo Request
- Approval Workflow
- Reporting

## 2. Scope
### In Scope
- Functional Test
- Integration Test
- Regression Test
- Validation of business rules (amount limit, approval chain)

### Out of Scope
- Performance test
- Penetration/security deep test

## 3. Test Approach
- Manual test execution based on structured test cases.
- Positive + negative + boundary test.
- Traceability Matrix maintained under `/docs`.

## 4. Test Deliverables
- Test Cases (`/testcases`)
- Test Plan (`/docs/TestPlan.md`)
- Regression Checklist (`/docs/RegressionChecklist.md`)
- Bug Reports (GitHub Issues)

## 5. Environment
- SIT / UAT
- Browser: Chrome, Edge
- Device: Desktop (Windows/Mac)

## 6. Risks & Mitigation
- Changing business rules → Maintain version control in GitHub.
- Dependency on approval workflow → Use test accounts with correct roles.

## 7. Approval
QA Owner: **Chitwatchara Weerawiwatkun**
