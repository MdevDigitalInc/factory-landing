<template>
  <div class="mdev-main-wrapper">
    <h2>Register</h2>

    <input type="email" placeholder="Email" >
    <input type="text" placeholder="Username" >
    <input type="password" placeholder="Password" >
    <button>Register</button>
    <hr>

    <p>
      Already have an account? <router-link to="/auth/login">Login! </router-link>
    </p>
  </div>
</template>

<script>
  export default {
   name: "RegComponent" 
  };
</script>

<style lang="scss" scoped>
  .mdev-main-wrapper {
    padding-top: 200px;
  }
</style>
