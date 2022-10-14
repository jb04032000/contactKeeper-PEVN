<script setup>
import { ref, watchEffect } from "vue";
import { useContectStore } from "../stores/contact.store";

const contactStore = useContectStore();
const { setfilterContacts, clearFilteredContacts } = contactStore;

const search = ref("");

watchEffect(() => {
  if (search.value !== "") {
    setfilterContacts(search.value);
  } else {
    clearFilteredContacts();
  }
});
</script>

<template>
  <div
    class="w-100 mb-4 shadow py-3 px-4 d-flex justify-content-center align-items-center"
  >
    <input
      type="text"
      class="form-control"
      id="search"
      aria-describedby="Search Contact"
      placeholder="Search"
      v-model="search"
      required
    />
  </div>
</template>
