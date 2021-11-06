<template>
  <div>
    <v-img
      src="/images/bg-pattern.png"
      gradient="to bottom, rgba(255,255,255,.94), rgba(255,255,255,.95)"
      class="
        pt-14
        d-flex
        align-center
        v-image--size-initial v-image--repeat v-image--height-auto
      "
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
    return {}
  },
}
</script>

<style lang="scss">
</style>
