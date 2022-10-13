import { computed, reactive } from "vue";
import { defineStore } from "pinia";
import { registerNewUser } from "./services/auth.services";
import setAuthToken from "../utils/setAuthToken";

let initialState = {
  token: localStorage.getItem("contactKeeperToken") || "",
  isAuthenticated: localStorage.getItem("contactKeeperToken") ? true : false,
  message: "",
  error: null,
  loading: false,
  user: [],
};

export const useAuthStore = defineStore("auth", () => {
  let state = reactive({ ...initialState });

  let doubleCount = computed(() => count.value * 2);

  function registerUser(payload) {
    state.loading = true;
    const response = registerNewUser(payload);
    response
      .then((res) => {
        state.token = res.data.token;
        state.isAuthenticated = true;
        localStorage.setItem("contactKeeperToken", res.data.token);
      })
      .catch(() => {
        state.token = "";
        state.isAuthenticated = false;
        localStorage.removeItem("contactKeeperToken");
      })
      .finally(() => {
        state.loading = false;
      });
  }
  function loadUser(action) {
    state.loading = false;
    state.isAuthenticated = true;
    state.user = action.payload;
  }
  function loginUser() {}
  function logOut() {
    setAuthToken(false);
    localStorage.removeItem("contactKeeperToken");
    state.loading = false;
    state.isAuthenticated = false;
    state.token = "";
    state.user = [];
  }
  function clearError() {
    state.error = "";
  }

  return {
    state,

    registerUser,
    loadUser,
    loginUser,
    logOut,
    clearError,
  };
});
