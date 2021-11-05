<template>
<v-img
      src="/images/bg-hero.png"
      gradient="to bottom, rgba(255,255,255,.96), rgba(255,255,255,1)"
      class="pt-14"
      position="top"
      contain
    >
  <v-container class="d-flex justify-center">
    <v-img
      src="/404/bg-robot.svg"
      class="py-5 d-flex align-center"
      max-width="900"
      contain
    >
      <v-row>
        <v-col cols="12" sm="6" class="d-flex justify-center justify-sm-end">
          <v-img
            class="mx-3"
            :max-width="$vuetify.breakpoint.smAndUp ? 200 : 150"
            src="/404/robot.svg"
          ></v-img>
        </v-col>
        <v-col
          cols="12"
          sm="6"
          class="d-flex align-center justify-center justify-sm-start"
        >
          <div class="mx-3 text-center">
            <div class="text-h2 text-sm-h1 font-weight-medium">Oops!</div>
            <div class="text-h6 text-sm-h5 mt-4 font-weight-medium">
              {{ error.statusCode === 404 ? pageNotFound : otherError }}
            </div>
            <v-btn to="/" color="primary" large rounded class="mt-6">
              <v-icon left>mdi-arrow-left-circle</v-icon>
              GO BACK HOME</v-btn
            >
          </div>
        </v-col>
      </v-row>
    </v-img>
  </v-container>
</v-img>
</template>

<script>
export default {
  layout: 'empty',
  props: {
    error: {
      type: Object,
      default: null,
    },
  },
  data() {
    return {
      pageNotFound: '404 Page Not Found',
      otherError: 'An error occurred',
    }
  },
  head() {
    const title =
      this.error.statusCode === 404 ? this.pageNotFound : this.otherError
    return {
      title,
    }
  },
}
</script>

<style scoped>
h1 {
  font-size: 20px;
}
</style>
