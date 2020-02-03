<template>
  <div>
    <div class="container">
      <div id="logo-container">
        <img src="Logo.png" alt="yes no logo">
      </div>

      <div>
        <a href="https://api.codemagic.io/artifacts/1829370c-d6f1-4528-a750-e85a09b58fc1/eaa7dd6b-b98c-4cb7-8cbf-ec6437104fe3/app.apk" target="_blank" class="download-btn">Download APK</a>
      </div>
    </div>

    <div class="about-container">
      <h2>About</h2>
      <p>An app allows you to make the right decisions 100%😉 at the time, it knows everything and it will give give you the right answer *P.S yes/no wtf. Seriously this is not a PRANK😂, this right here... is the shit</p>
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
