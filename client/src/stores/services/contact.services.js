import axios from "axios";
import alertMessage from "../../utils/alertMessages";
import API_URLS, { baseUrl } from "../../utils/apiUrls";
import Notification from "../../utils/Notification";
import setAuthToken from "../../utils/setAuthToken";

// get contact list
export async function getContactListService() {
  if (localStorage.contactKeeperToken) {
    setAuthToken(localStorage.contactKeeperToken);
  }
  const url = baseUrl + `${API_URLS.contacts}`;
  if (navigator.onLine) {
    return await axios
      .get(url)
      .then((response) => {
        if (response.status === 200) {
          return {
            message: "Success",
            success: true,
            data: response.data,
          };
        } else {
          return {
            success: false,
            data: "",
            error: "",
          };
        }
      })
      .catch((err) => console.log(err));
  } else {
    Notification("warning", alertMessage.noInternet);
  }
}

// add contact
export async function addContactService(payload) {
  if (localStorage.contactKeeperToken) {
    setAuthToken(localStorage.contactKeeperToken);
  }
  const url = baseUrl + `${API_URLS.contacts}`;
  if (navigator.onLine) {
    return await axios
      .post(url, payload)
      .then((response) => {
        if (response.status === 200) {
          Notification("success", alertMessage.addedSuccess);
          return {
            message: "Success",
            success: true,
            data: response.data,
          };
        } else {
          Notification("error", alertMessage.somethingWentWrong);
          return {
            success: false,
            data: "",
            error: "",
          };
        }
      })
      .catch((err) => console.log(err));
  } else {
    Notification("warning", alertMessage.noInternet);
  }
}

// update contact
export async function updateContactService(payload) {
  if (localStorage.contactKeeperToken) {
    setAuthToken(localStorage.contactKeeperToken);
  }

  const url = baseUrl + `${API_URLS.contacts}/${payload.id}`;
  if (navigator.onLine) {
    return await axios
      .put(url, payload)
      .then((response) => {
        if (response.status === 200) {
          Notification("success", alertMessage.updateSuccess);
          return {
            message: "Success",
            success: true,
            data: response.data,
          };
        } else {
          Notification("error", alertMessage.somethingWentWrong);
          return {
            success: false,
            data: "",
            error: "",
          };
        }
      })
      .catch((err) => console.log(err));
  } else {
    Notification("warning", alertMessage.noInternet);
  }
}

// delete contact
export async function deleteContactService(payload) {
  if (localStorage.contactKeeperToken) {
    setAuthToken(localStorage.contactKeeperToken);
  }

  const url = baseUrl + `${API_URLS.contacts}/${payload}`;
  if (navigator.onLine) {
    return await axios
      .delete(url)
      .then((response) => {
        if (response.status === 200) {
          Notification("success", alertMessage.deleteSuccess);
          return {
            message: "Success",
            success: true,
            data: response.data,
          };
        } else {
          Notification("error", alertMessage.somethingWentWrong);
          return {
            success: false,
            data: "",
            error: "",
          };
        }
      })
      .catch((err) => console.log(err));
  } else {
    Notification("warning", alertMessage.noInternet);
  }
}
