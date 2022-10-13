<script setup>
import { ref } from "vue";
import { useAuthStore } from "../stores/auth.store";
import alertMessage from "../utils/alertMessages";
import Notification from "../utils/Notification";

const authStore = useAuthStore();
const { registerUser } = authStore;

const name = ref("");
const email = ref("");
const password = ref("");
const password2 = ref("");

const onSubmit = () => {
  if (password.value !== password2.value) {
    Notification("warning", alertMessage.passwordNotMatch);
  } else {
    registerUser({
      name: name.value,
      email: email.value,
      password: password.value,
    });
  }
};
</script>

<template>
  <div class="container d-flex justify-content-center align-items-center mt-5">
    <div
      class="shadow p-5 d-flex flex-column justify-content-center align-items-center"
    >
      <div class="fs-3 fw-bold mb-4">Register</div>
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
          <div id="emailHelp" class="form-text">
            We'll never share your email with anyone else.
          </div>
        </div>
        <div class="mb-3">
          <label for="Password" class="form-label">Password</label>
          <input
            type="password"
            class="form-control"
            id="Password"
            aria-describedby="Password"
            placeholder="Password"
            v-model="password"
            required
          />
        </div>
        <div class="mb-3">
          <label for="Confirm Password" class="form-label"
            >Confirm Password</label
          >
          <input
            type="password"
            class="form-control"
            id="Confirm_Password"
            aria-describedby="Confirm_Password"
            placeholder="Confirm Password"
            v-model="password2"
            required
          />
        </div>

        <button type="submit" class="btn btn-info">Register</button>
      </form>
    </div>
  </div>
</template>
