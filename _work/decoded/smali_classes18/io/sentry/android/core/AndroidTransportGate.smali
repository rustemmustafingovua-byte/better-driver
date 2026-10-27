.class final Lio/sentry/android/core/AndroidTransportGate;
.super Ljava/lang/Object;
.source "AndroidTransportGate.java"

# interfaces
.implements Lio/sentry/transport/ITransportGate;


# instance fields
.field private final options:Lio/sentry/SentryOptions;


# direct methods
.method constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 0
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lio/sentry/android/core/AndroidTransportGate;->options:Lio/sentry/SentryOptions;

    .line 15
    return-void
.end method


# virtual methods
.method public isConnected()Z
    .locals 1

    .line 19
    iget-object v0, p0, Lio/sentry/android/core/AndroidTransportGate;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getConnectionStatusProvider()Lio/sentry/IConnectionStatusProvider;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IConnectionStatusProvider;->getConnectionStatus()Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/sentry/android/core/AndroidTransportGate;->isConnected(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)Z

    move-result v0

    return v0
.end method

.method isConnected(Lio/sentry/IConnectionStatusProvider$ConnectionStatus;)Z
    .locals 2
    .param p1, "status"    # Lio/sentry/IConnectionStatusProvider$ConnectionStatus;

    .line 26
    sget-object v0, Lio/sentry/android/core/AndroidTransportGate$1;->$SwitchMap$io$sentry$IConnectionStatusProvider$ConnectionStatus:[I

    invoke-virtual {p1}, Lio/sentry/IConnectionStatusProvider$ConnectionStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 32
    const/4 v0, 0x0

    return v0

    .line 30
    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
