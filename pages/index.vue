<template>
  <div>
    <v-img
      src="/images/bg-hero.png"
      gradient="to bottom, rgba(255,255,255,.96), rgba(255,255,255,.97)"
      :max-height="$vuetify.breakpoint.mdAndUp ? '540' : undefined"
      class="py-5 d-flex align-center"
    >
      <Hero />
    </v-img>
    <v-container>
      <Categories />
      <Recipes />
    </v-container>
  </div>
</template>

<script>
export default {
  data() {
    return {
    }
  },
}
</script>

<style lang="scss">

</style>
