<script setup>
import useContactList from "./composables/useContactList";
import ContacCard from "./ContacCard.vue";
import ContacFilter from "./ContacFilter.vue";

const { contacts } = useContactList();
</script>

<template>
  <ContacFilter v-if="contacts" />
  <transition name="switch" mode="out-in">
    <div>
      <transition-group name="list" appear>
        <ContacCard
          v-if="contacts"
          v-for="contact in contacts"
          :key="contact?.id"
          :contact="contact"
        />
      </transition-group>
    </div>
  </transition>
</template>

<style scoped>
/* list transitions */
.list-enter-from,
.list-leave-to {
  opacity: 0;
  transform: scale(0.6);
}
.list-enter-to,
.list-leave-from {
  opacity: 1;
  transform: scale(1);
}
.list-enter-active {
  transition: all 0.4s ease;
}
.list-leave-active {
  transition: all 0.4s ease;
  position: absolute;
}

.list-move {
  transition: all 0.3s ease;
}

/* switch transitions */
.switch-enter-from,
.switch-leave-to {
  opacity: 0;
  transform: translateY(20px);
}
.switch-enter-active,
.switch-leave-active {
  transition: all 0.5s ease;
}
</style>
