import { storeToRefs } from "pinia";
import { watchEffect } from "vue";
import router from "../../router";
import { useAuthStore } from "../../stores/auth.store";
import alertMessage from "../../utils/alertMessages";
import Notification from "../../utils/Notification";

export default function useAuthentication() {
  const authStore = useAuthStore();
  const { clearError } = authStore;
  const { state } = storeToRefs(authStore);

  watchEffect(() => {
    if (state.value.isAuthenticated) {
      router.push({ path: "/" });
    }
    if (state.value.error && Object.keys(state.value.error).length !== 0) {
      Notification("error", alertMessage.somethingWentWrong);
      clearError();
    }
  });
}
