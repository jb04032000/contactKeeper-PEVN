<script setup>
import { storeToRefs } from "pinia";
import { watchEffect } from "vue-demi";
import router from "../router";
import { useAuthStore } from "../stores/auth.store";

const authStore = useAuthStore();
const { state } = storeToRefs(authStore);

watchEffect(() => {
  if (!state.value.isAuthenticated) {
    router.push({ path: "/login" });
  }
});
</script>

<template>
  <main>
    <div
      className="container vw-100 pt-5 d-flex justify-content-center align-items-center h2"
    >
      Hey there! You are on Home page.
    </div>
  </main>
</template>
