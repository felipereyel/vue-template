<template>
  <div class="flex justify-center mb-3 text-sm">
    <router-link to="/" class="italic">Home</router-link>
    <span class="mx-2 ">|</span>
    <router-link to="/about" class="italic"> About</router-link>
  </div>
  <router-view></router-view>
</template>
