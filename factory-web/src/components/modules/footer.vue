<template>
  <footer class="mdev-main-footer">
    2017  &copy; The Factory | <a class="fact-link" title="Get in touch!" href="mailto:info@thefactorylondon.ca">info@thefactorylondon.ca</a>
  </footer>
</template>

<script></script>

<style lang="scss" scoped>
	/*-----/

	Global Main
	/-----*/
	@import '../../assets/styles/component-lean-main.scss';

	/*--------------------------------------*/
	/* Main Component Styles                */
	/*--------------------------------------*/
  .mdev-main-footer {
    width: 100%;
    text-align: center;
    color: rgba( 255, 255, 255, 1);
    padding: 5vh 0;
    background-color: #171717;
    letter-spacing: 2px;
    font-weight: 300;
    font-family: $main-font;

    @media screen and ( $phone-only-comp ) {
      font-size: 11px;
    }

    @media screen and ( $xl-up-comp ) {
      font-size: 22px;
    }

    .fact-link {
      color: $factory-white;
      text-decoration: none;
      transition: all, .3s;

      &:hover, 
      &:focus,
      &:active {
        color: $factory-teal;
      }
    }
  }

	/*--------------------------------------*/


</style>
