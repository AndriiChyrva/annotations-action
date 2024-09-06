import core from '@actions/core';
import * as command from '@actions/core/lib/command'
// import * as toolkit from '@actions/toolkit'

(() => {
    try {
        // command.issueCommand('add-matcher', {}, path.join(__dirname, 'problem-matcher.json'));
        command.issueCommand('debug', {}, 'Test Debug');
    } catch (error) {
        core.setFailed(`${error.message}`);
    }
})()