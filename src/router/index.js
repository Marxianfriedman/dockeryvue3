import { createRouter, createWebHistory } from 'vue-router';
import ListaTareas from '../components/ListaTareas.vue';

const routes = [
  { path: '/', component: ListaTareas }
];

const router = createRouter({
  history: createWebHistory(),
  routes
});

export default router;
