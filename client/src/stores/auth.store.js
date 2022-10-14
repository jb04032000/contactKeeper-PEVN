import { computed, reactive } from "vue";
import { defineStore } from "pinia";
import {
  registerUserService,
  loginUserService,
  loadUserService,
} from "./services/auth.services";
import setAuthToken from "../utils/setAuthToken";

export const useAuthStore = defineStore("auth", () => {
  let state = reactive({
    token: localStorage.getItem("contactKeeperToken") || "",
    isAuthenticated: localStorage.getItem("contactKeeperToken") ? true : false,
    message: "",
    error: null,
    loading: false,
    user: [],
  });

  let doubleCount = computed(() => count.value * 2);

  const authUser = (action, cb) => {
    return (payload) => {
      state.loading = true;
      const response = action(payload);
      response
        .then((res) => {
          cb(res);
        })
        .catch(() => {
          logOut();
        })
        .finally(() => {
          state.loading = false;
          state.message = "";
          state.error = null;
        });
    };
  };

  function loginUserSuccess(res) {
    state.token = res.data.token;
    state.isAuthenticated = true;
    localStorage.setItem("contactKeeperToken", res.data.token);
  }
  const registerUser = authUser(registerUserService, loginUserSuccess);
  const loginUser = authUser(loginUserService, loginUserSuccess);

  function loadUserSuccess(res) {
    state.isAuthenticated = true;
    state.user = res.data;
  }
  const loadUser = authUser(loadUserService, loadUserSuccess);

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
