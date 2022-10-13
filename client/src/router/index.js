import { createRouter, createWebHistory } from "vue-router";
import HomeView from "../views/HomeView.vue";
import setAuthToken from "../utils/setAuthToken";

import { storeToRefs } from "pinia";
import { useAuthStore } from "../stores/auth.store";
import { computed } from "vue";

if (localStorage.contactKeeperToken) {
  setAuthToken(localStorage.contactKeeperToken);
}

const router = createRouter({
  history: createWebHistory(import.meta.env.BASE_URL),
  routes: [
    {
      path: "/",
      name: "Home",
      component: HomeView,
      meta: {
        requiresAuth: true,
      },
    },
    {
      path: "/about",
      name: "About",
      component: () => import("../views/AboutView.vue"),
    },
    {
      path: "/register",
      name: "Register",
      component: () => import("../views/RegisterView.vue"),
    },
    {
      path: "/login",
      name: "Login",
      component: () => import("../views/LoginView.vue"),
    },
    {
      path: "/:pathMatch(.*)*",
      name: "NoPageFound",
      component: () => import("../views/NoPageFound.vue"),
    },
  ],
});

router.beforeEach((to, from, next) => {
  const authStore = useAuthStore();
  const { state } = storeToRefs(authStore);

  if (to.matched.some((record) => record.meta.requiresAuth)) {
    if (state.value.isAuthenticated) {
      next();
    } else {
      next("/login");
    }
  } else {
    next();
  }
});

export default router;
