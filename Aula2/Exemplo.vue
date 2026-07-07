<template>
  <button class="btn" @click="alterarMensagem">{{ mensagem }}</button>
</template>

<script setup>
import { ref } from "vue";
const mensagem = ref("Clique aqui");

const alterarMensagem = () => {
  mensagem.value = "Texto alterado";
};
</script>

<style scoped>
.btn {
  background: blue;
  color: white;
}
</style>
