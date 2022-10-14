<script setup>
import { RouterView } from "vue-router";
import HeaderView from "./views/HeaderView.vue";
</script>

<template>
  <HeaderView />
  <RouterView />
  <!-- <RouterView v-slot="{ Component }">
    <transition name="slide" mode="out-in">
      <component :is="Component"
    /></transition>
  </RouterView> -->
</template>

<style>
body {
  width: 100%;
  min-height: 100vh;
  overflow-x: hidden !important;
}

.slide-enter-active,
.slide-leave-active {
  transition: all 0.4s ease-out;
}

.slide-enter-to {
  position: absolute;
  right: 0;
}

.slide-enter-from {
  position: absolute;
  right: -100%;
}

.slide-leave-to {
  position: absolute;
  left: -100%;
}

.slide-leave-from {
  position: absolute;
  left: 0;
}
</style>
