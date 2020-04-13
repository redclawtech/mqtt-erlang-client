%% MQTT packet types
-define(CONNECT,      1).
-define(CONNACK,      2).
-define(PUBLISH,      3).
-define(PUBACK,       4).
-define(PUBREC,       5).
-define(PUBREL,       6).
-define(PUBCOMP,      7).
-define(SUBSCRIBE,    8).
-define(SUBACK,       9).
-define(UNSUBSCRIBE, 10).
-define(UNSUBACK,    11).
-define(PINGREQ,     12).
-define(PINGRESP,    13).
-define(DISCONNECT,  14).
%% MQTTv5 specific
-define(AUTH,        15).


-define(RESERVED, 0).
-define(PROTOCOL_MAGIC_31, <<"MQIsdp">>).
-define(PROTOCOL_MAGIC_311, <<"MQTT">>).
-define(MAX_LEN, 16#fffffff).
-define(HIGHBIT, 2#10000000).
-define(LOWBITS, 2#01111111).

-define(MAX_PACKET_SIZE, 268435455).
