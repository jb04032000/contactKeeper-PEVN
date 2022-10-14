import { storeToRefs } from "pinia";
import { ref, watchEffect } from "vue";
import { useCounterStore } from "../../stores/contact.store";

export default function useContactList() {
  const contactStore = useCounterStore();
  const { state } = storeToRefs(contactStore);
  const contacts = ref([]);

  watchEffect(() => {
    if (state.value.filteredContacts.length > 0) {
      contacts.value = [...state.value.filteredContacts];
    } else if (state.value.contacts) {
      contacts.value = [...state.value.contacts.sort((a, b) => b.id - a.id)];
    }
  });
  return { contacts };
}
