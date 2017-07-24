<template>
  <nav class="mdev-main-nav" aria-role="navigation" role="navigation">
    <div class="mdev-main-wrapper flex flex-nowrap flex-hor-between flex-vert-end">
      <a :href="homeLink" :title="homeTitle" class="mdev-main-nav-branding">
        <img :src="loadImage(homeBrand)">
      </a>
      <div class="mdev-main-nav-links u-uppercase">
        <router-link 
          v-for="link in links" 
          :to="link.route" 
          active-class="--active" 
          :title="link.linkTitle" 
          aria-role="menuitem" 
          exact>
            {{ link.linkName  }}
       </router-link> 
      </div>
    </div>
    <!--
    <button @click="change()">CHANGE</button>
    -->
  </nav>
</template>



<script>
  export default{
    // <router-link> element is a custom element derived from vue-router. use :to - to bind. 
    data: function(){
      return{
        // Refer to routes.js file for available routes.
        links: [
          {
            linkName: 'Link 1',
            linkTitle: 'Link 1',
            route: '/'
          },
          {
            linkName: 'Link 2',
            linkTitle: 'Link 2',
            route: '/home1'
          },
          {
            linkName: 'Link 3',
            linkTitle: 'Link 3',
            route: '/home2'
          }
        ],

        homeLink: '#',
        homeTitle: 'Home',
        homeBrand: 'main-logo.png'
      };
    },

    mounted: function(){
      $(document).scroll(function(event) {
        var distanceTop = $(window).scrollTop();

        if(distanceTop >= 250) {
          $('.mdev-main-nav').addClass('mdev-main-nav-visibility');
        }
        else {
          $('.mdev-main-nav').removeClass('mdev-main-nav-visibility');
        }
      });
    },

    methods: {
      loadImage(path){
        return require('../../assets/images/' + path);
      },
      // Change Language METHOD
      change () {
        let current = this.$locale.current();
        if (current === 'en') {
          this.$locale.change('pt');
        } else {
          this.$locale.change('en');
        }
      }
    }
  };

</script>



<style lang="scss" scoped>

  /*--------------------------------------*/
  /* Lean Import for Components           */
  /*--------------------------------------*/

  /* Disable because they are already linted */
  /* stylelint-disable */
  @import '../../assets/styles/component-lean-main.scss';
  /* stylelint-enable */

  /*--------------------------------------*/
  /* Main Component Styles                */
  /*--------------------------------------*/
  .mdev-main-nav {
    width: 100%;
    position: fixed;
    top: 0;
    left: 0;
    padding: 35px 0;
    z-index: 10;
    transition: all, .3s;
    background: rgba(51,51,51,0);

    img{
      width: 100%;
    }

    .mdev-main-nav-branding {
      max-width: 83px;
      min-width: 73px;
      height: auto;
      width: 10%;
      opacity: 1;
      transition: all, .3s;

      &:hover {
        cursor: pointer;
        opacity: .8;
      }
    }

    .mdev-main-nav-links {
      color: $white;
      font-weight: $heading-weight;
    }

    .mdev-main-nav-links a {
      margin: 0 10px;
      text-shadow: 1px 1px 3px rgba(0,0,0,0);
      transition: all, .3s;

      @media screen and ('$tablet-up-comp') {
        margin: 0 30px;
      }

      &:hover {
        text-shadow: 1px 1px 3px rgba(0,0,0,.6);
      }

      &:last-child {
        margin-right: 0;
      }
    }

    .--active {
      color: $escavator-yellow;
    }
  }

  .mdev-main-nav-visibility {
    background: rgba(51,51,51,.6);

    &:hover {
      background: rgba(51,51,51,.9);
    }
  }

  /*--------------------------------------*/

</style>
