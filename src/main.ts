import App from "./App.vue";
import { createApp } from "vue";
import { createRouter, createWebHistory } from "vue-router";

const router = createRouter({
  history: createWebHistory(),
  routes: [
    { path: "/", component: () => import("./views/Home.vue") },
    { path: "/about", component: () => import("./views/About.vue") },
  ],
});

createApp(App).use(router).mount("#app");
