const defaultTheme = require("tailwindcss/defaultTheme");
const plugin = require("tailwindcss/plugin");

module.exports = {
  content: [
    "./public/*.html",
    "./app/helpers/**/*.rb",
    "./app/components/**/*.rb",
    "./app/javascript/**/*.js",
    "./app/views/**/*.{erb,haml,html,slim}",
    "./app/domains/**/*.{erb,haml,html,slim}",
  ],
  theme: {
    extend: {
      colors: {
        transparent: "transparent",
        current: "currentColor",
        blue: {
          1200: "#11171D",
          1100: "#1A242E",
          1000: "#1D2F3F",
          900: "#204260",
          800: "#0E4B81",
          700: "#0059A7",
          600: "#006FD1",
          500: "#278DE7",
          400: "#52A3EB",
          300: "#7FB5EB",
          200: "#C3D6E9",
          150: "#d8e3ee",
          100: "#E9F0F6",
          75: "#F1F5F9",
          50: "#F8FAFC",
        },
        pink: {
          1200: "#F8FAFC",
          1100: "#89244C",
          1000: "#3F222E",
          900: "#1E1016",
          800: "#512436",
          700: "#6A2540",
          600: "#8c254e",
          500: "#cb3370",
          400: "#E56C9C",
          300: "#c9809e",
          200: "#EAD2DB",
          100: "#f5dee6",
          50: "#FBEFF3",
          25: "#fdf7f9",
        },
        gray: {
          25: "#fafafa",
          150: "#eaeef5",
        },
        score: {
          5: "#166534",
          4: "#0D873A",
          3: "#acce6c",
          2: "#e3e183",
          1: "#ebca65",
          0: "#dc2626",
        },
      },
      fontFamily: {
        sans: ["Inter var", ...defaultTheme.fontFamily.sans],
      },
      boxShadow: {
        up: "0 -4px 8px 1px rgba(0,0,0,0.1)",
      },
      keyframes: {
        slideIn: {
          "0%": { transform: "translateY(-7rem)", opacity: 0 },
          "10%": { transform: "translateY(-7rem)", opacity: 0 },
          "17.5%": { transform: "translateY(0rem)", opacity: 1 },
          "95%": { transform: "translateY(0rem)", opacity: 1 },
          "100%": { transform: "translateY(-7rem)", opacity: 0 },
        },
        loadIn: {
          "0%": { opacity: 0 },
          "90%": { opacity: 0 },
          "100%": { opacity: 1 },
        },
      },
      animation: {
        "slide-in": "slideIn 10s ease-in-out normal forwards",
        "load-in": "loadIn 1500ms ease-out normal forwards",
      },
    },
  },
  plugins: [
    require("@tailwindcss/forms"),
    require("@tailwindcss/aspect-ratio"),
    require("@tailwindcss/typography"),
  ],
};
