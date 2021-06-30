<template>
  <div class="container">
    <form>

      <h4 class="my-4 text-center">Приложение для перевода текста по словам</h4>

      <div class="form-group mb-2">
        <label class="mb-0 font-weight-bold" for="lang">Выбрать язык</label>
        <select class="form-control" id="lang" v-model="form.lang">
          <option disabled value="">ru</option>
          <option>en</option>
          <option>kz</option>
        </select>
      </div>

      <div class="form-group mb-2">
        <label class="mb-0 font-weight-bold" for="input">Исходный текст</label>
        <textarea 
          class="form-control" 
          id="input" 
          v-model="form.text" 
          @keypress="isLetter($event)" 
          style="height: 100px;" 
          placeholder="введите текст"></textarea>
      </div>   

      <div class="btn-group btn-group-sm my-2">
        <button 
          class="btn btn-secondary" 
          @click.prevent="loadWords" 
          data-type="1">
          Перевести
        </button>
        <button 
          class="btn btn-secondary" 
          @click.prevent="loadWords" 
          data-type="2">
          Показать непереведенные слова
        </button>
        <button 
          class="btn btn-secondary"
          @click.prevent="clear">
          Очистить
        </button>
      </div>

      <div class="form-group">
        <label class="mb-0 font-weight-bold" for="result">Результат</label>
        <div id="result" class="form-control" style="height: 100px;">
          {{ result.length == 0 ? '' : result }}
        </div>
      </div>

    </form>    
  </div>
</template>

<script>
  import axios from 'axios'

  export default {
    data() {
      return {
        form: {
          text: '',
          lang: '',
          type: ''
        },
        result: []
      }
    },

    methods: {
      isLetter(e) {
        let char = String.fromCharCode(e.keyCode); 
        if(/^[а-яё ]+$/.test(char)) return true; 
        else e.preventDefault(); 
      },

      loadWords(e) {
        this.form.type = e.target.dataset.type

        axios.post('api/words', this.form)
        .then(response => {
          this.result = response.data
          console.log(response)
        })
        .catch(error => console.log(error))
      },

      clear() {
        document.getElementById("input").value = "";
        document.getElementById("result").innerText = "";
      }
    }
  }
</script>
