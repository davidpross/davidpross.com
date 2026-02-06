---
title: About Me
---

My name is David Ross. I am a software developer and data scientist with a Master's degree in Bioinformatics and Computational Biomedicine from Oregon Health & Science University. I create tools for analyzing and visualizing biological datasets. I've worked at [NanoString](https://www.nanostring.com/) (acquired by Bruker) and [Scale Biosciences](https://scale.bio) (acquired by 10x Genomics). Previously, I developed iPhone apps and enterprise software. View my full [resume](/resume).

![](/img/self.JPG)

<style>
  form {
    max-width: 400px;
    margin: 0 auto;
    font-family: sans-serif;
  }
  label {
    display: block;
    margin-bottom: 0.5em;
    font-weight: 600;
  }
  input, textarea {
    width: 100%;
    padding: 8px;
    margin-top: 4px;
    margin-bottom: 1em;
    border: 1px solid #ccc;
    border-radius: 4px;
    font-size: 1em;
    box-sizing: border-box;
  }
  textarea {
    min-height: 100px;
    resize: vertical;
  }
  button {
    background-color: #007acc;
    color: white;
    padding: 10px 16px;
    border: none;
    border-radius: 4px;
    font-size: 1em;
    cursor: pointer;
  }
  button:hover {
    background-color: #005f99;
  }
</style>

<form name="contact" method="POST" data-netlify="true">
  <input type="hidden" name="form-name" value="contact">

  <label>
    Name
    <input type="text" name="name" required>
  </label>

  <label>
    Email
    <input type="email" name="email" required>
  </label>

  <label>
    Message
    <textarea name="message" required></textarea>
  </label>

  <button type="submit">Send</button>
</form>
