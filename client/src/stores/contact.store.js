import { ref, computed, reactive } from "vue";
import { defineStore } from "pinia";

let initialState = {
  contactUpdated: false,
  contacts: [],
  filteredContacts: [],
  currentContact: null,
  message: "",
  error: null,
  loading: false,
};

export const useCounterStore = defineStore("contact", () => {
  let state = reactive({ ...initialState });

  let doubleCount = computed(() => count.value * 2);

  function getContactList(action) {
    state.loading = false;
    state.contacts = action.payload;
  }
  function addContact(action) {
    state.loading = false;
    state.contacts = [...state.contacts, action.payload];
  }
  function updateContact() {
    state.loading = false;
    state.contactUpdated = true;
  }
  function deleteContact(action) {
    state.loading = false;
    state.contacts = state.contacts.filter(
      (contact) => contact.id !== action.payload
    );
  }
  function setCurrentContact(action) {
    state.currentContact = action.payload;
  }
  function clearCurrentContact() {
    state.currentContact = null;
  }
  function setfilterContacts() {
    state.filteredContacts = state.contacts.filter(
      (contact) =>
        contact.name.toLowerCase().includes(action.payload.toLowerCase()) ||
        contact.email.toLowerCase().includes(action.payload.toLowerCase())
    );
  }
  function clearFilteredContacts() {
    state.filteredContacts = [];
  }

  return {
    state,

    getContactList,
    addContact,
    updateContact,
    deleteContact,
    setCurrentContact,
    clearCurrentContact,
    setfilterContacts,
    clearFilteredContacts,
  };
});
