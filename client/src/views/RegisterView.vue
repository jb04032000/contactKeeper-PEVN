<script setup>
import { storeToRefs } from "pinia";
import { onUnmounted, watchEffect, watch } from "vue";
import RegistrationForm from "../components/RegistrationForm.vue";
import router from "../router";
import { useAuthStore } from "../stores/auth.store";
import alertMessage from "../utils/alertMessages";
import Notification from "../utils/Notification";

const authStore = useAuthStore();
const { clearError } = authStore;
const { state } = storeToRefs(authStore);

// onUnmounted(() => {
//   setUser(userInitialState);
// });

watchEffect(() => {
  if (state.value.isAuthenticated) {
    router.push({ path: "/" });
  }
  if (state.value.error && Object.keys(state.value.error).length !== 0) {
    Notification("error", alertMessage.somethingWentWrong);
    clearError();
  }
});
</script>

<template>
  <RegistrationForm />
</template>
