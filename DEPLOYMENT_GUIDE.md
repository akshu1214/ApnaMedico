# 🚀 Deployment Guide - Apna Medico

Your app has been built successfully and is ready to deploy!

---

## ✅ Build Complete

**Build Output:** `dist/` folder
- ✅ `dist/index.html` - Main HTML file
- ✅ `dist/assets/` - Optimized CSS & JS files
- ✅ Total size: ~477 KB (compressed: ~128 KB)

---

## 🌐 Deployment Options

### **Option 1: Vercel (Recommended)** ⭐

**Why Vercel?**
- ✅ Free hosting
- ✅ Automatic HTTPS
- ✅ Global CDN
- ✅ Perfect for React/Vite apps
- ✅ Easy environment variables setup

**Deploy Steps:**

1. **Install Vercel CLI**
   ```bash
   npm install -g vercel
   ```

2. **Login to Vercel**
   ```bash
   vercel login
   ```

3. **Deploy**
   ```bash
   vercel
   ```
   - Follow prompts
   - Select "Yes" for default settings
   - Your app will be live in seconds!

4. **Add Environment Variables**
   - Go to: https://vercel.com/dashboard
   - Select your project
   - Settings → Environment Variables
   - Add: `VITE_GOOGLE_MAPS_API_KEY` = `AIzaSyAc3GtsJxKxge8ha-Mm25oKmIic9ZKae18`
   - Redeploy: `vercel --prod`

**Your live URL:** `https://apna-medico-[random].vercel.app`

---

### **Option 2: Netlify**

**Deploy Steps:**

1. **Install Netlify CLI**
   ```bash
   npm install -g netlify-cli
   ```

2. **Login**
   ```bash
   netlify login
   ```

3. **Deploy**
   ```bash
   netlify deploy --prod --dir=dist
   ```

4. **Add Environment Variables**
   - Go to: https://app.netlify.com
   - Site settings → Environment variables
   - Add: `VITE_GOOGLE_MAPS_API_KEY` = `AIzaSyAc3GtsJxKxge8ha-Mm25oKmIic9ZKae18`
   - Redeploy

---

### **Option 3: GitHub Pages**

1. **Install gh-pages**
   ```bash
   npm install --save-dev gh-pages
   ```

2. **Update package.json** (add to scripts):
   ```json
   "scripts": {
     "deploy": "npx vite build && npx gh-pages -d dist"
   }
   ```

3. **Deploy**
   ```bash
   npm run deploy
   ```

4. **Enable GitHub Pages**
   - Go to your repo → Settings → Pages
   - Source: gh-pages branch
   - Save

**Note:** GitHub Pages doesn't support environment variables well. You'll need to use mock data or configure differently.

---

### **Option 4: Firebase Hosting**

1. **Install Firebase CLI**
   ```bash
   npm install -g firebase-tools
   ```

2. **Login**
   ```bash
   firebase login
   ```

3. **Initialize**
   ```bash
   firebase init hosting
   ```
   - Select: Use existing project or create new
   - Public directory: `dist`
   - Single-page app: `Yes`
   - GitHub auto-deploy: Optional

4. **Deploy**
   ```bash
   firebase deploy
   ```

---

## 🔒 Important: Environment Variables

**For Production Deployment:**

Your Google Maps API key is currently in `.env` file. For production:

1. **Add to deployment platform** (Vercel/Netlify/etc.)
   - Variable name: `VITE_GOOGLE_MAPS_API_KEY`
   - Value: `AIzaSyAc3GtsJxKxge8ha-Mm25oKmIic9ZKae18`

2. **Secure your API key** in Google Cloud Console:
   - Go to: https://console.cloud.google.com/
   - APIs & Services → Credentials
   - Click your API key
   - Under "Application restrictions":
     - Select "HTTP referrers"
     - Add your production domain: `https://your-domain.vercel.app/*`
   - Save

---

## 📦 What's Included in Build

Your `dist/` folder contains:
- ✅ Optimized HTML
- ✅ Minified CSS (~63 KB)
- ✅ Minified JavaScript (~414 KB)
- ✅ All assets and images
- ✅ Service worker ready
- ✅ SEO optimized

---

## 🧪 Test Production Build Locally

Before deploying, test the production build:

```bash
npx vite preview
```

This will serve your `dist/` folder at: http://localhost:4173

---

## ✅ Pre-Deployment Checklist

- ✅ Build completed successfully
- ✅ `.env` file not committed to Git
- ✅ Google Maps API key configured
- ✅ All features tested locally
- ✅ Console has no errors
- ✅ Mobile responsive checked
- ✅ API key restrictions set

---

## 🎯 Recommended: Vercel Deployment

**Quick Deploy (2 minutes):**

```bash
# 1. Install Vercel
npm install -g vercel

# 2. Deploy
vercel

# 3. Follow prompts, then add environment variable in dashboard
# 4. Redeploy with:
vercel --prod
```

**Your app will be live at:** `https://apna-medico.vercel.app` (or similar)

---

## 🚀 You're Ready to Deploy!

Choose your preferred platform and follow the steps above. **Vercel is recommended** for the easiest deployment experience.

**Need help?** Let me know which platform you want to use!
