<template>
  <section class="mdev-signup-area"> 
    <div class="mdev-main-wrapper">
      <div class="flex flex-wrap">
        <div class="mdev-hero-form-content">
          <h2 class="--font-teal">Opening</h2>
          <h1>Winter 2018</h1>
          <p>
            Coming soon to London Ontario, a massive indoor amusement park with fun filled activities for all ages!
          </p>
          <p>
            Would you like to be first to see the transformation of the Kellogg's building and get access to exclusive deals?
          </p>
          <h3 class="u-capitalize-initial --font-teal">Subscribe to our e-newsletter</h3>
        </div>
        <div class="mdev-form-column"> 
          <div class="mdev-main-form">
            <img class="mdev-form-brand" :src="loadImage('brand-the-factory.svg')" />
            <h4 class="u-capitalize-initial --font-white">Get exclusive news & deals</h4>
            <form action="//thefactorylondon.us16.list-manage.com/subscribe/post?u=45417d3a149e1a81af62718ef&amp;id=cda16101e2" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
          <!-- Begin MailChimp Signup Form -->
          <div class="mdev-form-container" id="mc_embed_signup">
            <div id="mc_embed_signup_scroll">
            <input type="text" placeholder="First Name" data-required value="" name="FNAME" class="" id="mce-FNAME">
            <input type="email" value="" data-required name="EMAIL" placeholder="Email" class="pushdown" id="mce-EMAIL">
            <div id="mce-responses" class="clear">
            <div class="response" id="mce-error-response" style="display:none"></div>
            <div class="response" id="mce-success-response" style="display:none"></div>
            </div>    <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
              <div style="position: absolute; left: -5000px;" aria-hidden="true"><input type="text" name="b_45417d3a149e1a81af62718ef_cda16101e2" tabindex="-1" value=""></div>
            </div>
          </div>

              <div class="clear"><input type="submit" @click.prevent="join" value="Sign Up" name="subscribe" id="mc-embedded-subscribe" class="mdev-form-button u-uppercase"></div>
          </form>
          <!--End mc_embed_signup-->
          </div>
        </div>
      </div>
    </div>
    <div class="mdev-carabiners">
      <img :src="loadImage('zipline.png')" />
    </div>
  </section>
</template>

<script>

  export default {
    data: function() {
      return {
        user: {
          firstName: '',
          email: ''
        },
        dataSend: {
          email_address: '',
          status: "subscribed",
          merge_fields: {
            FNAME: ''
          }
        }
      };
    },
    methods:{
      // Get Compiled image Paths
      loadImage(path){
        return require('../../assets/images/' + path);
      },
      join() {
        // Clear Any Errors
        this.$validate.clearErrors();
        // Collect Fields
        var formFields = $('[data-required]');
        var emailField = $('input[type="email"]');
      
        // Validate Fields
        if (
          this.$validate.validateFields(formFields, 'Please fill in the required fields') &&
          this.$validate.validateEmail(emailField, 'Please use a valid e-mail address')
        ){ 
         $('#mc-embedded-subscribe-form').submit();
        } else {
          return;
        }
 
      }
    }

  };
</script>


<style lang="scss" scoped>

  /*--------------------------------------*/
  /* Lean Import for Components           */
  /*--------------------------------------*/
  @import '../../assets/styles/component-lean-main.scss';
  .mdev-signup-area {
    position: relative;
    z-index: 30;
    margin-bottom: -10vw;
  }
  
  .mdev-hero-form-content {
    width: 50%;
    padding-left: 16%;
    position: relative;
    top: -3vw;

    @media screen and ( $phone-only-comp ) {
      width: 100%;
      padding: 30px 0 30px 0;
      top: 0;
      text-align: center;
    }

    @media screen and ( $tablet-only-comp ) {
      padding-left: 7%;
    }

    h1,
    h2 {
      font-family: $body-font;
    }

    h1 {
      letter-spacing: 4px;
    }

    h2 {
      letter-spacing: 3px;
      font-weight: 400;
    }

    p {
      font-family: $main-font;
      color: black;
      margin-bottom: 20px;
      font-weight: 300;
    } 
  }

  .mdev-form-column {
    width: 50%;
    position: relative;

    @media screen and ( $phone-only-comp ) {
      width: 100%;
    }
  }

  .mdev-main-form {
    width: 50%;
    background-color: $factory-teal;
    padding: 15px;
    margin: 0 auto;
    position: relative;
    text-align: center;
    top: -15vw;

    @media screen and ( $xl-up-comp ) {
      top: -10vw !important;
    }

    @media screen and ( $phone-only-comp ) {
      top: 0;
      width: 100%;
      margin-bottom: 80px;
    }

    @media screen and ( $tablet-only-comp ) {
      width: 80%;
    }

    h4 {
      font-family: $body-font;
      font-weight: 400;
      lefter-spacing: 15px;
      font-size: 22px;
    }

    input:not([type="submit"]) {
      display: block;
      width: 100%;
      border: none;
      border-bottom: 1px solid black;
      padding-bottom: 4px;
      background: transparent;
      font-family: $main-font;
      font-weight: 300;
      font-size: 20px;
      color: black;

      &:focus {
        outline: none;
      }
    }
    input:placeholder-shown {
      color: black !important;
    }

    .pushdown {
      margin-top: 40px;
    }
  }

  .mdev-form-container {
    background: $factory-white;
    padding: 70px 20px;
    text-align: left;
    margin-top: 15px;
  }

  .mdev-form-brand {
    width: 50%;
    margin: 15px auto;
  }

  .mdev-form-button {
    display: inline-block;
    position: absolute;
    font-family: $body-font;
    background: $factory-teal;
    width: auto;
    color: $white;
    font-size: 23px;
    padding: 10px 45px;
    border: none;
    transition: all, .3s;
    left: 50%;
    transform: translate3d(-50%, -40%, 0);
    -webkit-font-smoothing: subpixel-antialiased;


    @media screen and ( $laptop-only-comp ) {
      letter-spacing: 1px;
      padding: 15px 30px;
    }

    @media screen and ( $phone-only-comp ) {
      font-size: 19px;
      letter-spacing: 1px;
      padding: 15px 30px;
    }

    @media screen and ( $tablet-only-comp ) {
      letter-spacing: 1px;
      padding: 15px 34px;
    }

    &:hover {
      background: #0a6669;
      cursor: pointer;
    }
  }

  .mdev-carabiners {
    position: absolute;
    width: 100%;
    top: 60px;
    z-index: -1;

    @media screen and ( $phone-only-comp ) {
      display: none;
    }

    @media screen and ($laptop-only-comp ) {
      top: 15vw;
    }
    
    @media screen and ($tablet-only-comp ) {
      top: 37vw;
    }

    @media screen and ( $xl-up-comp ) {
      top: -40px;
    }

    img {
      width: 31%;

      @media screen and ($tablet-only-comp) {
        width: 51%;  
      }

      @media screen and ( $xl-up-comp ) {
        width: 40%;
      }
    }
  }

  .mdev-error {
    color: $factory-red !important;
    border-bottom: 1px solid $factory-red !important;
  }

</style>
