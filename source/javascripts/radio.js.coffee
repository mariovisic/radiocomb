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

  addVideo: ->
    tag = document.createElement('script')
    tag.src = "//www.youtube.com/iframe_api"
    firstScriptTag = document.getElementsByTagName('script')[0]
    firstScriptTag.parentNode.insertBefore(tag, firstScriptTag)

  hideVideo: ->
    document.getElementById('player').style.display = 'none'
}

Radio.init()

window.onYouTubeIframeAPIReady = ->
  player = new YT.Player 'player',
    height: '930'
    width: '523'
    playerVars:
      autoplay: 1
      controls: 0
      showinfo: 0
    videoId: 'bllzkS3oU-I'
    events:
      onStateChange: stopVideo

window.stopVideo = (event) ->
  if event.data == 0
    Radio.hideVideo()
