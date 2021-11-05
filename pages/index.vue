<template>
  <div>
    <v-img
      src="/images/bg-hero.png"
      gradient="to bottom, rgba(255,255,255,.96), rgba(255,255,255,.97)"
      :max-height="$vuetify.breakpoint.mdAndUp ? '540' : undefined"
      class="py-5 d-flex align-center"
      position="top"
    >
      <Hero />
    </v-img>
    <v-container>
      <Categories class="mt-4" />
      <Recipes class="mt-10" />
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
