<template>
  <div>
    <header>
      <h2>Browse Our Categories</h2>
      <h3 class="primary--text">Recipes</h3>
    </header>
    <v-slide-group
      class="py-5"
      active-class="success"
      next-icon=""
      prev-icon=""
    >
      <v-slide-item v-for="(item, index) in categories" :key="index">
        <v-hover v-slot="{ hover }">
          <v-img
            src="/images/bg-hero.png"
            :class="{ 'elevation-3': hover }"
            class="mx-2 my-3 text-center rounded-xl elevation-0'"
            height="200"
            width="200"
          >
            <div
              class="fill-height px-3 py-6"
              :class="`bg-card${Math.floor(Math.random() * 5)}`"
            >
              <img
                height="64"
                :src="`/images/categories/${item.icon}`"
                :alt="item.title"
              />
              <h3 class="mt-3">{{ item.title }}</h3>
              <div class="grey--text text--darken-1">
                {{ `${item.count} Item${item.count > 1 ? 's' : ''}` }}
              </div>
            </div>
          </v-img>
        </v-hover>
      </v-slide-item>
    </v-slide-group>
    <div class="d-flex">
      <v-spacer></v-spacer>
      <v-btn color="primary" class="mr-2" dark rounded @click="prev">
        <v-icon left dark> mdi-arrow-left-circle </v-icon>
        PREV
      </v-btn>
      <v-btn color="primary" class="mr-0" dark rounded @click="next">
        NEXT
        <v-icon right dark> mdi-arrow-right-circle </v-icon>
      </v-btn>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      model: 0,
      categories: [
        { title: 'Cupcake', count: 35, icon: 'cupcake.png' },
        { title: 'Pizza', count: 15, icon: 'pizza.png' },
        { title: 'Kebab', count: 12, icon: 'kebab.png' },
        { title: 'Salmon', count: 22, icon: 'salmon.png' },
        { title: 'Doughnut', count: 1, icon: 'doughnut.png' },
        { title: 'Taco', count: 40, icon: 'cupcake.png' },
      ],
    }
  },
  methods: {
    prev() {
      document.querySelector('.v-slide-group__prev').click()
    },
    next() {
      document.querySelector('.v-slide-group__next').click()
    },
  },
}
</script>

<style>
</style>