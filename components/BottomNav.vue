<template>
  <v-bottom-navigation
    v-if="$vuetify.breakpoint.smAndDown"
    fixed
    :value="value"
    color="primary"
    grow
  >
    <v-btn>
      <span>Home</span>
      <v-icon>mdi-home-outline</v-icon>
    </v-btn>

    <v-btn>
      <span>Discounts</span>
      <v-icon>mdi-tag-text-outline</v-icon>
    </v-btn>

    <v-btn>
      <span>Others</span>
      <v-icon>mdi-menu</v-icon>
    </v-btn>
  </v-bottom-navigation>
</template>

<script>
export default {
  data() {
    return {
      value: 0,
    }
  }
}
</script>

<style>

</style>