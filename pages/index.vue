<template>
  <div>
    <div class="container">
      <div id="logo-container">
        <img src="Logo.png" alt="yes no logo">
      </div>

      <div>
        <a href="https://github.com/nuxt/nuxt.js" target="_blank" class="download-btn">Download APK</a>
      </div>

      <div class="screenshot-container">
        <h6>Screenshots</h6>
        <img src="X - 1.png" alt="">
        <img src="X - 1.png" alt="">
        <img src="X - 1.png" alt="">
        <img src="X - 1.png" alt="">
      </div>
    </div>
  </div>
</template>

<style>

.container {
  margin: 10% auto;
  min-height: 100vh;
  display: grid;
  grid-template-rows: 30% 20%;
  justify-content: center;
  align-items: center;
  text-align: center;
}

.logo-container {
  margin: 500px;
}

.download-btn {
  background: #c4c4c4;
  border: 2px solid #140d2d;
  box-sizing: border-box;
  border-radius: 14px;
  padding: 10px 30px;

  font-family: "Amiko" sans-serif;
  font-style: normal;
  font-weight: 600;
  font-size: 18px;
  line-height: 24px;

  color: #140d2d;
}

@media only screen and (max-device-width: 640px) {
  .container {
    margin: 100px auto;
    display: grid;
    grid-template-rows: 300px 100px;
    justify-content: center;
    align-items: center;
    text-align: center;
  }
}
</style>
