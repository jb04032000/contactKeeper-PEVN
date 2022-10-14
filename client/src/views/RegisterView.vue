<script setup>
import useAuthentication from "../components/composables/useAuthentication";
import RegistrationForm from "../components/RegistrationForm.vue";

useAuthentication();
</script>

<template>
  <RegistrationForm />
</template>
