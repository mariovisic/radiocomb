Radio = {
  init: ->
    @attachFormEvents()

  attachFormEvents: ->
    form = document.forms[0]
    form.addEventListener('submit', @showDonationPage, false)

  showDonationPage: (e) ->
    e.preventDefault()

    template                = document.getElementById('donation-template')
    price                   = document.getElementById('price').value
    templateBody            = template.innerHTML.toString().replace(/{ price }/g, price)
    document.body.innerHTML = templateBody
}

Radio.init()
