<template>
 <div class="mdev-main-wrapper">
    <div class="">
      <h2> Login </h2>
      <input type="text" placeholder="Username">
      <input type="password" placeholder="Password">
      <button> Log In </button>
      <hr>
      <p>
        Don't have an account? <router-link to="/auth/register"> Sign Up! </router-link>
      </p>
    </div>
 </div> 
</template>

<script>
  export default {
   name: "LoginComponent",
   mounted: function() {console.log('Login Here');}
  };
</script>

<style lang="scss" scoped>
  .mdev-main-wrapper {
    padding-top: 200px;
  }
</style>
