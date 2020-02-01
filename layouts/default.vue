<template>
  <div>
    <nav>
      <ul>
        <li>
          <button v-on:click="toggleAbout">
            About
          </button>
        </li>
      </ul>
    </nav>
    <div v-if="isAbout">
      <About />
    </div>
    <Background />
    <nuxt />
  </div>
</template>
<script>
import Background from '~/components/Background.vue'
import About from '~/components/About.vue'

// eslint-disable-next-line prefer-const
let data = {
  isAbout: true
}

export default {
  components: {
    Background,
    About
  },
  data: () => {
    return data
  },
  methods: {
    toggleAbout: () => {
      data.isAbout = !data.isAbout
    }
  }
}
</script>
<style>
@font-face {
  font-family: "Amiko";
  src: url("/Amiko/Amiko-SemiBold.ttf") format("truetype");
}

html,
body {
  font-family: "Source Sans Pro", -apple-system, BlinkMacSystemFont, "Segoe UI",
    Roboto, "Helvetica Neue", Arial, sans-serif;
  font-size: 16px;
  word-spacing: 1px;
  -ms-text-size-adjust: 100%;
  -webkit-text-size-adjust: 100%;
  -moz-osx-font-smoothing: grayscale;
  -webkit-font-smoothing: antialiased;
  box-sizing: border-box;
  margin: 0;
  height: 100%;
}

*,
*:before,
*:after {
  box-sizing: border-box;
  margin: 0;
}

nav ul li {
  display: inline;
  overflow: hidden;
}

ul {
  justify-content: center;
  align-items: center;
  text-align: center;
  margin-top: 20px;
  margin-left: 65%;
}

li {
  margin: 20px;
}

.button--green {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #3b8070;
  color: #3b8070;
  text-decoration: none;
  padding: 10px 30px;
}

.button--green:hover {
  color: #fff;
  background-color: #3b8070;
}

.button--grey {
  display: inline-block;
  border-radius: 4px;
  border: 1px solid #35495e;
  color: #35495e;
  text-decoration: none;
  padding: 10px 30px;
  margin-left: 15px;
}

.button--grey:hover {
  color: #fff;
  background-color: #35495e;
}
</style>
