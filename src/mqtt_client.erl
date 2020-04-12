-module(mqtt_client).
-behavior(gen_statem).

-callback init(Args :: any()) ->
    {ok, State :: any()} |
    {ok, State :: any(), Extra :: any()} |
    {stop, Reason :: any()}.

-callback handle_call(Req :: any(), From :: any(), State :: any()) ->
    {reply, Reply :: any(), State :: any()} |
    {reply, Reply :: any(), State :: any(), Extra :: any()} |
    {noreply, State :: any()} |
    {noreply, State :: any(), Extra :: any()} |
    {stop, Reason :: any(), State :: any()} |
    {stop, Reason :: any(), Reply :: any(), State :: any()}.

-callback handle_info(Req :: any(), State :: any()) ->
    {noreply, State :: any()} |
    {noreply, State :: any(), Extra :: any()} |
    {stop, Reason :: any(), State :: any()} |
    {stop, Reason :: any(), Reply :: any(), State :: any()}.

-callback handle_cast(Req :: any(), State :: any()) ->
    {ok, State :: any()} |
    {ok, State :: any(), Extra :: any()} |
    {stop, Reason :: any(), State :: any()}.

-callback terminate(Reason :: any(), State :: any()) ->
    ok.

-callback code_change(_OldVsn :: any(), State :: any(), Extra :: any()) ->
    {ok, State :: any()}.

-callback on_connect(State :: any()) ->
    {ok, State :: any()} |
    {stop, Reason :: any()}.

-callback on_connect_error(Reason :: any(), State :: any()) ->
    {ok, State :: any()} |
    {stop, Reason :: any()}.

-callback on_disconnect(State :: any()) ->
    {ok, State :: any()} |
    {stop, Reason :: any()}.

-callback on_subscribe(Topics :: [any()], State :: any()) ->
    {ok, State :: any()} |
    {stop, Reason :: any()}.

-callback on_unsubscribe(Topics :: [any()], State :: any()) ->
    {ok, State :: any()} |
    {stop, Reason :: any()}.

-callback on_publish(Topic :: any(), Payload :: binary(), Opts :: map(), State :: any()) ->
    {ok, State :: any()} |
    {stop, Reason :: any()}.
