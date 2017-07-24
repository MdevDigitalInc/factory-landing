<template>
  <div>
    <p>Counter is: {{ doubleCounter }}</p>
    <p>Number Of Clicks: {{ stringCounter }}</p>
  </div>
</template>

<script>
    // Import MapGetters Helper
    // Maps each getter as a function inside
    // of the Computed property.
    // These getters get brought in as functions 
    // with the same name as the Getters.

    // Using the "..." spread operator will pull out
    // the objects from mapGetters
    import { mapGetters } from 'vuex';
    export default {
      computed: {
        ...mapGetters([
          'doubleCounter',
          'stringCounter'
        ])
      }
    };
</script>
