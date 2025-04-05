<template>
  <div class="contador">
    <h3>Contador: {{ count }}</h3>
    <button @click="increment">+1</button>
    <button @click="decrement">-1</button>
  </div>
</template>

<script>
export default {
  props: {
    inicial: {  // <<- Asegúrate que sea "inicial" (sin la 'd' final)
      type: Number,
      default: 0
    }
  },
  data() {
    return {
      count: this.inicial
    }
  },
  methods: {
    increment() {
      this.count++
      this.$emit('incrementado', this.count)
    },
    decrement() {
      this.count--
    }
  }
}
</script>
