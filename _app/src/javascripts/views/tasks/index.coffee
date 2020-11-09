import { m, Link, View } from 'dilithium-js'

export default class TasksIndex extends View
  render:=>
    m '.computer',
      m Link, href: '/', 'Go Back'