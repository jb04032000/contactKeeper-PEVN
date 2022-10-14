<script setup>
import useContactForm from "../components/composables/useContactForm";
const { onSubmit, clearCurrentContact, state, type, phone, email, name } =
  useContactForm();
</script>

<template>
  <div className="d-flex flex-column justify-content-center shadow py-4 px-4 ">
    <div className="fs-3 fw-bold mb-4 h2 m-auto">
      {{ state.currentContact ? "Update Contact" : "Add Contact" }}
    </div>
    <form class="fw-bold" @submit.prevent="onSubmit">
      <div class="mb-3">
        <label for="Name" class="form-label">Name</label>
        <input
          type="text"
          class="form-control"
          id="Name"
          aria-describedby="Name"
          placeholder="Enter Name"
          v-model="name"
          required
        />
      </div>

      <div class="mb-3">
        <label for="Email" class="form-label">Email</label>
        <input
          type="email"
          class="form-control"
          id="Email"
          aria-describedby="Email"
          placeholder="Enter Email"
          v-model="email"
          required
        />
      </div>

      <div class="mb-3">
        <label for="Phone" class="form-label">Phone</label>
        <input
          type="Phone"
          class="form-control"
          id="Phone"
          aria-describedby="Phone"
          placeholder="Enter Phone"
          v-model="phone"
          required
        />
      </div>

      <div class="mb-3">
        <label class="form-label">Contact type</label>
        <br />
        <div class="form-check form-check-inline">
          <input
            class="form-check-input"
            type="radio"
            name="ContactType"
            id="Personal"
            value="Personal"
            v-model="type"
          />
          <label class="form-check-label" for="Personal">Personal</label>
        </div>
        <div class="form-check form-check-inline">
          <input
            class="form-check-input"
            type="radio"
            name="ContactType"
            id="Professional"
            value="Professional"
            v-model="type"
          />
          <label class="form-check-label" for="Professional"
            >Professional</label
          >
        </div>
      </div>

      <div class="d-flex justify-content-between">
        <button type="submit" class="btn btn-info">
          {{ state.currentContact ? "Update Contact" : "Add Contact" }}
        </button>
        <button
          v-if="state.currentContact"
          @click="clearCurrentContact()"
          class="btn btn-warning"
        >
          Cancel update
        </button>
      </div>
    </form>
  </div>
</template>
