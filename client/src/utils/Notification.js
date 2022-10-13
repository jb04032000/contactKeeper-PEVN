import { toast } from "vue3-toastify";
import "vue3-toastify/dist/index.css";

const Notification = (type, message) =>
  toast[type](message, {
    position: toast.POSITION.TOP_RIGHT,
    autoClose: 1500,
  });

export default Notification;
