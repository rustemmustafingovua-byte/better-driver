.class public final Lio/sentry/util/network/NetworkBody;
.super Ljava/lang/Object;
.source "NetworkBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;
    }
.end annotation


# instance fields
.field private final body:Ljava/lang/Object;

.field private final originalByteCount:J

.field private final warnings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3
    .param p1, "body"    # Ljava/lang/Object;

    .line 22
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;Ljava/util/List;J)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/List;)V
    .locals 2
    .param p1, "body"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;",
            ">;)V"
        }
    .end annotation

    .line 27
    .local p2, "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lio/sentry/util/network/NetworkBody;-><init>(Ljava/lang/Object;Ljava/util/List;J)V

    .line 28
    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/util/List;J)V
    .locals 0
    .param p1, "body"    # Ljava/lang/Object;
    .param p3, "originalByteCount"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;",
            ">;J)V"
        }
    .end annotation

    .line 33
    .local p2, "warnings":Ljava/util/List;, "Ljava/util/List<Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lio/sentry/util/network/NetworkBody;->body:Ljava/lang/Object;

    .line 35
    iput-object p2, p0, Lio/sentry/util/network/NetworkBody;->warnings:Ljava/util/List;

    .line 36
    iput-wide p3, p0, Lio/sentry/util/network/NetworkBody;->originalByteCount:J

    .line 37
    return-void
.end method


# virtual methods
.method public getBody()Ljava/lang/Object;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/sentry/util/network/NetworkBody;->body:Ljava/lang/Object;

    return-object v0
.end method

.method getOriginalByteCount()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lio/sentry/util/network/NetworkBody;->originalByteCount:J

    return-wide v0
.end method

.method public getWarnings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/util/network/NetworkBody$NetworkBodyWarning;",
            ">;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lio/sentry/util/network/NetworkBody;->warnings:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetworkBody{body="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/NetworkBody;->body:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", warnings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/util/network/NetworkBody;->warnings:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
