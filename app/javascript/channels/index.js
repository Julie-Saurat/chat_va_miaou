// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

import { searchCards } from '../components/search';

document.addEventListener('turbolinks:load', () => {
  // Call your JS functions here
  searchCards();
});
