'use strict'

const handler = async (event, context) => {
  const multiplied = event.multiplyMe * 2
  return {
    message: 'Hello, world!',
    multiplied,
    event,
    context,
  }
}

module.exports = { handler }
