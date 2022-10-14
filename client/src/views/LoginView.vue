<script setup>
import useAuthentication from "../components/composables/useAuthentication";
import LoginForm from "../components/LoginForm.vue";

useAuthentication();
</script>

<template>
  <LoginForm />
</template>
