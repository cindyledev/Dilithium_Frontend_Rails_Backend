import { ApiBase } from 'dilithium-js'

class Api extends ApiBase
  namespace: 'api'
  headers:
    'X-CSFR-Token': =>
      document.getElementsByName('csrf-token')[0].content
  resources:
    tasks: true
    
export default new Api()