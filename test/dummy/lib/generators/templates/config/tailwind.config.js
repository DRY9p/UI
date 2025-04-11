const defaultTheme = require('tailwindcss/defaultTheme')

module.exports = {
  content: [
    './test/dummy/public/*.html',
    './test/dummy/app/helpers/**/*.rb',
    './test/dummy/app/javascript/**/*.js',
    './test/dummy/app/views/**/*.{erb,haml,html,slim}',
    '/home/cr9co0/projects/exp/UI/app/views/**/*',
    '/home/cr9co0/projects/exp/UI/app/helpers/**/*',
    '/home/cr9co0/projects/exp/UI/app/controllers/**/*',
    '/home/cr9co0/projects/exp/UI/app/javascript/**/*.js'

  ],
  theme: {
    extend: {
      fontFamily: {
        sans: ['Inter var', ...defaultTheme.fontFamily.sans],
      },
    },
  },
  plugins: [
    // require('@tailwindcss/forms'),
    // require('@tailwindcss/typography'),
    // require('@tailwindcss/container-queries'),
  ]
}