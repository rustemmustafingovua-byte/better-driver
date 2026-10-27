.class public final Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
.super Ljava/lang/Object;
.source "ReplayNetworkRequestOrResponse.java"


# instance fields
.field private final body:Lio/sentry/util/network/NetworkBody;

.field private final headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final size:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/Long;Lio/sentry/util/network/NetworkBody;Ljava/util/Map;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/Long;
    .param p2, "body"    # Lio/sentry/util/network/NetworkBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Lio/sentry/util/network/NetworkBody;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->size:Ljava/lang/Long;

    .line 24
    iput-object p2, p0, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->body:Lio/sentry/util/network/NetworkBody;

    .line 25
    iput-object p3, p0, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->headers:Ljava/util/Map;

    .line 26
    return-void
.end method


# virtual methods
.method public getBody()Lio/sentry/util/network/NetworkBody;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->body:Lio/sentry/util/network/NetworkBody;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .line 29
    iget-object v0, p0, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ReplayNetworkRequestOrResponse{size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->size:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->body:Lio/sentry/util/network/NetworkBody;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;->headers:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
