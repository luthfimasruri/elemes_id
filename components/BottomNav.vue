<template>
  <v-bottom-navigation
    v-if="$vuetify.breakpoint.smAndDown"
    fixed
    :value="value"
    color="primary"
    grow
  >
    <v-btn to="/">
      <span>Home</span>
      <v-icon>mdi-home-outline</v-icon>
    </v-btn>

    <v-btn to="/promotion">
      <span>Promotion</span>
      <v-icon>mdi-tag-text-outline</v-icon>
    </v-btn>

    <v-menu top offset-y rounded="xl">
      <template #activator="{ on, attrs }">
        <v-btn v-bind="attrs" v-on="on">
          <span>Others</span>
          <v-icon>mdi-menu</v-icon>
        </v-btn>
      </template>

      <v-list>
        <v-list-item v-for="(item, index) in menuOthers" :key="index" :to="item.path">
          <v-list-item-icon>
            <v-icon v-text="item.icon"></v-icon>
          </v-list-item-icon>
          <v-list-item-title>{{ item.title }}</v-list-item-title>
        </v-list-item>
      </v-list>
    </v-menu>
  </v-bottom-navigation>
</template>

<script>
export default {
  data() {
    return {
      value: 0,
      menuOthers: [
        { title: 'Blog', path: '/blog', icon: 'mdi-newspaper-variant-outline' },
        { title: 'About Us', path: '/about-us', icon: 'mdi-information-outline' },
        { title: 'Contact Us', path: '/contact-us', icon: 'mdi-account-box-outline' },
      ],
    }
  },
}
</script>

<style>
</style>