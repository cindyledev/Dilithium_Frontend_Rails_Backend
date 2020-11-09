import { m, Link, View } from 'dilithium-js'

export default class PagesHome extends View
  render:=>
    m '.computer',
      m Link, href: '/tasks', 'My Tasks'
