import { reactive } from "vue";
import { defineStore } from "pinia";
import {
  addContactService,
  deleteContactService,
  getContactListService,
  updateContactService,
} from "./services/contact.services";

export const useContectStore = defineStore("contact", () => {
  let state = reactive({
    contactUpdated: false,
    contacts: [],
    filteredContacts: [],
    currentContact: null,
    message: "",
    error: null,
    loading: false,
  });

  const contacts = (action, cb) => {
    return (payload) => {
      state.loading = true;
      state.contactUpdated = false;
      const response = action(payload);
      response
        .then((res) => {
          cb(res, payload);
        })
        .catch(() => {
          contactOperationFail();
        })
        .finally(() => {
          state.loading = false;
          state.message = "";
          state.error = null;
        });
    };
  };

  function contactOperationFail() {
    state.loading = false;
    state.contacts = [];
    state.filteredContacts = [];
    state.contactUpdated = false;
    state.currentContact = null;
    state.message = "";
    state.error = null;
    state.loading = false;
  }

  const getContactListSuccess = (action) => {
    state.contacts = action.data;
  };
  const getContactList = contacts(getContactListService, getContactListSuccess);

  const addContactSuccess = (action) => {
    state.contacts = [...state.contacts, action.data];
  };
  const addContact = contacts(addContactService, addContactSuccess);

  const updateContactSuccess = () => {
    state.contactUpdated = true;
  };
  const updateContact = contacts(updateContactService, updateContactSuccess);

  const deleteContactSuccess = (action, id) => {
    state.contacts = state.contacts.filter((contact) => contact.id !== id);
  };
  const deleteContact = contacts(deleteContactService, deleteContactSuccess);

  function setCurrentContact(payload) {
    state.currentContact = payload;
  }

  function clearCurrentContact() {
    state.currentContact = null;
  }
  function setfilterContacts(data) {
    state.filteredContacts = state.contacts.filter(
      (contact) =>
        contact.name.toLowerCase().includes(data.toLowerCase()) ||
        contact.email.toLowerCase().includes(data.toLowerCase())
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
