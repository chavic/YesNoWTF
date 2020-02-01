<template>
  <div class="backgroung-cover">
    <img src="yes-2069852 1.png" alt>
  </div>
</template>

<style>
.backgroung-cover {
  position: absolute;
  justify-content: center;
  align-items: center;
  text-align: center;
  z-index: -1;
  width: 100%;
  height: 100%;
  opacity: 0.2;
}

@media only screen and (max-device-width: 640px) {
  .backgroung-cover {
    justify-content: center;
  }
  .backgroung-cover img {
    position: absolute;
    transform: rotate(-90deg);
    width: 500px;
    margin: 0;
    top: 20%;
    right: -18%;
  }
}
</style>
