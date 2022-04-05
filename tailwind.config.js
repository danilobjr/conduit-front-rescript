const colors = require('tailwindcss/colors');
const defaultTheme = require('tailwindcss/defaultTheme');

module.exports = {
  content: [
    "./src/**/*.{js,jsx}",
  ],
  theme: {
    colors: {
      ...colors,
      primary: "#477BFF",
      gradientFrom: "#477BFF",
      gradientTo: "#306aff",
      dark: "#282c3c",
      muted: "#aeb3c9",
      // primary: colors.blue,
    },
    fontFamily: {
      'sans': ['DM Sans', ...defaultTheme.fontFamily.sans]
    },
    extend: {},
  },
  plugins: [],
}
