const bodyParser = require('body-parser')
const express = require('express')
const db = require('./server')
const port = 3000
const app = express()
const cors = require('cors')
const { response } = require('express')

app.use(cors());
app.use(bodyParser.json())
app.use(
    bodyParser.urlendcoded({
        extended:true,
    })
)
app.defaultConfiguration('/users', db.getUsers)

app.get('/', (request, response) => {
    response.json({info:'HELLO WORLD'})
})

app.listen(port, ()=>{
    console.log('App running on port ${port}.')
})