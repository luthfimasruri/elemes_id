<template>
  <v-container class="d-flex align-center">
    <a href="/">
      <v-img width="150" contain src="/logo.svg" alt="Logo Elemes" />
    </a>
    <v-spacer />
    <template v-for="(item, index) in menu">
      <v-btn v-if="!item.badge" :key="index" text rounded color="grey darken-2" class="mr-2">{{
        item.title
      }}</v-btn>
      <v-badge
        v-else
        :key="index"
        :content="item.badge"
        offset-x="34"
        color="red"
        overlap
        right
      >
        <v-btn text rounded color="grey darken-2" class="mr-2">{{
        item.title
      }}</v-btn>
      </v-badge>
    </template>
    <v-spacer />
    <v-btn text rounded color="grey darken-2" class="mr-2 font-weight-medium">Login</v-btn>
    <v-btn depressed color="primary" dark rounded>Register</v-btn>
  </v-container>
</template>

<script>
export default {
  data() {
    return {
      menu: [
        { title: 'Home', path: '' },
        { title: 'About', path: '' },
        { title: 'Promotion', path: '', badge: 'HOT' },
        { title: 'Blog', path: '' },
        { title: 'Contact Us', path: '' },
      ],
    }
  },
}
</script>

<style>
</style>