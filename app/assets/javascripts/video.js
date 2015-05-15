
var vidHeight = 400;
var vidWitdh = 400;
var results = 1;


$(document).ready(function(){



  $("li").bind("click", function(){
    var keyWord = $(this).text();
    $( "#results" ).empty();
    $( "#foxresults" ).empty();
    console.log(keyWord);
    var trendId;
    var url = "api/v1/search" + "?hashtags=" + keyWord;

    function handleResponse(data,status) {
      for(var i =0; i < data.length; i++) {
        trendId = data[i].id;
        console.log(trendId);
        $.get('/api/v1/trends/' + trendId + '/videos', function(data) {
          console.log(data);
        })
      }
    }


    // $.get(url, handleResponse);

    $.when($.get(url, handleResponse)).then(function(){
      $.get(
        'https://www.googleapis.com/youtube/v3/search', {
          part: 'snippet',
          channelId: 'UCupvZG-5ko_eiXAupbDfxWw',
          key: 'AIzaSyAmmyCq4e7hwUtctbTf_GGssWRHJnIO1H8',
          maxResults: results,
          q: keyWord },
          function(data){
            $.each(data.items,function(i, item){
              console.log(item);
              videTitle = item.snippet.title;
              videoId = item.id.videoId;

              output = '<li><iframe height ="'+vidHeight+'" width= "'+vidWitdh+'" src=\"//www.youtube.com/embed/'+videoId+'\"</iframe></li>';

            //Append to results listStytleType
            $('#results').append(output);

            $.post('/api/v1/trends/' + trendId + '/videos', {
              "video": {
                "url": videoId
              }

            });           

          });
          }
          );
      $.get(
        'https://www.googleapis.com/youtube/v3/search', {
          part: 'snippet',
          channelId: 'UCXIJgqnII2ZOINSWNOGFThA',
          key: 'AIzaSyAmmyCq4e7hwUtctbTf_GGssWRHJnIO1H8',
          maxResults: results,
          q: keyWord},
          function(data){
            $.each(data.items,function(i, item){
              console.log(item);
              videTitle = item.snippet.title;
              videoId = item.id.videoId;

              output = '<li><iframe height ="'+vidHeight+'" width= "'+vidWitdh+'" src=\"//www.youtube.com/embed/'+videoId+'\"</iframe></li>';

            //Append to results listStytleType
            $('#foxresults').append(output);
            $.post('/api/v1/trends/' + trendId + '/videos', {
              "video": {
                "url": videoId,
              }

            }); 
            
          });
          }
          );
    });
});
});
