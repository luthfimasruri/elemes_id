<template>
  <v-app v-scroll="onScroll" dark>
    <v-app-bar :class="{ transparent: scrollTop }" fixed elevate-on-scroll color="white">
      <Navbar />
    </v-app-bar>
    <v-main>
      <Nuxt />
    </v-main>
    <v-footer color="transparent">
      <Footer />
    </v-footer>
  </v-app>
</template>

<script>
export default {
  data() {
    return {
      scrollTop: true,
    }
  },
  methods: {
    onScroll(e) {
      const body = e.target.body
      let document = e.target.documentElement
      document = document.clientHeight ? document : body
      if (document.scrollTop === 0) {
        this.scrollTop = true
      } else {
        this.scrollTop = false
      }
    },
  },
}
</script>
