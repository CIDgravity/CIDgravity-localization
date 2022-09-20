'use strict'

const fs = require('fs')
const path = require('path')

console.log('Validating JSON files...')

// see https://stackoverflow.com/a/66083078/11046178
function* walkSync(dir) {
    const files = fs.readdirSync(dir, { withFileTypes: true })
    for (const file of files) {
        if (file.isDirectory()) {
            yield* walkSync(path.join(dir, file.name))
        } else {
            yield path.join(dir, file.name)
        }
    }
}

// for each files in locales directory, check json validity
for (const filePath of walkSync(`${__dirname}/locales`)) {
    try {
        let rawdata = fs.readFileSync(filePath)
        JSON.parse(rawdata)
    } catch (e) {
        console.error(`Error while parsing json file '${filePath}'`, e)
        return 1
    }
}
console.log('Every files in locales/ directory are valid JSON files')
return 0
