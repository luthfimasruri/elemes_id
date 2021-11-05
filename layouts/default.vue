<template>
  <v-app dark>
    <AppBar />
    <v-main>
      <Nuxt />
    </v-main>
    <Footer />
    <BottomNav />
  </v-app>
</template>

<script>
import Vue from "vue";
import global from "@/mixins/global.js";

Vue.mixin(global);
export default {
  
}
</script>
