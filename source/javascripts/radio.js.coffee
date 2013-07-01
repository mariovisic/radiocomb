Radio = {
  init: ->
    @attachFormEvents()
    @addVideo()

  attachFormEvents: ->
    form = document.forms[0]
    form.addEventListener('submit', @showDonationPage, false)

  showDonationPage: (e) ->
    e.preventDefault()

    container           = document.getElementById('container')
    template            = document.getElementById('donation-template')
    price               = document.getElementById('price').value
    templateBody        = template.innerHTML.toString().replace(/{ price }/g, price)
    container.innerHTML = templateBody

    document.getElementsByClassName('video')[0].style.display = 'none'
    document.getElementsByTagName('header')[0].style.height = 'auto'
    document.getElementsByTagName('header')[0].style.height = 'auto'
    document.getElementsByTagName('header')[0].style.padding = '0 0 30px 0'

  addVideo: ->
    tag = document.createElement('script')
    tag.src = "//www.youtube.com/iframe_api"
    firstScriptTag = document.getElementsByTagName('script')[0]
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag)
}

Radio.init()

window.onYouTubeIframeAPIReady = ->
  player = new YT.Player 'player',
    width: '100%'
    height: '100%'
    playerVars:
      autoplay: 0
      controls: 1
      showinfo: 0
      rel:      0
    videoId: 'bllzkS3oU-I'
