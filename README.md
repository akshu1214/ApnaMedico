# 🏥 Apna Medico - Healthcare Platform

A comprehensive healthcare platform built with React, featuring AI-powered medical consultation, telemedicine, hospital finder with GPS, and complete healthcare services.

## ✨ Features

### Core Features
- 🤖 **AI Doctor** - 24/7 AI-powered medical consultation using Gemini API
- 🩺 **Symptoms Checker** - Check symptoms and get preliminary diagnosis
- 📹 **Telemedicine** - Video consultation with certified doctors
- 🏥 **Hospital Finder** - Find nearby hospitals using GPS location
- 🧪 **Lab Tests** - Book lab tests and get reports online
- 💊 **Medicine Delivery** - Order medicines with doorstep delivery
- 🔔 **Medication Reminders** - Smart reminders for medications
- 📄 **Health Records** - Secure storage of medical records
- 🚑 **Emergency Services** - 24/7 emergency assistance
- 🛡️ **Health Insurance** - Compare and buy insurance plans

### Additional Features
- 🌐 **Multi-language Support** - English, Hindi, Marathi
- 📱 **Responsive Design** - Mobile, tablet, and desktop optimized
- ♿ **Accessibility** - WCAG compliant with ARIA labels
- 🔍 **Advanced Search** - Filter doctors by specialty, location, rating
- ⭐ **Doctor Ratings** - Verified reviews and ratings
- 📅 **Appointment Booking** - Easy booking with time slot selection
- 💬 **Live Chat** - AI chatbot for instant assistance
- 📊 **Real-time GPS** - Location-based hospital recommendations

## 🚀 Getting Started

### Prerequisites
- Node.js (v16 or higher)
- npm or yarn
- Gemini API Key (for AI chatbot)

### Installation

1. **Clone the repository**
```bash
cd apna-medico
```

2. **Install dependencies**
```bash
npm install
```

3. **Start development server**
```bash
npm run dev
```

4. **Open in browser**
```
http://localhost:5173
```

## 🔑 API Configuration

### Gemini AI Setup

1. Get your Gemini API key from [Google AI Studio](https://makersuite.google.com/app/apikey)
2. When you click on the AI Doctor chatbot, you'll be prompted to enter your API key
3. The API key is stored in memory for the session (not persisted)

**Note:** The AI chatbot will prompt you for the API key on first use.

## 📁 Project Structure

```
apna-medico/
├── src/
│   ├── components/          # React components
│   │   ├── Header.jsx       # Navigation header
│   │   ├── Footer.jsx       # Footer with links
│   │   ├── Hero.jsx         # Hero section
│   │   ├── Services.jsx     # Services grid
│   │   ├── DoctorsList.jsx  # Doctor listings
│   │   ├── HospitalFinder.jsx # Hospital finder with GPS
│   │   ├── AIChatbot.jsx    # AI chatbot interface
│   │   ├── BookingModal.jsx # Appointment booking
│   │   ├── Testimonials.jsx # Patient testimonials
│   │   └── FAQ.jsx          # FAQ section
│   ├── contexts/
│   │   └── LanguageContext.jsx # Multi-language support
│   ├── services/
│   │   └── geminiService.js    # Gemini AI integration
│   ├── utils/
│   │   └── locationService.js  # GPS location utilities
│   ├── data/
│   │   └── mockData.js         # Mock data for demo
│   ├── App.jsx              # Main app component
│   ├── main.jsx             # Entry point
│   └── index.css            # Global styles
├── public/                  # Static assets
├── package.json
└── README.md
```

## 🛠️ Tech Stack

- **Frontend Framework:** React 19
- **Build Tool:** Vite
- **Styling:** TailwindCSS
- **Icons:** Lucide React
- **AI Integration:** Google Gemini API
- **Form Handling:** React Hook Form
- **Animations:** Framer Motion
- **Location Services:** Browser Geolocation API
- **Maps:** OpenStreetMap (Nominatim)

## 🌐 Multi-language Support

The platform supports three languages:
- **English** (en)
- **Hindi** (hi)
- **Marathi** (mr)

Switch languages using the globe icon in the header.

## 📱 Features Breakdown

### AI Doctor Chatbot
- Powered by Google Gemini AI
- 24/7 availability
- Medical information and guidance
- Symptom analysis
- Health recommendations
- **Important:** Always recommends professional consultation for serious concerns

### GPS Hospital Finder
- Real-time location detection
- Distance calculation
- Nearby hospital recommendations
- Emergency services indicator
- Hospital ratings and reviews
- Bed availability
- Specialty filters

### Doctor Booking System
- Search by name or specialty
- Filter by specialty
- View doctor profiles
- Check availability
- Book appointments
- Select time slots
- Form validation

### Responsive Design
- Mobile-first approach
- Tablet optimization
- Desktop layouts
- Touch-friendly buttons (44px minimum)
- Hamburger menu for mobile

## 🔒 Privacy & Security

- No API keys are stored permanently
- Location data is used only for hospital finder
- HTTPS recommended for production
- Form data validation
- Secure health records (future implementation)

## 🚀 Build for Production

```bash
npm run build
```

The build output will be in the `dist/` folder.

## 📝 Available Scripts

- `npm run dev` - Start development server
- `npm run build` - Build for production
- `npm run preview` - Preview production build
- `npm run lint` - Run ESLint

## 🎨 Customization

### Colors
Edit `tailwind.config.js` to customize the color scheme:
```javascript
colors: {
  primary: { ... },
  medical: { ... }
}
```

### Translations
Add or modify translations in `src/contexts/LanguageContext.jsx`

### Mock Data
Update doctors, hospitals, and other data in `src/data/mockData.js`

## 🐛 Known Issues

- CSS warnings for `@tailwind` directives are normal (IDE linting)
- Gemini API requires internet connection
- GPS requires browser permission

## 🔮 Future Enhancements

- Backend API integration
- User authentication
- Payment gateway integration
- Real-time video consultation
- Prescription management
- Medicine inventory system
- Insurance claim processing
- Health analytics dashboard

## 📄 License

This project is built for hackathon purposes.

## 👥 Support

For support or questions:
- Email: support@apnamedico.com
- Phone: +91 1800-123-4567 (24/7)

## 🙏 Acknowledgments

- Google Gemini AI for chatbot capabilities
- Unsplash for medical images
- OpenStreetMap for location services
- Lucide for beautiful icons

---

**Built with ❤️ for better healthcare accessibility**
