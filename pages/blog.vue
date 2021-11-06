<template>
  <div>
    <v-img
      src="/images/bg-hero.png"
      gradient="to bottom, rgba(255,255,255,.94), rgba(255,255,255,.95)"
      :max-height="$vuetify.breakpoint.mdAndUp ? '200' : '200'"
      class="pt-14 pb-5 d-flex align-center"
      position="top"
    >
      <v-container>
        <h1>Blog</h1>
        <Breadcrumbs />
      </v-container>
    </v-img>
    <v-container class="mt-7">
      <v-row>
        <v-col v-for="index in 9" :key="index">
          <v-card rounded="xl" class="mx-auto" max-width="374">
            <template slot="progress">
              <v-progress-linear
                color="deep-purple"
                height="10"
                indeterminate
              ></v-progress-linear>
            </template>

            <v-img
              height="250"
              src="https://cdn.vuetifyjs.com/images/cards/cooking.png"
            ></v-img>

            <v-card-title>Title Goes Here</v-card-title>

            <v-card-text>
              <v-row align="center" class="mx-0">
                <div class="d-flex align-center mr-3">
                  <v-icon size="20" class="mr-1">mdi-account-outline</v-icon>
                  John Doe
                </div>
                <div class="d-flex align-center">
                  <v-icon size="20" class="mr-1">mdi-clock-outline</v-icon>
                  November 6, 2021
                </div>
              </v-row>
              <div  class="mt-6">
                Lorem ipsum dolor sit amet consectetur adipisicing elit. Nam
                quas inventore nulla commodi nisi est explicabo ipsa placeat
                quisquam perferendis, accusamus laudantium a minima, aliquam
                incidunt similique blanditiis quibusdam rerum.
              </div>
            </v-card-text>

            <v-divider class="mx-4"></v-divider>

            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn color="deep-purple lighten-2" text>
                Read More
                <v-icon right>mdi-arrow-right</v-icon>
              </v-btn>
            </v-card-actions>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </div>
</template>

<script>
export default {
  data() {
    return {}
  },
  created() {},
}
</script>

<style lang="scss">
</style>
