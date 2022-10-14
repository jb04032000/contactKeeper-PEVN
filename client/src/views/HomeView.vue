<script setup>
import ContactForm from "../components/ContactForm.vue";
import ContactList from "../components/ContactList.vue";
import useHomepage from "../components/composables/useHomepage";

useHomepage();
</script>

<template>
  <main>
    <div class="container pt-5 vw-100" style="overflowx: hidden">
      <div class="row py-2 px-2 gx-5 gy-3 d-flex justify-content-evenly">
        <div class="col-md-5 col-lg-4">
          <ContactForm />
        </div>
        <div class="col-md-5 col-lg-4 mb-2 pb-3" style="overflowx: hidden">
          <ContactList />
        </div>
      </div>
    </div>
  </main>
</template>
