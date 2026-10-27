.class public final Lio/sentry/BaggageHeader;
.super Ljava/lang/Object;
.source "BaggageHeader.java"


# static fields
.field public static final BAGGAGE_HEADER:Ljava/lang/String; = "baggage"


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lio/sentry/BaggageHeader;->value:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public static fromBaggageAndOutgoingHeader(Lio/sentry/Baggage;Ljava/util/List;)Lio/sentry/BaggageHeader;
    .locals 3
    .param p0, "baggage"    # Lio/sentry/Baggage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/Baggage;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/BaggageHeader;"
        }
    .end annotation

    .line 17
    .local p1, "outgoingBaggageHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lio/sentry/Baggage;->logger:Lio/sentry/ILogger;

    .line 18
    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Lio/sentry/Baggage;->fromHeader(Ljava/util/List;ZLio/sentry/ILogger;)Lio/sentry/Baggage;

    move-result-object v0

    .line 19
    .local v0, "thirdPartyBaggage":Lio/sentry/Baggage;
    invoke-virtual {v0}, Lio/sentry/Baggage;->getThirdPartyHeader()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lio/sentry/Baggage;->toHeaderString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 21
    .local v1, "headerValue":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 22
    const/4 v2, 0x0

    return-object v2

    .line 24
    :cond_0
    new-instance v2, Lio/sentry/BaggageHeader;

    invoke-direct {v2, v1}, Lio/sentry/BaggageHeader;-><init>(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 33
    const-string v0, "baggage"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/sentry/BaggageHeader;->value:Ljava/lang/String;

    return-object v0
.end method
