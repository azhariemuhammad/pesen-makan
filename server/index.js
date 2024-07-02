import express from 'express'

const app = express()
const PORT = process.env.PORT || 3000

app.use(bodyParser.json())
app.get('/', (req, res) => {
    console.log('')
    res.send('hello world!')
})

app.use('/api/v1/')


app.listen(PORT, () => {
    console.log(`API is listening on http://localhost:${PORT}/`)
})