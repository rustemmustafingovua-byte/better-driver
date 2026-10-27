.class final Lio/sentry/transport/ProxyAuthenticator;
.super Ljava/net/Authenticator;
.source "ProxyAuthenticator.java"


# instance fields
.field private final password:Ljava/lang/String;

.field private final proxyHost:Ljava/lang/String;

.field private final user:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "user"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "proxyHost"    # Ljava/lang/String;

    .line 21
    invoke-direct {p0}, Ljava/net/Authenticator;-><init>()V

    .line 22
    const-string v0, "user is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/transport/ProxyAuthenticator;->user:Ljava/lang/String;

    .line 23
    const-string v0, "password is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/transport/ProxyAuthenticator;->password:Ljava/lang/String;

    .line 24
    const-string v0, "proxyHost is required"

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/transport/ProxyAuthenticator;->proxyHost:Ljava/lang/String;

    .line 25
    return-void
.end method


# virtual methods
.method getPassword()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lio/sentry/transport/ProxyAuthenticator;->password:Ljava/lang/String;

    return-object v0
.end method

.method protected getPasswordAuthentication()Ljava/net/PasswordAuthentication;
    .locals 3

    .line 29
    invoke-virtual {p0}, Lio/sentry/transport/ProxyAuthenticator;->getRequestorType()Ljava/net/Authenticator$RequestorType;

    move-result-object v0

    sget-object v1, Ljava/net/Authenticator$RequestorType;->PROXY:Ljava/net/Authenticator$RequestorType;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lio/sentry/transport/ProxyAuthenticator;->proxyHost:Ljava/lang/String;

    invoke-virtual {p0}, Lio/sentry/transport/ProxyAuthenticator;->getRequestingHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    new-instance v0, Ljava/net/PasswordAuthentication;

    iget-object v1, p0, Lio/sentry/transport/ProxyAuthenticator;->user:Ljava/lang/String;

    iget-object v2, p0, Lio/sentry/transport/ProxyAuthenticator;->password:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/net/PasswordAuthentication;-><init>(Ljava/lang/String;[C)V

    return-object v0

    .line 32
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getUser()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/sentry/transport/ProxyAuthenticator;->user:Ljava/lang/String;

    return-object v0
.end method
