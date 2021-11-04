<template>
  <v-footer color="transparent" class="px-0 mt-6">
    <v-container>
      <div class="bg-footer rounded-xl body-2">
        <v-row>
          <v-col cols="12" md="4" sm="6">
            <div class="px-8 pr-md-0 pt-6">
              <nuxt-link to="/">
                <v-img width="150" contain src="/logo.svg" alt="Logo Elemes" />
              </nuxt-link>
              <p class="mt-5 grey--text text--darken-1">
                Jl. Prof. DR. Satrio No.7, RT.3/RW.3, Karet Kuningan, Kecamatan
                Setiabudi, Kota Jakarta Selatan, Daerah Khusus Ibukota Jakarta
                12950
              </p>
              <div>
                <v-hover v-slot="{ hover }">
                  <v-btn
                    color="primary"
                    :text="!hover"
                    depressed
                    fab
                    small
                    href="mailto:elemesid@gmail.com"
                  >
                    <v-icon>mdi-email-outline</v-icon>
                  </v-btn>
                </v-hover>
                <v-hover v-slot="{ hover }">
                  <v-btn
                    color="primary"
                    :text="!hover"
                    depressed
                    fab
                    small
                    href="tel:+6288811112222"
                  >
                    <v-icon>mdi-phone-outline</v-icon>
                  </v-btn>
                </v-hover>
                <v-hover v-slot="{ hover }">
                  <v-btn color="primary" :text="!hover" depressed fab small>
                    <v-icon>mdi-instagram</v-icon>
                  </v-btn>
                </v-hover>
              </div>
            </div>
          </v-col>
          <v-col cols="12" md="2" sm="6">
            <div class="px-8 px-md-0 pt-6">
              <h2 class="mb-6 font-weight-medium">Categories</h2>
              <template v-for="(item, index) in menuCategories">
                <v-hover v-slot="{ hover }" :key="index">
                  <nuxt-link
                    :to="item.path"
                    :class="{ 'primary--text': hover }"
                    class="
                      d-block
                      py-1
                      text-decoration-none
                      grey--text
                      text--darken-1
                    "
                    >{{ item.title }}</nuxt-link
                  >
                </v-hover>
              </template>
            </div>
          </v-col>
          <v-col cols="12" md="2" sm="6">
            <div class="px-8 px-md-0 pt-6">
              <h2 class="mb-6 font-weight-medium">About Us</h2>
              <template v-for="(item, index) in menuAboutUs">
                <v-hover v-slot="{ hover }" :key="index">
                  <nuxt-link
                    :to="item.path"
                    :class="{ 'primary--text': hover }"
                    class="
                      d-block
                      py-1
                      text-decoration-none
                      grey--text
                      text--darken-1
                    "
                    >{{ item.title }}</nuxt-link
                  >
                </v-hover>
              </template>
            </div>
          </v-col>
          <v-col cols="12" md="4" sm="6">
            <div class="px-8 pl-md-0 pt-6">
              <h2 class="mb-6 font-weight-medium">Newsletter</h2>
              <p class="grey--text text--darken-1">
                Get now free 50% discount for alll products on your first order
              </p>
              <div class="d-flex mb-3">
                <v-text-field
                  placeholder="Email"
                  outlined
                  height="40"
                  dense
                  type="email"
                  hide-details
                  class="rounded-l-lg rounded-r-0"
                ></v-text-field>
                <v-btn
                  depressed
                  color="primary"
                  height="40"
                  class="rounded-l-0 rounded-r-lg"
                  >SEND</v-btn
                >
              </div>
              <div class="d-flex align-center">
                <v-hover v-slot="{ hover }">
                  <a
                    class="text-decoration-none py-1"
                    href="mailto:elemesid@gmail.com"
                    ><v-icon color="primary">mdi-email-outline</v-icon>
                    <span
                      :class="{ 'primary--text': hover }"
                      class="grey--text text--darken-1"
                      >elemesid@gmail.com</span
                    ></a
                  >
                </v-hover>
              </div>
              <div class="d-flex align-center">
                <v-hover v-slot="{ hover }">
                  <a class="text-decoration-none py-1" href="tel:+6288811112222"
                    ><v-icon color="primary">mdi-phone-outline</v-icon>
                    <span
                      :class="{ 'primary--text': hover }"
                      class="grey--text text--darken-1"
                      >0888 1111 2222</span
                    ></a
                  >
                </v-hover>
              </div>
            </div>
          </v-col>
        </v-row>
      </div>
      <div class="text-center pt-8 body-2 grey--text">
        <span
          >&copy; {{ new Date().getFullYear() }}
          <a href="/" class="text-decoration-none">Elemes.id</a> All rights
          reserved</span
        >
      </div>
    </v-container>
  </v-footer>
</template>

<script>
export default {
  data() {
    return {
      menuCategories: [
        { title: 'Cupcake', path: '/' },
        { title: 'Pizza', path: '/' },
        { title: 'Kebab', path: '/' },
        { title: 'Salmon', path: '/' },
        { title: 'Doughnut', path: '/' },
      ],
      menuAboutUs: [
        { title: 'About Us', path: '/' },
        { title: 'FAQs', path: '/' },
        { title: 'Report Problem', path: '/' },
      ],
    }
  },
}
</script>

<style lang="scss">
.bg-footer {
  background: rgba(234, 238, 250, 0.4);
}
</style>