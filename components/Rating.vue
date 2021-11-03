<template>
  <div class="d-flex align-center">
    <v-btn
      v-for="star in maxStars"
      :key="star"
      :class="star <= stars ? 'orange--text' : 'grey--text text--lighten-1'"
      class="mr-1"
      height="20"
      width="20"
      text
      small
      fab
      @click="rate(star)"
    >
      <svg
        :class="star <= stars ? 'fill-current' : ''"
        style="height: 20px"
        fill="currentColor"
        stroke="currentColor"
        viewBox="0 0 24 24"
        xmlns="http://www.w3.org/2000/svg"
      >
        <path
          stroke-linecap="round"
          stroke-linejoin="round"
          stroke-width="1.5"
          d="M11.049 2.927c.3-.921 1.603-.921 1.902 0l1.519 4.674a1 1 0 00.95.69h4.915c.969 0 1.371 1.24.588 1.81l-3.976 2.888a1 1 0 00-.363 1.118l1.518 4.674c.3.922-.755 1.688-1.538 1.118l-3.976-2.888a1 1 0 00-1.176 0l-3.976 2.888c-.783.57-1.838-.197-1.538-1.118l1.518-4.674a1 1 0 00-.363-1.118l-3.976-2.888c-.784-.57-.38-1.81.588-1.81h4.914a1 1 0 00.951-.69l1.519-4.674z"
        ></path>
      </svg>
    </v-btn>
  </div>
</template>

<script>
export default {
  props: {
    value: {
      type: Number,
      required: true,
    },
    maxStars: {
      type: Number,
      default: 5,
    },
  },
  data() {
    return {
      stars: this.value,
    }
  },
  watch: {
    value(newGrade) {
      this.stars = newGrade
    },
  },
  methods: {
    rate(star) {
      if (typeof star === 'number' && star <= this.maxStars && star >= 0) {
        this.stars = this.stars === star ? star - 1 : star
      }
      this.$emit('input', this.stars)
    },
  },
}
</script>

<style scoped>
.fill-current {
  fill: currentColor;
}
</style>
