// Counter Vue-X Module Example
//
// Modules allow us to abstract out certain portions of the storage into their
// files to keep the store.js size to a minimum.

// State 
const state = {
  counter: 0
};

// Getters
const getters = {
  doubleCounter: state => {
    return state.counter * 2;
  },
  stringCounter: state => {
    return state.counter + ' Clicks';
  }
};

// Mutations
const mutations = {
  increment: (state, payload) => {
    state.counter += payload;
  },
  decrement: (state, payload) => {
    state.counter -= payload;
  }
};

// Actions
const actions = {
  // Context gives access to all methods..
  // including commit.
  increment: (context, payload) => {
    // Async code...
    context.commit('increment', payload);
  },
  // This es6 syntax ({method}) will
  // deconstruct the object and pull only commit
  decrement: ({ commit }, payload) => {
    // Async Code...
    commit('decrement', payload);
  },
  asyncIncrement: ({ commit }, payload) => {
    setTimeout (()=>{
      commit('increment', payload);
    }, 1000);
  }
};

// Export
export default {
  state,
  getters,
  mutations,
  actions
};
