<template>
  <v-container class="mt-16">
    <v-row>
      <v-col class="d-flex align-center">
        <v-sheet max-width="430" class="transparent">
          <h1 class="text-h3 md-text-h2 font-weight-medium primary--text">
            Good Food Us Good Mood
          </h1>
          <HeroImage class="d-md-none mt-6" />
          <p class="mt-6 grey--text text--darken-1">
            I would think that conserving our natural resources should be a
            conservative position: Not to waste food, and not to throw away a
            lot of the food that we buy.
          </p>
          <v-btn large elevation="5" elevation-9 color="primary" dark rounded
            >Register Now</v-btn
          >
          <v-btn
            large
            depressed
            rounded
            to="/about-us"
            class="ml-2 grey--text text--darken-3 font-weight-medium"
            >About Us</v-btn
          >
        </v-sheet>
      </v-col>
      <v-col class="d-none d-md-block">
        <HeroImage />
      </v-col>
    </v-row>
  </v-container>
</template>

<script>
export default {}
</script>

<style>
</style>