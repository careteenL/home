import { createRouter, createWebHistory } from "vue-router";
import Home from "../views/Home/index.vue";
import About from "../views/About/index.vue";
import Article from "../views/Article/index.vue";
import Production from "../views/Production/index.vue";

const routes = [
  { path: "/", component: Home },
  { path: "/about", component: About },
  { path: "/article", component: Article },
  { path: "/production", component: Production },
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

export default router;
