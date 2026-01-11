@echo off
echo ========================================
echo   Apna Medico - Complete Deployment
echo ========================================
echo.

echo [1/3] Building production version...
call npx vite build
if %errorlevel% neq 0 (
    echo ERROR: Build failed!
    pause
    exit /b 1
)
echo ✓ Build completed successfully
echo.

echo [2/3] Verifying _redirects file...
if exist "dist\_redirects" (
    echo ✓ _redirects file found in dist folder
) else (
    echo ERROR: _redirects file missing!
    pause
    exit /b 1
)
echo.

echo [3/3] Ready to deploy!
echo.
echo ========================================
echo   DEPLOYMENT OPTIONS
echo ========================================
echo.
echo Option 1: NETLIFY DROP (Recommended)
echo   1. Go to: https://app.netlify.com/drop
echo   2. Drag the 'dist' folder to the page
echo   3. Done!
echo.
echo Option 2: NETLIFY CLI
echo   Run: netlify deploy --prod --dir=dist
echo.
echo Option 3: VERCEL
echo   Run: vercel --prod
echo.
echo ========================================
echo   IMPORTANT: After deployment
echo ========================================
echo.
echo Add environment variable:
echo   Key: VITE_GOOGLE_MAPS_API_KEY
echo   Value: AIzaSyAc3GtsJxKxge8ha-Mm25oKmIic9ZKae18
echo.
echo ========================================
pause
