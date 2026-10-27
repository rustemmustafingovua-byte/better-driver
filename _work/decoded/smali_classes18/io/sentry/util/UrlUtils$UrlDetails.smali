.class public final Lio/sentry/util/UrlUtils$UrlDetails;
.super Ljava/lang/Object;
.source "UrlUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/util/UrlUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UrlDetails"
.end annotation


# instance fields
.field private final fragment:Ljava/lang/String;

.field private final query:Ljava/lang/String;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "query"    # Ljava/lang/String;
    .param p3, "fragment"    # Ljava/lang/String;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p1, p0, Lio/sentry/util/UrlUtils$UrlDetails;->url:Ljava/lang/String;

    .line 94
    iput-object p2, p0, Lio/sentry/util/UrlUtils$UrlDetails;->query:Ljava/lang/String;

    .line 95
    iput-object p3, p0, Lio/sentry/util/UrlUtils$UrlDetails;->fragment:Ljava/lang/String;

    .line 96
    return-void
.end method


# virtual methods
.method public applyToRequest(Lio/sentry/protocol/Request;)V
    .locals 1
    .param p1, "request"    # Lio/sentry/protocol/Request;

    .line 119
    if-nez p1, :cond_0

    .line 120
    return-void

    .line 123
    :cond_0
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Request;->setUrl(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->query:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Request;->setQueryString(Ljava/lang/String;)V

    .line 125
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lio/sentry/protocol/Request;->setFragment(Ljava/lang/String;)V

    .line 126
    return-void
.end method

.method public applyToSpan(Lio/sentry/ISpan;)V
    .locals 2
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 129
    if-nez p1, :cond_0

    .line 130
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->query:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 134
    const-string v0, "http.query"

    iget-object v1, p0, Lio/sentry/util/UrlUtils$UrlDetails;->query:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    :cond_1
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 137
    const-string v0, "http.fragment"

    iget-object v1, p0, Lio/sentry/util/UrlUtils$UrlDetails;->fragment:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lio/sentry/ISpan;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    :cond_2
    return-void
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->fragment:Ljava/lang/String;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->query:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlOrFallback()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 104
    const-string v0, "unknown"

    return-object v0

    .line 106
    :cond_0
    iget-object v0, p0, Lio/sentry/util/UrlUtils$UrlDetails;->url:Ljava/lang/String;

    return-object v0
.end method
