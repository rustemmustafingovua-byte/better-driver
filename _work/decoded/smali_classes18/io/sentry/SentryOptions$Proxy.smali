.class public final Lio/sentry/SentryOptions$Proxy;
.super Ljava/lang/Object;
.source "SentryOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/SentryOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Proxy"
.end annotation


# instance fields
.field private host:Ljava/lang/String;

.field private pass:Ljava/lang/String;

.field private port:Ljava/lang/String;

.field private type:Ljava/net/Proxy$Type;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 6

    .line 3991
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 3992
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;

    .line 3995
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":Ljava/lang/String;
    .local v1, "host":Ljava/lang/String;
    .local v2, "port":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 3996
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "user"    # Ljava/lang/String;
    .param p4, "pass"    # Ljava/lang/String;

    .line 4007
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":Ljava/lang/String;
    .end local p3    # "user":Ljava/lang/String;
    .end local p4    # "pass":Ljava/lang/String;
    .local v1, "host":Ljava/lang/String;
    .local v2, "port":Ljava/lang/String;
    .local v4, "user":Ljava/lang/String;
    .local v5, "pass":Ljava/lang/String;
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 4008
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;)V
    .locals 6
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/net/Proxy$Type;

    .line 3999
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .end local p1    # "host":Ljava/lang/String;
    .end local p2    # "port":Ljava/lang/String;
    .end local p3    # "type":Ljava/net/Proxy$Type;
    .local v1, "host":Ljava/lang/String;
    .local v2, "port":Ljava/lang/String;
    .local v3, "type":Ljava/net/Proxy$Type;
    invoke-direct/range {v0 .. v5}, Lio/sentry/SentryOptions$Proxy;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;)V

    .line 4000
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/net/Proxy$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/net/Proxy$Type;
    .param p4, "user"    # Ljava/lang/String;
    .param p5, "pass"    # Ljava/lang/String;

    .line 4015
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4016
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->host:Ljava/lang/String;

    .line 4017
    iput-object p2, p0, Lio/sentry/SentryOptions$Proxy;->port:Ljava/lang/String;

    .line 4018
    iput-object p3, p0, Lio/sentry/SentryOptions$Proxy;->type:Ljava/net/Proxy$Type;

    .line 4019
    iput-object p4, p0, Lio/sentry/SentryOptions$Proxy;->user:Ljava/lang/String;

    .line 4020
    iput-object p5, p0, Lio/sentry/SentryOptions$Proxy;->pass:Ljava/lang/String;

    .line 4021
    return-void
.end method


# virtual methods
.method public getHost()Ljava/lang/String;
    .locals 1

    .line 4024
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->host:Ljava/lang/String;

    return-object v0
.end method

.method public getPass()Ljava/lang/String;
    .locals 1

    .line 4048
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->pass:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .locals 1

    .line 4032
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->port:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/net/Proxy$Type;
    .locals 1

    .line 4056
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->type:Ljava/net/Proxy$Type;

    return-object v0
.end method

.method public getUser()Ljava/lang/String;
    .locals 1

    .line 4040
    iget-object v0, p0, Lio/sentry/SentryOptions$Proxy;->user:Ljava/lang/String;

    return-object v0
.end method

.method public setHost(Ljava/lang/String;)V
    .locals 0
    .param p1, "host"    # Ljava/lang/String;

    .line 4028
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->host:Ljava/lang/String;

    .line 4029
    return-void
.end method

.method public setPass(Ljava/lang/String;)V
    .locals 0
    .param p1, "pass"    # Ljava/lang/String;

    .line 4052
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->pass:Ljava/lang/String;

    .line 4053
    return-void
.end method

.method public setPort(Ljava/lang/String;)V
    .locals 0
    .param p1, "port"    # Ljava/lang/String;

    .line 4036
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->port:Ljava/lang/String;

    .line 4037
    return-void
.end method

.method public setType(Ljava/net/Proxy$Type;)V
    .locals 0
    .param p1, "type"    # Ljava/net/Proxy$Type;

    .line 4060
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->type:Ljava/net/Proxy$Type;

    .line 4061
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .locals 0
    .param p1, "user"    # Ljava/lang/String;

    .line 4044
    iput-object p1, p0, Lio/sentry/SentryOptions$Proxy;->user:Ljava/lang/String;

    .line 4045
    return-void
.end method
