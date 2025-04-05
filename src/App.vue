<template>
  <div class="app">
    <h1>{{ titulo }}</h1>
    <Contador
      :inicial="5"
      @incrementado="handleIncremento"
    />
    <ListaTareas :tareas="tareas" />
    <div v-if="mostrarExtra">
      <p>Este mensaje solo aparece si mostrarExtra es true</p>
      <button @click="toggleMostrarExtra">Ocultar</button>
    </div>
    <button v-else @click="toggleMostrarExtra">Mostrar más</button>
  </div>
</template>

<script>
import Contador from './components/Contador.vue'
import ListaTareas from './components/ListaTareas.vue'

export default {
  components: { Contador, ListaTareas },
  data() {
    return {
      titulo: 'Mi App Vue Básica',
      mostrarExtra: false,
      tareas: [
        { id: 1, texto: 'Aprender Vue', completada: true },
        { id: 2, texto: 'Practicar directivas', completada: false },
        { id: 3, texto: 'Crear componentes', completada: false }
      ]
    }
  },
  methods: {
    toggleMostrarExtra() {
      this.mostrarExtra = !this.mostrarExtra
    },
    handleIncremento(nuevoValor) {
      console.log('El contador llegó a:', nuevoValor)
    }
  }
}
</script>

<style>
.app {
  font-family: Arial;
  max-width: 600px;
  margin: 0 auto;
  padding: 20px;
}
</style>
