<template>
  <section class="mdev-main-content">
    <hero-main></hero-main>
    <hero-form></hero-form>
    <factory-vision></factory-vision>
    <activities></activities>
    <opening-section></opening-section>
  </section>
</template>




<script>
  
  //Local Component registration
  import HeroMain       from '../modules/hero-main.vue';
  import HeroForm       from '../modules/hero-form.vue';
  import FactoryVision  from '../modules/factory-vision.vue';
  import Activities     from '../modules/activities.vue';
  import OpeningSection  from '../modules/opening.vue';
  
  export default{

    components: {
      'hero-main'       : HeroMain,
      'hero-form'       : HeroForm,
      'factory-vision'  : FactoryVision,
      'opening-section' : OpeningSection,
      'activities'      : Activities
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
