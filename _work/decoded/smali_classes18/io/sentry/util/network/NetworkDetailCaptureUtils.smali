.class public final Lio/sentry/util/network/NetworkDetailCaptureUtils;
.super Ljava/lang/Object;
.source "NetworkDetailCaptureUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor;,
        Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRequest(Ljava/lang/Object;Ljava/lang/Long;ZLio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor;Ljava/util/List;Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor;)Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .locals 1
    .param p1, "bodySize"    # Ljava/lang/Long;
    .param p2, "networkCaptureBodies"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Long;",
            "Z",
            "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor<",
            "TT;>;)",
            "Lio/sentry/util/network/ReplayNetworkRequestOrResponse;"
        }
    .end annotation

    .line 60
    .local p0, "httpObject":Ljava/lang/Object;, "TT;"
    .local p3, "bodyExtractor":Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor;, "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor<TT;>;"
    .local p4, "networkRequestHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "headerExtractor":Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor;, "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor<TT;>;"
    invoke-static/range {p0 .. p5}, Lio/sentry/util/network/NetworkDetailCaptureUtils;->createRequestOrResponseInternal(Ljava/lang/Object;Ljava/lang/Long;ZLio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor;Ljava/util/List;Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor;)Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    move-result-object v0

    return-object v0
.end method

.method private static createRequestOrResponseInternal(Ljava/lang/Object;Ljava/lang/Long;ZLio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor;Ljava/util/List;Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor;)Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .locals 6
    .param p1, "bodySize"    # Ljava/lang/Long;
    .param p2, "networkCaptureBodies"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Long;",
            "Z",
            "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor<",
            "TT;>;)",
            "Lio/sentry/util/network/ReplayNetworkRequestOrResponse;"
        }
    .end annotation

    .line 159
    .local p0, "httpObject":Ljava/lang/Object;, "TT;"
    .local p3, "bodyExtractor":Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor;, "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor<TT;>;"
    .local p4, "allowedHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "headerExtractor":Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor;, "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor<TT;>;"
    const/4 v0, 0x0

    .line 161
    .local v0, "body":Lio/sentry/util/network/NetworkBody;
    if-eqz p2, :cond_0

    .line 162
    invoke-interface {p3, p0}, Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor;->extract(Ljava/lang/Object;)Lio/sentry/util/network/NetworkBody;

    move-result-object v0

    .line 166
    :cond_0
    move-object v1, p1

    .line 167
    .local v1, "effectiveBodySize":Ljava/lang/Long;
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lio/sentry/util/network/NetworkBody;->getOriginalByteCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_2

    .line 168
    invoke-virtual {v0}, Lio/sentry/util/network/NetworkBody;->getOriginalByteCount()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 171
    :cond_2
    nop

    .line 172
    invoke-interface {p5, p0}, Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor;->extract(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2, p4}, Lio/sentry/util/network/NetworkDetailCaptureUtils;->getCaptureHeaders(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;

    move-result-object v2

    .line 174
    .local v2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    invoke-direct {v3, v1, v0, v2}, Lio/sentry/util/network/ReplayNetworkRequestOrResponse;-><init>(Ljava/lang/Long;Lio/sentry/util/network/NetworkBody;Ljava/util/Map;)V

    return-object v3
.end method

.method public static createResponse(Ljava/lang/Object;Ljava/lang/Long;ZLio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor;Ljava/util/List;Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor;)Lio/sentry/util/network/ReplayNetworkRequestOrResponse;
    .locals 1
    .param p1, "bodySize"    # Ljava/lang/Long;
    .param p2, "networkCaptureBodies"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Long;",
            "Z",
            "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor<",
            "TT;>;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor<",
            "TT;>;)",
            "Lio/sentry/util/network/ReplayNetworkRequestOrResponse;"
        }
    .end annotation

    .line 77
    .local p0, "httpObject":Ljava/lang/Object;, "TT;"
    .local p3, "bodyExtractor":Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor;, "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor<TT;>;"
    .local p4, "networkResponseHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p5, "headerExtractor":Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor;, "Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor<TT;>;"
    invoke-static/range {p0 .. p5}, Lio/sentry/util/network/NetworkDetailCaptureUtils;->createRequestOrResponseInternal(Ljava/lang/Object;Ljava/lang/Long;ZLio/sentry/util/network/NetworkDetailCaptureUtils$NetworkBodyExtractor;Ljava/util/List;Lio/sentry/util/network/NetworkDetailCaptureUtils$NetworkHeaderExtractor;)Lio/sentry/util/network/ReplayNetworkRequestOrResponse;

    move-result-object v0

    return-object v0
.end method

.method static getCaptureHeaders(Ljava/util/Map;Ljava/util/List;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 129
    .local p0, "allHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p1, "allowedHeaders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 130
    .local v0, "capturedHeaders":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p0, :cond_0

    .line 131
    return-object v0

    .line 135
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 136
    .local v1, "normalizedAllowed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 137
    .local v3, "header":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 138
    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 140
    .end local v3    # "header":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 142
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 143
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 144
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    goto :goto_1

    .line 148
    :cond_4
    return-object v0
.end method

.method public static initializeForUrl(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Lio/sentry/util/network/NetworkRequestData;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "method"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lio/sentry/util/network/NetworkRequestData;"
        }
    .end annotation

    .line 41
    .local p2, "networkDetailAllowUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "networkDetailDenyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p2, p3}, Lio/sentry/util/network/NetworkDetailCaptureUtils;->shouldCaptureUrl(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 45
    :cond_0
    new-instance v0, Lio/sentry/util/network/NetworkRequestData;

    invoke-direct {v0, p1}, Lio/sentry/util/network/NetworkRequestData;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static shouldCaptureUrl(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Z
    .locals 4
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 102
    .local p1, "networkDetailAllowUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "networkDetailDenyUrls":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 103
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 104
    .local v2, "pattern":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    return v0

    .line 107
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 111
    :cond_1
    if-nez p1, :cond_2

    .line 112
    return v0

    .line 116
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 117
    .restart local v2    # "pattern":Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {p0, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 118
    const/4 v0, 0x1

    return v0

    .line 120
    .end local v2    # "pattern":Ljava/lang/String;
    :cond_3
    goto :goto_1

    .line 122
    :cond_4
    return v0
.end method
