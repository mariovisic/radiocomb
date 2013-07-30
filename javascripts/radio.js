(function() {
  var Radio;

  Radio = {
    init: function() {
      this.attachFormEvents();
      return this.addVideo();
    },
    attachFormEvents: function() {
      var form;
      form = document.forms[0];
      return form.addEventListener('submit', this.showDonationPage, false);
    },
    showDonationPage: function(e) {
      var container, price, template, templateBody;
      e.preventDefault();
      container = document.getElementById('container');
      template = document.getElementById('donation-template');
      price = document.getElementById('price').value;
      templateBody = template.innerHTML.toString().replace(/{ price }/g, price);
      container.innerHTML = templateBody;
      document.getElementsByClassName('video')[0].style.display = 'none';
      document.getElementsByTagName('header')[0].style.height = 'auto';
      document.getElementsByTagName('header')[0].style.height = 'auto';
      return document.getElementsByTagName('header')[0].style.padding = '0 0 30px 0';
    },
    addVideo: function() {
      var firstScriptTag, tag;
      tag = document.createElement('script');
      tag.src = "//www.youtube.com/iframe_api";
      firstScriptTag = document.getElementsByTagName('script')[0];
      return firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
    }
  };

  Radio.init();

  window.onYouTubeIframeAPIReady = function() {
    var player;
    return player = new YT.Player('player', {
      width: '100%',
      height: '100%',
      playerVars: {
        autoplay: 0,
        controls: 1,
        showinfo: 0,
        rel: 0
      },
      videoId: 'bllzkS3oU-I'
    });
  };

}).call(this);
