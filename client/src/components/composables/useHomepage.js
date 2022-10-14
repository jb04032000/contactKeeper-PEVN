import { storeToRefs } from "pinia";
import { onBeforeMount, watchEffect } from "vue";
import router from "../../router";
import { useAuthStore } from "../../stores/auth.store";
import { useCounterStore } from "../../stores/contact.store";

export default function useHomepage() {
  const authStore = useAuthStore();
  const contactStore = useCounterStore();
  const { state } = storeToRefs(authStore);
  const { loadUser } = authStore;
  const { getContactList } = contactStore;

  onBeforeMount(() => {
    loadUser();
    getContactList();
  });

  watchEffect(() => {
    if (!state.value.isAuthenticated) {
      router.push({ path: "/login" });
    }
  });
}
