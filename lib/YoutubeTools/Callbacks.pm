package YoutubeTools::Callbacks;

use strict;

sub _build_page {
    my ($cb, %args) = @_;
    my $content = ${$args{'Content'}};
    if ( $content =~ /\[youtube https:\/\/www\.youtube\.com\/watch\?v\=\w+\]/g ) {
        $content =~ s/\[youtube https:\/\/www\.youtube\.com\/watch\?v\=(\w+)\]/<div class\=\"asset-video youtube-asset"><iframe width\=\"560\" height\=\"315\" src\=\"https\:\/\/www\.youtube-nocookie\.com\/embed\/$1\?rel\=0\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen><\/iframe><\/div>/g;
        ${$args{'Content'}} = $content;
    }
}

1;