<template>
  <div>
    <div class="mdev-main-wrapper u-text-center">
      <h1 style="margin: 20px 0;"> VUE LOADER TEST</h1>
      <label> Username </label>
      <!-- Input Bound via V-Model -->
      <input style="margin-right: 20px;" type="text" v-model="user.username">
      <label> Email </label>
      <input type="text" v-model="user.email">
      <!-- Submit Click Listener -->
      <button @click="submit"> Submit </button>
      <button @click="submitResource"> Submit Resource </button>
      <button @click="submitCustomAction"> Submit Custom </button>
      <hr style="margin: 30px 0;">
      <div class="u-text-left">
        <!-- fetchData Click Listener -->
        <input type="text" v-model="node">
        <button @click="fetchDataDynamic"> Get Data </button>
        <hr style="margin: 30px 0;">
        <!-- Iterate Array -->
        <li v-for="u in users">
          {{ u.username  }}  |  {{ u.email  }}
        </li>
        <hr>
        <!-- Use Method to Navigate -->
        <button @click="navigateToHome"> Navigate Home </button>
      </div>
    </div> 
  </div>
</template>



<script>
  export default{
    
    data: function(){
      return{
        
        user: {
          username: '',
          email: ''
        },
        users: [],
        //Empty resource object for vue-resource to bind
        resource: {},
        // dataNode points to the database through resource
        node: 'data'
      };
    },
    
    // Submit Method utilizing Firebase IO & vue-resource
    // Vue resource has been setup on Main.js and Webpack.config

    // Method here uses $http.post()[.get()] to create async requests with promises.
    methods:{
      // Submit data via vue-resource AJAX
      submit() {
        // Post Request Sample ( Ajax )
        // Utilizing Global root Path set in Main.js
        this.$http.post('data.json', this.user)
          //.then handles the promise once it returns with something
          .then( response => {
            // Log Response
            console.log( response );
            },
            error => {
              // Log Response
              console.log( error );
          });
      },
      // Submit data via vue-resource API
      submitResource() {
        this.resource.save({}, this.user);
      },
      submitCustomAction() {
        this.resource.saveAlt(this.user);
      },
      fetchData() {
        // Fetch Request Sampe ( Ajax )
        // Utilizing Global Root Path set in Main.js
        this.$http.get('data.json')
          // .then handles the promise once it returns with a response
          .then( response => {
            // Method to transform data to json
            // Returns promise first then data
            return response.json();
          })
          // Extracts data from previous returned promise.then
          .then( data => {
            // Generate Array From Returned Object
            // Firebase is OODB so it will return .json Objects
            
            // Initialize Empty array 
            const resultArray = [];
            // loop through Data keys
            for (let key in data) {
              resultArray.push(data[key]);
            }
            //Set users array to new array
            this.users = resultArray;
            console.log(resultArray);
          });
      },
      fetchDataDynamic() {
        // Dynamic data fetch using dynamic data resource
        // getData is a customAction that pipes the data 
        this.resource.getData( { node: this.node } )
          .then ( response =>  {
            return response.json();
          })
          .then ( data => {
            const resultArray = [];
            for (let key in data) {
              resultArray.push(data[key]);
            }
            this.users = resultArray;
          });
      },
      navigateToHome() {
        // Use push to push route request up the stack
        // this allows for Back/Fowrad to still function
        this.$router.push({path:'/'});
      }
    },
    
    // Created lifecycle hoook
    created () {
      // Custom Actions vue-resource
      const customActions = {
        saveAlt: {
          method: 'POST',
          url: 'alternative.json'
        },
        getData: {
          method: 'GET',
          url: this.node + '.json'
        }
      };
      // Call Vue-Resource extract firebase data.json
      // Also passes customActions
      //----------------------------- 
      // The first argument passed to resource gets appended to the end
      // of the global root path defined in Main.js
      // data.json effectively becomes a data entry in firebase.
      // custom actions allow for quicly creating new data resources.
      // this.resource = this.$resource('data.json', {}, customActions);
      
      // In this implementation the data resource becomes a variable
      // allowing you to dynamically set paths to Data in your app [dataNode].
      this.resource = this.$resource('data.json', {}, customActions);
    }

  };

</script>



<style lang="scss" scoped>

  /*--------------------------------------*/
  /* Lean Import for Components           */
  /*--------------------------------------*/

  /* Disable because they are already linted */
  /* stylelint-disable */
  @import '../../assets/styles/component-lean-main.scss';
  /* stylelint-enable */

  /*--------------------------------------*/
  /* Main Component Styles                */
  /*--------------------------------------*/
  

  /*--------------------------------------*/

</style>
