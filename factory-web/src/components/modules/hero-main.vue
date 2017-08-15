<template>
  <section class="mdev-main-hero-bkg" aria-role="presentation">
    <div class="mdev-main-hero" :style="heroStyles">
    <div class="mdev-main-icons --font-white">
        <a href="https://www.facebook.com/TheFactoryLondon" aria-label="Follow us on Facebook" title="Follow us on Facebook">
          <i class="fa fa-fw fa-facebook"></i>
        </a>
        <a href="https://twitter.com/FactoryLDNont" aria-label="Follow us on Twitter" title="Follow us on Twitter">
          <i class="fa fa-fw fa-twitter"></i>
        </a>
        <a href="https://www.instagram.com/factoryldnont/ " aria-label="Follow us on Instagram" title="Follow us on Instagram">
          <i class="fa fa-fw fa-instagram"></i>
        </a>
      </div>

      <div class="mdev-main-wrapper">
       <!-- Main Logo --> 
        <div class="mdev-main-brand">
          <img :src="loadImage('brand-the-factory.svg')" alt="The Factory London">
        </div>

        <h2 class=" --font-teal">Canada's Biggest Indoor</h2>
        <h1 class=" --font-white">Family Entertainment Centre</h1>
        <a href="http://bit.ly/2vFqJr5" title="The Factory Location" target="_blank">
          <h3 id="signup" class="--font-teal pullup">100 Kellogg Ln, London, Ont</h3>
        </a>
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
  .pullup {
    margin-top: -10px;
    letter-spacing: 3px;

    @media screen and ($phone-only-comp) {
      font-size: 10px;
      margin-top: 0;
    }
  }

  .mdev-main-brand {
    width: 25%;
    margin: 0 auto 40px auto;

    @media screen and ($phone-only-comp) {
      width: 60%;
    }
  }

  .mdev-main-icons {
    text-align: right;
    font-size: 32px;
    position: absolute;
    width: 100%;
    top: 30px;
    padding-right: 30px;
    
    @media screen and ($phone-only-comp) {
      font-size:20px;
      text-align: center!important;
      padding-right: 0;
    }
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
      padding-bottom: 190px;
      clip-path: polygon(0 0, 100% 0%, 100% 98%, 0 78%);
    }

    @media screen and ($phone-only-comp) {
    }

    @media screen and ($desktop-up-comp) {
      padding-bottom: 360px;
      clip-path: polygon(0 0, 100% 0%, 100% 98%, 0 73%);
    }

    @media screen and ( $xl-up-comp ) {
      padding-bottom: 450px;
    }

    h1 {
      font-weight: 500;
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
