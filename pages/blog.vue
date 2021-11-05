<template>
  <div>
    <v-img
      src="/images/bg-hero.png"
      gradient="to bottom, rgba(255,255,255,.96), rgba(255,255,255,.97)"
      :max-height="$vuetify.breakpoint.mdAndUp ? '200' : '200'"
      class="pt-14 pb-5 d-flex align-center"
      position="top"
    >
      <v-container>
        <h1>Blog</h1>
        <Breadcrumbs />
      </v-container>
    </v-img>
    <v-container>
      <v-card height="400" class="mt-6">
        Lorem, ipsum dolor sit amet consectetur adipisicing elit. Laboriosam
        odio ipsa repellendus. Libero consequatur fugiat iste repellat, sint
        laudantium odio dolore sequi ab, tempora ut est dolorum nisi labore
        commodi?
      </v-card>
    </v-container>
  </div>
</template>

<script>
export default {
  data() {
    return {}
  },
  created() {
  },
}
</script>

<style lang="scss">
</style>
