<template>
  <main id="app">
    <transition name="fade">
      <router-view></router-view>
    </transition>
  </main>
</template>




<script>
  export default{
  };
</script>



<style lang="scss">

/*-----/
Global Main
/-----*/
@import './assets/styles/global-main.scss';

/*--------------------------------------*/
/* Main Component Styles                */
/*--------------------------------------*/

.fade-enter-active,
.fade-leave-active {
  transition: opacity .3s;
}

.fade-enter,
.fade-leave-to {
  opacity: 0;
}

</style>
