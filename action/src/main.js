const core = require('@actions/core')

/**
 * The main function for the action.
 * @returns {Promise<void>} Resolves when the action is complete.
 */
async function run() {
  try {
    core.issueCommand('debug', {}, 'Some Debug message here')

    // Example
    // coreCommand.issueCommand(
    //   'add-matcher',
    //   {},
    //   path.join(__dirname, 'problem-matcher.json')
    // )
  } catch (error) {
    // Fail the workflow run if an error occurs
    core.setFailed(error.message)
  }
}

module.exports = {
  run
}
