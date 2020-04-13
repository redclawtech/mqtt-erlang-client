-type msg_id() :: undefined | 0..65535.

-type routing_key() :: [binary()].

-type msg_ref() :: binary().

-type msg_expiry_ts() :: {expire_after, non_neg_integer()} | {non_neg_integer(), non_neg_integer()}.
