<template>
  <section class="mdev-main-hero-bkg" aria-role="presentation">
    <div class="mdev-main-hero" :style="heroStyles">
      <div class="mdev-main-wrapper">
       <!-- Main Logo --> 
        <div class="mdev-main-brand">
          <img :src="loadImage('brand-the-factory.svg')">  
        </div>

        <h2 class=" --font-teal">Canada's Biggest Indoor</h2>
        <h1 class=" --font-white">Family Entertainment Centre</h1>
      </div>
    </div>
    <div class="mdev-splash" :style="splashStyle"></div>
  </section>
</template>



<script>

	export default {
    data: function() {
      return{
        heroStyles: {
          backgroundImage: 'url(' + this.loadImage('bkg-hero-main.png') + ')',
          backgroundSize: 'cover',
          backgroundPosition: 'top center'
        },
        splashStyle: {
          backgroundImage: 'url(' + this.loadImage('splash-main.png') + ')'
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

  .mdev-main-brand {
    width: 25%;
    margin: 0 auto 40px auto;
  }

  .mdev-main-hero-bkg {
    background: $factory-red;
    position: relative;
  }

  .mdev-main-hero {
    text-align: center;
    padding-top: 90px;
    position:relative;
    z-index: 10;
    background-position: center top;
    padding-bottom: 70px;
    clip-path: polygon(0 0, 100% 0%, 100% 98%, 0 85%);
    
    @media screen and ($laptop-only-comp) {
      padding-bottom: 230px;
      clip-path: polygon(0 0, 100% 0%, 100% 100%, 0 75%);
    } 

    @media screen and ($tablet-only-comp) {
      padding-bottom: 130px;
      clip-path: polygon(0 0, 100% 0%, 100% 98%, 0 78%);
    }

    @media screen and ($phone-only-comp) {
    }

    @media screen and ($desktop-up-comp) {
      padding-bottom: 360px;
      clip-path: polygon(0 0, 100% 0%, 100% 98%, 0 73%);
    }

    h1 {
      font-weight: 800;
      font-family: $body-font;
      letter-spacing: 7px;
      margin-top: 5px;

      @media screen and ($phone-only-comp) {
        letter-spacing: 2px;
      }
    }

    h2 {
      letter-spacing: 5px;

      @media screen and ($phone-only-comp) {
        letter-spacing: 2px;
      }
    }

  }

  .mdev-splash {
    width: 100%;
    position: absolute;
    padding-top: 17.7%;
    bottom: -2px;
    z-index: 20;
    background-size: 100%;
    background-repeat: no-repeat;
  }

  /*--------------------------------------*/
  /* Main Component Styles                */
  /*--------------------------------------*/
  /*--------------------------------------*/

</style>
