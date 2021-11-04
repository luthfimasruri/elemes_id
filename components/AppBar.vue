<template>
  <v-app-bar
    v-scroll="onScroll"
    :class="{ transparent: scrollTop }"
    :fixed="$vuetify.breakpoint.mdAndUp"
    :absolute="$vuetify.breakpoint.smAndDown"
    elevate-on-scroll
    elevation="3"
    color="white"
  >
    <v-container class="d-flex align-center">
      <nuxt-link to="/">
        <v-img width="150" contain src="/logo.svg" alt="Logo Elemes" />
      </nuxt-link>
      <v-spacer />
      <div class="d-none d-md-flex">
        <template v-for="(item, index) in menu">
          <v-btn
            v-if="!item.badge"
            :key="index"
            :to="item.path"
            text
            rounded
            color="grey darken-2"
            class="mr-2"
            >{{ item.title }}</v-btn
          >
          <v-badge
            v-else
            :key="index"
            :content="item.badge"
            offset-x="34"
            color="red"
            overlap
            right
          >
            <v-btn
              text
              rounded
              :to="item.path"
              color="grey darken-2"
              class="mr-2"
              >{{ item.title }}</v-btn
            >
          </v-badge>
        </template>
      </div>
      <v-spacer />
      <v-btn text rounded color="grey darken-2" class="mr-2 font-weight-medium"
        >Login</v-btn
      >
      <v-btn depressed color="primary" dark rounded>Register</v-btn>
    </v-container>
  </v-app-bar>
</template>

<script>
export default {
  data() {
    return {
      scrollTop: true,
      menu: [
        { title: 'Home', path: '/' },
        { title: 'About', path: '/about-us' },
        { title: 'Promotion', path: '/promotion', badge: 'HOT' },
        { title: 'Blog', path: '/blog' },
        { title: 'Contact Us', path: '/contact-us' },
      ],
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

<style>
</style>