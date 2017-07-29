<template>
  <section class="mdev-main-content">
    <hero-main></hero-main>
    <hero-form></hero-form>
  </section>
</template>




<script>
  
  //Local Component registration
  import HeroMain       from '../modules/hero-main.vue';
  import HeroForm       from '../modules/hero-form.vue';
  
  export default{

    components: {
      'hero-main'       : HeroMain,
      'hero-form'       : HeroForm
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
