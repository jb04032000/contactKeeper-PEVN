import { storeToRefs } from "pinia";
import { ref, watchEffect } from "vue";
import { useCounterStore } from "../../stores/contact.store";
import alertMessage from "../../utils/alertMessages";
import Notification from "../../utils/Notification";

export default function useContactForm() {
  const contactStore = useCounterStore();
  const { state } = storeToRefs(contactStore);
  const { addContact, updateContact, clearCurrentContact, getContactList } =
    contactStore;

  const name = ref("");
  const email = ref("");
  const phone = ref(null);
  const type = ref("Personal");

  const setContactForm = (data) => {
    if (data) {
      name.value = data.name;
      email.value = data.email;
      phone.value = data.phone;
      type.value = data.type;
    } else {
      name.value = "";
      email.value = "";
      phone.value = "";
      type.value = "Personal";
    }
  };

  const onSubmit = () => {
    const payload = {
      name: name.value,
      email: email.value,
      phone: phone.value,
      type: type.value,
    };

    if (/[a-zA-Z]/g.test(phone.value)) {
      Notification("warning", alertMessage.invalidPhone);
    } else if (state.value.currentContact !== null) {
      updateContact({ id: state.value.currentContact.id, ...payload });
      clearCurrentContact();
    } else {
      addContact(payload);
      setContactForm();
    }
  };

  watchEffect(() => {
    if (state.value.contactUpdated) {
      getContactList();
    }
    if (state.value.currentContact === null) {
      setContactForm();
    } else {
      setContactForm(state.value.currentContact);
    }
  });

  return { onSubmit, clearCurrentContact, state, type, phone, email, name };
}
