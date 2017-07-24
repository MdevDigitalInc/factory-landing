<template>
  <section class="mdev-main-hero" :style="heroStyles" aria-role="presentation">
    <h1> App Under Construction </h1>
  </section>
</template>



<script>

	export default {
    data: function() {
      return{
        heroStyles: {
            backgroundColor: "#2f2f2f",
            backgroundSize: 'cover'
        }
      };
    },

    methods:{
      // Get Compiled image Paths
      
      loadImage(path){
        return require('../../assets/images/' + path);
      }
    }
	};

</script>

<style lang="scss" scoped>

  /*--------------------------------------*/
  /* Lean Import for Components           */
  /*--------------------------------------*/
  @import '../../assets/styles/component-lean-main.scss';

  /*--------------------------------------*/
  /* Main Component Styles                */
  /*--------------------------------------*/

  .mdev-main-hero {
    height: 100vh;
    position: relative;
    background-position: -62% -80px;

    @media screen and ('$tablet-up-comp') {
      background-position: center -80px;
    }

    h1{
      width: 100%;
      text-align: center;
      position: relative;
      top: 50%;
      transform: translateY(-50%);
      text-transform: uppercase;
      color: $white;
      font-size: 3.2vw;
    }
  }

  .mdev-main-hero-features {
    width: 100%;
    background: $charcoal-grey;
    padding: 35px 0;
    position: absolute;
    bottom: 0;
    color: $white;
  }

  .mdev-main-hero-heading,
  .mdev-hero-feature-detail {
    width: 100%;
    text-shadow: 1px 1px 3px rgba(0,0,0,0);
    transition: all, .3s;

    @media screen and ('$tablet-up-comp') {
      width: 18%;
    }

    &:hover {
      text-shadow: 1px 1px 3px rgba(0,0,0,.5);
      cursor: pointer;
    }
  }

  .mdev-main-hero-heading {
    letter-spacing: 2px;
    line-height: 33px;
    margin-right: 30px;
  }

  .mdev-hero-feature-detail {
    width: 50%;
  }

  .mdev-hero-feature-desc {
    width: 70%;

    span {
      display: block;
      width: 100%;
      line-height: 22px;
    }
  }

  .mdev-hero-feature-icon {
    width: 30%;

    img {
      width: 100%;
    }
  }

  //Wrapper Hack for Flex
  .mdev-main-wrapper {
    flex-wrap: wrap;

    @media screen and ('$tablet-up-comp') {
      flex-wrap: nowrap;
    }
  }

  // Escaped media query to avoid repetition
  @media screen and ('$phone-only-comp') {
    .mdev-main-hero-heading {
      text-align: center;
      margin-bottom: 30px;
      margin-right: 0;
    }
  }

  /*--------------------------------------*/

</style>
