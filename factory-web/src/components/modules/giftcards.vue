<template>
  <section class="mdev-giftcards" :style="giftStyles">
    <div class="mdev-main-wrapper">
      <div class="flex flex-row flex-hor-between flex-wrap">
         <div class="mdev-gift-cta">
           <h1 class="u-uppercase">
             <span class="u-heading-font">
             Gift Certificates</span></br>
             <span class="u-lowercase">are now avaliable!</span></h1>
             <a
             class="mdev-form-button"
              href="https://fareharbor.com/embeds/book/thefactorylondon/items/71213/calendar/?flow=29907"
              target="_blank"
              onclick="return !(window.FH && FH.open({ shortname: 'thefactorylondon', fallback: 'simple', flow: 29907, view: { item: 71213 } }));">Buy Now</a>
             <p> Purchase and print online </p>
         </div>
         <div class="mdev-gift-art">
            <img :src="loadImage('givegiftfun.png')" />
         </div>
      </div>
    </div>
    <div class="mdev-gift-bow">
      <img :src="loadImage('xmas-bow.png')" />
    </div>
  </section>
</template>

<script>

  export default {
    data: function() {
      return{
        giftStyles: {
          backgroundImage: 'url(' + this.loadImage('bkg-giftcard.png') + ')',
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


	/*-----/
	Global Main
	/-----*/
	@import '../../assets/styles/component-lean-main.scss';

	/*--------------------------------------*/
	/* Main Component Styles                */
	/*--------------------------------------*/
  .mdev-giftcards {
    width: 100%;
    position: relative;
    color: white;
    background-size: cover;
    background-position: right -60px;
    background-repeat: repeat-y;
    z-index: 30;
    margin-bottom: -34vh;
    margin-top: -40px;

    @media screen and ( $tablet-only-comp ) {
      margin-top: -30px;
    }

    @media screen and ( $laptop-up-comp ) {
      margin-top: -10vh;
    }

    p {
      font-size: 22px;
      font-weight: 700;
    }

    .mdev-main-wrapper {
      padding: 10vh 0 35vh;

      @media screen and ( $phone-only-comp ) {
        padding: 15vh 0 45vh;
      }

      @media screen and ( $laptop-only-comp ) {
        width: 78%;
      }

      @media screen and ( $laptop-up-comp ) {
        padding: 20vh 0 35vh;
      }
    }
    h1 {
      line-height: 37px;

      @media screen and ( $phone-only-comp ) {
        line-height: 27px;
        font-size: 28px;
      }

      @media screen and ( $laptop-up-comp ) {
        line-height: 55px;
      }
    }

    .u-lowercase {
      font-weight: 400;
    }
  }
  .u-heading-font {
    font-family: $body-font;
    letter-spacing: 4px;
  }

  .mdev-gift-bow {
    position: absolute;
    right: 0;
    top: 0;
    width: 27%;

    @media screen and ( $laptop-up-comp ) {
      min-width: 300px;
      width: 27%;
    }
    @media screen and ( $phone-only-comp ) {
      width: 53%;
    }

    img {
      width: 100%;
    }
  }
  .mdev-form-button {
    display: inline-block;
    font-family: $body-font;
    text-transform: uppercase;
    margin: 3vh 0 2vh;
    background: $factory-teal;
    width: auto;
    color: $white;
    font-size: 40px;
    padding: 25px 20px 15px;
    line-height: 22px;
    border: none;
    transition: all, .3s;
    -webkit-font-smoothing: subpixel-antialiased;

    @media screen and ( $laptop-up-comp ) {
      margin: 5vh 0 3vh;
    }


    &:hover {
      background: #0a6669;
      cursor: pointer;
    }
  }

  .mdev-gift-cta {
    width: 100%;
    order: 2;
    @media screen and ( $tablet-up-comp ) {
      width: 42%;
      order: 1;
    }
    @media screen and ( $tablet-only-comp ) {
      width: 50%;
    }

    @media screen and ( $phone-only-comp ) {
      text-align: center;
      margin-top: 4vh;
    }
  }

  .mdev-gift-art {
    width: 100%;
    order: 1;

    @media screen and ( $tablet-up-comp ) {
      width: 58%;
      margin: -9vh 0 9vh;
      order: 2;
    }

    @media screen and ( $tablet-only-comp ) {
      margin: 0;
    }

    @media screen and ( $tablet-only-comp ) {
      width: 50%;
    }

    img {
      width: 100%;
    }
  }

</style>
