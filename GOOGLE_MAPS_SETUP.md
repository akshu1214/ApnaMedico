# 🗺️ Google Maps API Setup Guide

## 📋 Quick Setup (5 minutes)

### Step 1: Get Your API Key

1. **Go to Google Cloud Console**
   - Visit: https://console.cloud.google.com/

2. **Create/Select Project**
   - Click "Select a project" → "New Project"
   - Name it: "Apna Medico"
   - Click "Create"

3. **Enable Required APIs**
   - Go to "APIs & Services" → "Library"
   - Search and enable:
     - ✅ **Maps JavaScript API**
     - ✅ **Places API**

4. **Create API Key**
   - Go to "APIs & Services" → "Credentials"
   - Click "Create Credentials" → "API Key"
   - Copy your API key (looks like: `AIzaSyD...`)

5. **Secure Your API Key** (Important!)
   - Click on your API key
   - Under "Application restrictions":
     - Select "HTTP referrers"
     - Add: `http://localhost:*/*` (for development)
     - Add: `https://yourdomain.com/*` (for production)
   - Under "API restrictions":
     - Select "Restrict key"
     - Choose: Maps JavaScript API, Places API
   - Click "Save"

### Step 2: Add API Key to Your Project

1. **Create .env file**
   ```bash
   # In your project root
   cp .env.example .env
   ```

2. **Add your API key**
   ```env
   VITE_GOOGLE_MAPS_API_KEY=AIzaSyD_your_actual_key_here
   ```

3. **Restart dev server**
   ```bash
   npm run dev
   ```

---

## 💰 Pricing (Don't Worry - It's Free!)

### Free Tier:
- ✅ **$200 monthly credit** (for new users)
- ✅ **28,000 requests/month** free
- ✅ More than enough for development & small apps

### After Free Tier:
- Places API: $17 per 1,000 requests
- Maps JavaScript API: $7 per 1,000 loads

**Example Usage:**
- 100 users/day searching hospitals = ~3,000 requests/month
- **Cost: $0** (within free tier!)

---

## 🔒 Security Best Practices

1. **Never commit .env to Git**
   - Already in .gitignore
   - Keep API key secret

2. **Use HTTP Referrer Restrictions**
   - Prevents unauthorized use
   - Set in Google Cloud Console

3. **Monitor Usage**
   - Check Google Cloud Console regularly
   - Set up billing alerts

---

## 🧪 Testing the Integration

### After Setup:

1. **Open your app**: http://localhost:5173
2. **Go to "Find Nearby Hospitals"**
3. **Click "Use My Location"**
4. **Allow location permission**
5. **See real hospitals appear!**

### What You'll See:
- ✅ Real hospital names from Google Maps
- ✅ Actual addresses
- ✅ Real ratings & reviews
- ✅ Accurate distances
- ✅ Phone numbers
- ✅ Opening hours

---

## 🐛 Troubleshooting

### "API key not found"
- Check .env file exists
- Verify key is correct
- Restart dev server

### "No hospitals found"
- Check if you're in a populated area
- Increase search radius
- Verify APIs are enabled in Google Cloud

### "CORS error"
- This is normal for direct API calls
- The app uses Places Service (no CORS issues)
- Make sure Maps JavaScript API is loaded

---

## 📊 Fallback Behavior

If Google Maps API is not configured:
- ✅ App still works
- ✅ Shows mock hospital data (Pune, India)
- ✅ No errors or crashes
- ✅ Graceful degradation

---

## 🚀 You're All Set!

Once you add your API key, the app will:
1. Detect your real GPS location
2. Search for actual hospitals nearby
3. Show accurate distances
4. Display real ratings & reviews
5. Work anywhere in the world!

**Need help? Check the console for detailed logs.**
