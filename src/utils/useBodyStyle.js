import { onMounted, onUnmounted } from "vue";

/**
 * 因为本系统默认背景为 #333，方便某些页面设置背景色
 * @param {*} backgroundColor
 */
export default function useBodyStyle(backgroundColor = "#fff") {
  let originalBodyBgColor = "";
  onMounted(() => {
    originalBodyBgColor = document.body.style.backgroundColor;
    document.body.style.backgroundColor = backgroundColor;
  });
  onUnmounted(() => {
    document.body.style.backgroundColor = originalBodyBgColor;
  });
}
