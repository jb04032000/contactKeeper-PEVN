import { storeToRefs } from "pinia";
import { ref, watchEffect, toRefs } from "vue";
import { useContectStore } from "../../stores/contact.store";

export default function useContactList() {
  const contactStore = useContectStore();
  const { state } = storeToRefs(contactStore);
  const contacts = ref([]);

  watchEffect(() => {
    if (state.value.filteredContacts.length > 0) {
      contacts.value = [...state.value.filteredContacts];
      return;
    }
    contacts.value = [...state.value.contacts.sort((a, b) => b.id - a.id)];
  });
  return toRefs({ contacts });
}
