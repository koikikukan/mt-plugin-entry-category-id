package Tags;

use strict;

sub _hdlr_entry_category_id {
    my($ctx, $args, $cond) = @_;
    my $e = $ctx->stash('entry')
        or return $ctx->_no_entry_error($ctx->stash('tag'));
    my $cat = $e->category;
    return '' unless $cat;
    local $ctx->{__stash}{category} = $e->category;
    MT::Template::Tags::Category::_hdlr_category_id(@_);
}

1;
