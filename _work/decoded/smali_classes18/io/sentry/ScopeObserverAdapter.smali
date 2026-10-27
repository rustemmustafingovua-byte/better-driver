.class public abstract Lio/sentry/ScopeObserverAdapter;
.super Ljava/lang/Object;
.source "ScopeObserverAdapter.java"

# interfaces
.implements Lio/sentry/IScopeObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addAttachment(Lio/sentry/Attachment;)V
    .locals 0
    .param p1, "attachment"    # Lio/sentry/Attachment;

    .line 62
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 0
    .param p1, "crumb"    # Lio/sentry/Breadcrumb;

    .line 17
    return-void
.end method

.method public clearAttachments()V
    .locals 0

    .line 65
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 35
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setBreadcrumbs(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lio/sentry/Breadcrumb;",
            ">;)V"
        }
    .end annotation

    .line 20
    .local p1, "breadcrumbs":Ljava/util/Collection;, "Ljava/util/Collection<Lio/sentry/Breadcrumb;>;"
    return-void
.end method

.method public setContexts(Lio/sentry/protocol/Contexts;)V
    .locals 0
    .param p1, "contexts"    # Lio/sentry/protocol/Contexts;

    .line 50
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 38
    .local p1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    return-void
.end method

.method public setFingerprint(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    .local p1, "fingerprint":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 47
    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "replayId"    # Lio/sentry/protocol/SentryId;

    .line 59
    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 0
    .param p1, "request"    # Lio/sentry/protocol/Request;

    .line 41
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 23
    return-void
.end method

.method public setTags(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 29
    .local p1, "tags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V
    .locals 0
    .param p1, "spanContext"    # Lio/sentry/SpanContext;
    .param p2, "scope"    # Lio/sentry/IScope;

    .line 56
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction"    # Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 0
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 14
    return-void
.end method
