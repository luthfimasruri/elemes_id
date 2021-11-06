<template>
  <div>
    <header class="mb-5">
      <h2>Browse Our Trending</h2>
      <h2 class="primary--text">Recipes</h2>
    </header>
    <v-row class="ma-n2">
      <template v-for="(item, index) in recipes">
        <v-col :key="index" cols="12" md="3" sm="4" class="pa-2">
          <nuxt-link to="/" class="text-decoration-none">
            <v-hover v-slot="{ hover }">
              <v-img
                src="/images/bg-pattern.png"
                :class="{ 'elevation-3': hover }"
                class="v-image--repeat v-image--height-auto rounded-xl elevation-0'"
              >
                <div
                  :class="`bg-card${Math.floor(Math.random() * 5)}`"
                  class="rounded-xl px-4 py-6"
                >
                  <v-img
                    width="100"
                    height="100"
                    class="rounded-lg"
                    :src="`/images/recipes/${item.image}`"
                  ></v-img>
                  <h3 class="mt-3">{{ item.title }}</h3>
                  <div class="grey--text text--darken-1 mb-1">
                    {{ item.category }}
                  </div>
                  <Rating :value="item.rating" />
                </div>
              </v-img>
            </v-hover>
          </nuxt-link>
        </v-col>
      </template>
    </v-row>
    <div class="text-center mt-5">
      <v-btn large elevation-9 color="primary" dark rounded
        >All Recipes <v-icon right>mdi-chevron-right</v-icon></v-btn
      >
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      recipes: [
        {
          title: 'Pizza Paperoni',
          category: 'Pizza',
          rating: 4,
          image: 'image01.png',
        },
        {
          title: 'Pizza Meat',
          category: 'Pizza',
          rating: 3,
          image: 'image02.png',
        },
        {
          title: 'Doner Kebab',
          category: 'Kebab',
          rating: 5,
          image: 'image03.png',
        },
        {
          title: 'Salmon Roll',
          category: 'Salmon',
          rating: 4,
          image: 'image04.png',
        },
        {
          title: 'Cupcake Choco',
          category: 'Cupcake',
          rating: 4,
          image: 'image05.png',
        },
        {
          title: 'Doughnut Milk',
          category: 'Doughnut',
          rating: 5,
          image: 'image06.png',
        },
        {
          title: 'Doughnut Unicorn',
          category: 'Doughnut',
          rating: 4,
          image: 'image07.png',
        },
        {
          title: 'Kathi Kebab',
          category: 'Kebab',
          rating: 1,
          image: 'image08.png',
        },
      ],
    }
  },
}
</script>

<style>
</style>