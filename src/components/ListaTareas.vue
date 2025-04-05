<template>
  <div class="lista-tareas">
    <h3>Mis Tareas:</h3>
    <ul>
      <li
        v-for="tarea in tareas"
        :key="tarea.id"
        :class="{ completada: tarea.completada }"
      >
        {{ tarea.texto }}
        <input
          type="checkbox"
          v-model="tarea.completada"
        >
      </li>
    </ul>
  </div>
</template>

<script>
export default {
  props: {
    tareas: {
      type: Array,
      required: true
    }
  }
}
</script>

<style>
.completada {
  text-decoration: line-through;
  color: #888;
}
</style>
