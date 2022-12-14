import axios from "axios";
import alertMessage from "../../utils/alertMessages";
import API_URLS, { baseUrl } from "../../utils/apiUrls";
import Notification from "../../utils/Notification";
import setAuthToken from "../../utils/setAuthToken";

// register New User
export async function registerUserService(payload) {
  const url = baseUrl + `${API_URLS.users}`;

  if (navigator.onLine) {
    return await axios
      .post(url, payload)
      .then((response) => {
        if (response.status === 200) {
          Notification("success", alertMessage.registerSuccess);
          return {
            loading: false,
            message: "Success",
            success: true,
            data: response.data,
          };
        } else {
          Notification("error", alertMessage.somethingWentWrong);
          return {
            loading: false,
            success: false,
            data: "",
            error: "",
          };
        }
      })
      .catch((err) => {
        console.log("err", err.message);
        Notification("error", err.message);
      });
  } else {
    Notification("warning", alertMessage.noInternet);
  }
}

// load User
export async function loadUserService() {
  if (localStorage.contactKeeperToken) {
    setAuthToken(localStorage.contactKeeperToken);
  }
  const url = baseUrl + `${API_URLS.auth}`;
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
          Notification("error", alertMessage.somethingWentWrong);
          return {
            success: false,
            data: "",
            error: "",
          };
        }
      })
      .catch((err) => {
        console.log("err", err.message);
        Notification("error", err.message);
      });
  } else {
    Notification("warning", alertMessage.noInternet);
  }
}

// login User
export async function loginUserService(payload) {
  const url = baseUrl + `${API_URLS.auth}`;
  if (navigator.onLine) {
    return await axios
      .post(url, payload)
      .then((response) => {
        if (response.status === 200) {
          Notification("success", alertMessage.loginSuccess);
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
      .catch((err) => {
        console.log("err", err.message);
        Notification("error", err.message);
      });
  } else {
    Notification("warning", alertMessage.noInternet);
  }
}
