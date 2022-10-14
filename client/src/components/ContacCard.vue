<script setup>
import { useCounterStore } from "../stores/contact.store";

const props = defineProps(["contact"]);
const { id, name, type, email, phone } = props.contact;
const contactStore = useCounterStore();
const { deleteContact, setCurrentContact } = contactStore;
</script>

<template>
  <div class="w-100 pt-2">
    <div class="card shadow border-0">
      <div class="card-header d-flex justify-content-between">
        <span v-if="name" class="fw-bold">{{ name }}</span>
        <span
          v-if="type"
          class="badge text-capitalize"
          :class="[
            type === 'Professional' ? 'bg-warning text-dark' : 'bg-danger ',
          ]"
        >
          {{ type }}
        </span>
      </div>
      <div class="card-body">
        <div class="card-text">
          <div v-if="email">
            <i class="fas fa-envelope-open text-info me-3" />
            {{ email }}
          </div>
          <div v-if="phone">
            <i class="fas fa-phone text-info me-3" />
            {{ phone }}
          </div>
        </div>
        <hr />
        <div class="d-flex justify-content-between">
          <button
            class="btn btn-dark"
            @click="setCurrentContact(props.contact)"
          >
            Edit
          </button>
          <button class="btn btn-danger" @click="deleteContact(id)">
            Delete
          </button>
        </div>
      </div>
    </div>
  </div>
</template>
