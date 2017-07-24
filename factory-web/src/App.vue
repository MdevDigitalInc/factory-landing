<template>
  <main id="app">
    <main-navigation></main-navigation>
    <transition name="fade">
      <router-view></router-view>
    </transition>
  </main>
</template>




<script>
  
  //Local Component registration
  import MainNavigation from './components/shared/navigation.vue';
  
  export default{

    components: {
      'main-navigation' : MainNavigation
    }
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
