
var vidHeight = 400;
var vidWitdh = 400;
var results = 10;


$(document).ready(function(){



	$("li").bind("click", function(){
      	var keyWord = $(this).text();
		console.log(keyWord);
        $( "#results" ).empty();
        $( "#foxresults" ).empty();

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

					});
				}
		);
	});
});