<template>
  <div class="hero-image d-flex justify-md-center">
    <div class="hero-image__wrapper">
      <v-sheet class="hero-image__figure rounded-circle pa-8 pa-md-10">
        <v-img
          :width="$vuetify.breakpoint.smAndDown ? 230 : 320"
          src="/images/recipes/image00.png"
          alt="Salad"
          class="rounded-circle grey lighten-2"
          aspect-ratio="1"
          eager
        >
          <template #placeholder>
            <v-row class="fill-height ma-0" align="center" justify="center">
              <v-progress-circular
                indeterminate
                color="grey lighten-5"
              ></v-progress-circular>
            </v-row>
          </template>
        </v-img>
      </v-sheet>
      <nuxt-link to="/">
        <v-hover v-slot="{ hover }">
          <v-card
            :class="[
              `elevation-${hover ? 10 : 5}`,
              $vuetify.breakpoint.smAndDown ? 'sm-and-down' : '',
            ]"
            class="
              hero-image__card
              d-flex
              align-center
              rounded-xl
              pa-4
              transition-swing
            "
          >
            <v-img
              width="60"
              height="60"
              src="/images/recipes/image00.png"
              class="rounded-circle grey lighten-2"
              aspect-ratio="1"
            >
            </v-img>
            <div class="mx-3 mr-md-6">
              <h4 class="grey--text text--darken-4">Green Salad Tomato</h4>
              <div class="grey--text">Tomato</div>
              <Rating class="mt-1" :value="4" />
            </div>
          </v-card>
        </v-hover>
      </nuxt-link>
    </div>
  </div>
</template>

<script>
export default {}
</script>

<style lang="scss">
.hero-image {
  .hero-image__wrapper {
    position: relative;
  }
  .hero-image__figure {
    background-color: rgba(0, 0, 0, 0.05) !important;
  }
  .hero-image__card {
    bottom: 20px;
    left: -60px;
    position: absolute;
    &.sm-and-down {
      // bottom: auto;
      left: auto;
      right: -50px;
    }
  }
}
</style>