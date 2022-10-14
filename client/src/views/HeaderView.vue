<script setup>
import { storeToRefs } from "pinia";
import { useAuthStore } from "../stores/auth.store";

const authStore = useAuthStore();
const { logOut } = authStore;
const { state } = storeToRefs(authStore);
</script>

<template>
  <header>
    <nav class="navbar navbar-expand-lg py-3 navbar-dark bg-dark">
      <div class="container">
        <RouterLink to="/" class="navbar-brand">
          <img
            src="https://www.shutterstock.com/image-vector/letter-s-icon-logo-design-600w-1391205323.jpg"
            height="40"
            width="40"
            class="me-2 rounded"
          />
          Contact Keeper
        </RouterLink>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0"></ul>

          <ul class="navbar-nav mb-2 mb-lg-0">
            <li class="nav-item">
              <RouterLink to="/" class="nav-link"> Home </RouterLink>
            </li>
            <li class="nav-item">
              <RouterLink to="/about" class="nav-link"> About </RouterLink>
            </li>
            <li v-if="state.isAuthenticated" class="nav-item">
              <div v-if="state.user">
                <div className=" text-decoration-none fs-4 mb-2 mb-lg-0">
                  <span className="mb-lg-0 text-info "
                    >Hello, {{ state.user.name }}</span
                  >
                </div>
              </div>
            </li>
            <li v-if="state.isAuthenticated" class="nav-item">
              <button class="btn btn-danger" @click="logOut()">Log out</button>
            </li>
            <li v-if="!state.isAuthenticated" class="nav-item">
              <RouterLink to="/register">
                <button class="btn btn-info mb-2 mb-lg-0">Register</button>
              </RouterLink>
            </li>
            <li v-if="!state.isAuthenticated" class="nav-item">
              <RouterLink to="/login">
                <button class="btn btn-light">Log in</button>
              </RouterLink>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
</template>
