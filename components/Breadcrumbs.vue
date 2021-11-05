<template>
  <v-breadcrumbs nuxt class="pa-0 pt-1" :items="breadcrumbs">
    <template #divider>
      <v-icon>mdi-chevron-right</v-icon>
    </template>
    <template #item="{ item }">
      <v-breadcrumbs-item :to="item.href" :disabled="item.disabled">
        <v-icon v-if="item.name === 'home'" left color="primary">mdi-home</v-icon>
        {{ item.text.toUpperCase() }}
      </v-breadcrumbs-item>
    </template>
  </v-breadcrumbs>
</template>

<script>
import titleCase from 'ap-style-title-case'

export default {
  computed: {
    breadcrumbs() {
      const fullPath = this.$route.fullPath
      const params = fullPath.startsWith('/')
        ? fullPath.substring(1).split('/')
        : fullPath.split('/')
      const crumbs = [{
        href: '/',
        name: 'home',
        text: 'Home',
        disabled: false
      }]
      let path = ''
      params.forEach((param, index) => {
        path = `${path}/${param}`
        const match = this.$router.match(path)
        if (match.name !== null) {
          crumbs.push({
            href: match.path,
            name: match.name,
            text: titleCase(param.replace(/-/g, ' ')),
            disabled: index === params.length - 1,
          })
        }
      })
      return crumbs
    },
  },
}
</script>

<style>
</style>