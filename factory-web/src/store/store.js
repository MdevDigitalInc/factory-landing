// Base Imports
import Vue from 'vue';
import Vuex from 'vuex';

// [ Shared Functions ]
import * as getters from './actions.js';
import * as mutations from './mutations.js';
import * as actions from './actions.js';

// [ Module Imports ]
import counter from './modules/counter.js';

// Tell Vue to use VueX
Vue.use(Vuex);

// State Bucket..
const state = {
  value: 0
};

// [ Modules ]
const modules = {
  counter
};

// Export package
export default new Vuex.Store({
  state,
  getters,
  mutations,
  actions,
  modules
});
