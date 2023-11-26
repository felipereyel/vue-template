<template>
  <h1 class="border rounded-md p-3 w-fit font-bold">Hello {{ msg }}</h1>
</template>

<script setup lang="ts">
defineProps<{ msg: string }>()
</script>
