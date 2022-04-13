import flatpickr from "flatpickr";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";

const initFlatpickr = () => {
  flatpickr("#range_start", {
    enableTime: true,
    altInput: true,
    plugins: [new rangePlugin({ input: "#range_end" })]
  });
}

export { initFlatpickr };
