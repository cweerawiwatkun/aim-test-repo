# Automation folder - overview

This patch adds an `automation/` folder with Robot Framework tests and a `traceability/` matrix.

How to run locally:
1. Install dependencies:
   ```
   python3 -m venv .venv
   source .venv/bin/activate
   pip install robotframework selenium robotframework-seleniumlibrary robotframework-requests webdriver-manager
   ```
2. Start backend (if you have one) or serve frontend:
   ```
   # if you have backend (from other repo code)
   cd backend && uvicorn main:app --reload &

   # serve frontend
   python -m http.server 8001 --directory frontend &
   ```
3. Run Robot tests:
   ```
   robot -d automation/reports automation/tests
   ```
