<template>
  <section class="mdev-main-content">
    <hero-main></hero-main>
  </section>
</template>




<script>
  
  //Local Component registration
  import HeroMain       from '../modules/hero-main.vue';
  
  export default{

    components: {
      'hero-main'       : HeroMain
    }
  };
</script>



<style lang="scss">

	/*-----/
	Global Main
	/-----*/
	@import '../../assets/styles/component-lean-main.scss';

	/*--------------------------------------*/
	/* Main Component Styles                */
	/*--------------------------------------*/


	/*--------------------------------------*/

</style>
