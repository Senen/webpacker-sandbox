const { environment } = require('@rails/webpacker')
const coffee =  require('./loaders/coffee')
const vue =  require('./loaders/vue')
// const react =  require('./loaders/react')

environment.loaders.append('vue', vue)
environment.loaders.append('coffee', coffee)
// environment.loaders.append('react', react)
module.exports = environment

const webpack = require('webpack')
environment.plugins.prepend('Provide', new webpack.ProvidePlugin({
  $: 'jquery',
  jQuery: 'jquery'
}))
