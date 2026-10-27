.class public final Lio/sentry/CombinedScopeView;
.super Ljava/lang/Object;
.source "CombinedScopeView.java"

# interfaces
.implements Lio/sentry/IScope;


# instance fields
.field private final globalScope:Lio/sentry/IScope;

.field private final isolationScope:Lio/sentry/IScope;

.field private final scope:Lio/sentry/IScope;


# direct methods
.method public constructor <init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;)V
    .locals 0
    .param p1, "globalScope"    # Lio/sentry/IScope;
    .param p2, "isolationScope"    # Lio/sentry/IScope;
    .param p3, "scope"    # Lio/sentry/IScope;

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    .line 37
    iput-object p2, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    .line 38
    iput-object p3, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    .line 39
    return-void
.end method

.method private getDefaultScopeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;TT;)TT;"
        }
    .end annotation

    .line 434
    .local p1, "globalValue":Ljava/lang/Object;, "TT;"
    .local p2, "isolationValue":Ljava/lang/Object;, "TT;"
    .local p3, "currentValue":Ljava/lang/Object;, "TT;"
    sget-object v0, Lio/sentry/CombinedScopeView$1;->$SwitchMap$io$sentry$ScopeType:[I

    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDefaultScopeType()Lio/sentry/ScopeType;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/ScopeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 443
    return-object p3

    .line 440
    :pswitch_0
    return-object p1

    .line 438
    :pswitch_1
    return-object p2

    .line 436
    :pswitch_2
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getDefaultWriteScope()Lio/sentry/IScope;
    .locals 1

    .line 427
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/sentry/CombinedScopeView;->getSpecificScope(Lio/sentry/ScopeType;)Lio/sentry/IScope;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAttachment(Lio/sentry/Attachment;)V
    .locals 1
    .param p1, "attachment"    # Lio/sentry/Attachment;

    .line 508
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->addAttachment(Lio/sentry/Attachment;)V

    .line 509
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 215
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 216
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 1
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 210
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 211
    return-void
.end method

.method public addEventProcessor(Lio/sentry/EventProcessor;)V
    .locals 1
    .param p1, "eventProcessor"    # Lio/sentry/EventProcessor;

    .line 533
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->addEventProcessor(Lio/sentry/EventProcessor;)V

    .line 534
    return-void
.end method

.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 668
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 669
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    .line 670
    .local v0, "span":Lio/sentry/ISpan;
    if-eqz v0, :cond_0

    .line 671
    invoke-interface {v0, p1, p2}, Lio/sentry/ISpan;->addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 673
    :cond_0
    return-void
.end method

.method public assignTraceContext(Lio/sentry/SentryEvent;)V
    .locals 1
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 633
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0, p1}, Lio/sentry/IScope;->assignTraceContext(Lio/sentry/SentryEvent;)V

    .line 634
    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 1
    .param p1, "client"    # Lio/sentry/ISentryClient;

    .line 615
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->bindClient(Lio/sentry/ISentryClient;)V

    .line 616
    return-void
.end method

.method public clear()V
    .locals 1

    .line 243
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->clear()V

    .line 244
    return-void
.end method

.method public clearAttachments()V
    .locals 1

    .line 513
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->clearAttachments()V

    .line 514
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 1

    .line 220
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->clearBreadcrumbs()V

    .line 221
    return-void
.end method

.method public clearFeatureFlags()V
    .locals 1

    .line 677
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->clearFeatureFlags()V

    .line 678
    return-void
.end method

.method public clearSession()V
    .locals 1

    .line 576
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->clearSession()V

    .line 577
    return-void
.end method

.method public clearTransaction()V
    .locals 1

    .line 225
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->clearTransaction()V

    .line 226
    return-void
.end method

.method public clone()Lio/sentry/IScope;
    .locals 4

    .line 598
    new-instance v0, Lio/sentry/CombinedScopeView;

    iget-object v1, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    iget-object v2, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v3}, Lio/sentry/IScope;->clone()Lio/sentry/IScope;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lio/sentry/CombinedScopeView;-><init>(Lio/sentry/IScope;Lio/sentry/IScope;Lio/sentry/IScope;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->clone()Lio/sentry/IScope;

    move-result-object v0

    return-object v0
.end method

.method public endSession()Lio/sentry/Session;
    .locals 1

    .line 548
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->endSession()Lio/sentry/Session;

    move-result-object v0

    return-object v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getAttachments()Ljava/util/List;

    move-result-object v0

    .line 479
    .local v0, "globalAttachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getAttachments()Ljava/util/List;

    move-result-object v1

    .line 480
    .local v1, "isolationAttachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getAttachments()Ljava/util/List;

    move-result-object v2

    .line 482
    .local v2, "currentAttachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 483
    .local v3, "hasGlobalAttachments":Z
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 484
    .local v4, "hasIsolationAttachments":Z
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 486
    .local v5, "hasCurrentAttachments":Z
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 487
    invoke-direct {p0, v0, v1, v2}, Lio/sentry/CombinedScopeView;->getDefaultScopeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    return-object v6

    .line 489
    :cond_0
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 490
    return-object v0

    .line 492
    :cond_1
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 493
    return-object v1

    .line 495
    :cond_2
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 496
    return-object v2

    .line 499
    :cond_3
    new-instance v6, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 500
    .local v6, "allAttachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 501
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 502
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 503
    return-object v6
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryAttribute;",
            ">;"
        }
    .end annotation

    .line 288
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getAttributes()Ljava/util/Map;

    move-result-object v0

    .line 289
    .local v0, "globalAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryAttribute;>;"
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    .line 290
    invoke-interface {v1}, Lio/sentry/IScope;->getAttributes()Ljava/util/Map;

    move-result-object v1

    .line 291
    .local v1, "isolationAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryAttribute;>;"
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getAttributes()Ljava/util/Map;

    move-result-object v2

    .line 293
    .local v2, "currentAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryAttribute;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 294
    .local v3, "hasGlobalAttributes":Z
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 295
    .local v4, "hasIsolationAttributes":Z
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 297
    .local v5, "hasCurrentAttributes":Z
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 298
    invoke-direct {p0, v0, v1, v2}, Lio/sentry/CombinedScopeView;->getDefaultScopeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    return-object v6

    .line 300
    :cond_0
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 301
    return-object v0

    .line 303
    :cond_1
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 304
    return-object v1

    .line 306
    :cond_2
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 307
    return-object v2

    .line 310
    :cond_3
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 311
    .local v6, "allAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryAttribute;>;"
    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 312
    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 313
    invoke-interface {v6, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 314
    return-object v6
.end method

.method public getBreadcrumbs()Ljava/util/Queue;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object v0

    .line 175
    .local v0, "globalBreadcrumbs":Ljava/util/Queue;, "Ljava/util/Queue<Lio/sentry/Breadcrumb;>;"
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object v1

    .line 176
    .local v1, "isolationBreadcrumbs":Ljava/util/Queue;, "Ljava/util/Queue<Lio/sentry/Breadcrumb;>;"
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getBreadcrumbs()Ljava/util/Queue;

    move-result-object v2

    .line 178
    .local v2, "currentBreadcrumbs":Ljava/util/Queue;, "Ljava/util/Queue<Lio/sentry/Breadcrumb;>;"
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 179
    .local v3, "hasGlobalBreadcrumbs":Z
    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 180
    .local v4, "hasIsolationBreadcrumbs":Z
    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 182
    .local v5, "hasCurrentBreadcrumbs":Z
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 183
    invoke-direct {p0, v0, v1, v2}, Lio/sentry/CombinedScopeView;->getDefaultScopeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Queue;

    return-object v6

    .line 185
    :cond_0
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 186
    return-object v0

    .line 188
    :cond_1
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 189
    return-object v1

    .line 191
    :cond_2
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 192
    return-object v2

    .line 195
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v6, "allBreadcrumbs":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Breadcrumb;>;"
    invoke-interface {v6, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 197
    invoke-interface {v6, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 198
    invoke-interface {v6, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 201
    iget-object v7, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    .line 202
    invoke-interface {v7}, Lio/sentry/IScope;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v7

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v7

    invoke-static {v7}, Lio/sentry/Scope;->createBreadcrumbsList(I)Ljava/util/Queue;

    move-result-object v7

    .line 203
    .local v7, "breadcrumbs":Ljava/util/Queue;, "Ljava/util/Queue<Lio/sentry/Breadcrumb;>;"
    invoke-interface {v7, v6}, Ljava/util/Queue;->addAll(Ljava/util/Collection;)Z

    .line 205
    return-object v7
.end method

.method public getClient()Lio/sentry/ISentryClient;
    .locals 3

    .line 620
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getClient()Lio/sentry/ISentryClient;

    move-result-object v0

    .line 621
    .local v0, "current":Lio/sentry/ISentryClient;
    instance-of v1, v0, Lio/sentry/NoOpSentryClient;

    if-nez v1, :cond_0

    .line 622
    return-object v0

    .line 624
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getClient()Lio/sentry/ISentryClient;

    move-result-object v1

    .line 625
    .local v1, "isolation":Lio/sentry/ISentryClient;
    instance-of v2, v1, Lio/sentry/NoOpSentryClient;

    if-nez v2, :cond_1

    .line 626
    return-object v1

    .line 628
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getClient()Lio/sentry/ISentryClient;

    move-result-object v2

    return-object v2
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 5

    .line 379
    new-instance v0, Lio/sentry/CombinedContextsView;

    iget-object v1, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    .line 380
    invoke-interface {v1}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    .line 381
    invoke-interface {v2}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    .line 382
    invoke-interface {v3}, Lio/sentry/IScope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v3

    .line 383
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getDefaultScopeType()Lio/sentry/ScopeType;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lio/sentry/CombinedContextsView;-><init>(Lio/sentry/protocol/Contexts;Lio/sentry/protocol/Contexts;Lio/sentry/protocol/Contexts;Lio/sentry/ScopeType;)V

    .line 379
    return-object v0
.end method

.method public getEventProcessors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/EventProcessor;",
            ">;"
        }
    .end annotation

    .line 528
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->getEventProcessorsWithOrder()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lio/sentry/util/EventProcessorUtils;->unwrap(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventProcessorsWithOrder()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;",
            ">;"
        }
    .end annotation

    .line 518
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 519
    .local v0, "allEventProcessors":Ljava/util/List;, "Ljava/util/List<Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;>;"
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getEventProcessorsWithOrder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 520
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getEventProcessorsWithOrder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 521
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getEventProcessorsWithOrder()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 522
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 523
    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 339
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    move-result-object v0

    .line 340
    .local v0, "globalExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    move-result-object v1

    .line 341
    .local v1, "isolationExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getExtras()Ljava/util/Map;

    move-result-object v2

    .line 343
    .local v2, "currentExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 344
    .local v3, "hasGlobalExtras":Z
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 345
    .local v4, "hasIsolationExtras":Z
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 347
    .local v5, "hasCurrentExtras":Z
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 348
    invoke-direct {p0, v0, v1, v2}, Lio/sentry/CombinedScopeView;->getDefaultScopeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    return-object v6

    .line 350
    :cond_0
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 351
    return-object v0

    .line 353
    :cond_1
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 354
    return-object v1

    .line 356
    :cond_2
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 357
    return-object v2

    .line 360
    :cond_3
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 361
    .local v6, "allExtras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 362
    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 363
    invoke-interface {v6, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 364
    return-object v6
.end method

.method public getFeatureFlagBuffer()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 4

    .line 687
    nop

    .line 688
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    .line 689
    invoke-interface {v1}, Lio/sentry/IScope;->getFeatureFlagBuffer()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v1

    iget-object v2, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    .line 690
    invoke-interface {v2}, Lio/sentry/IScope;->getFeatureFlagBuffer()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v2

    iget-object v3, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    .line 691
    invoke-interface {v3}, Lio/sentry/IScope;->getFeatureFlagBuffer()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v3

    .line 687
    invoke-static {v0, v1, v2, v3}, Lio/sentry/featureflags/FeatureFlagBuffer;->merged(Lio/sentry/SentryOptions;Lio/sentry/featureflags/IFeatureFlagBuffer;Lio/sentry/featureflags/IFeatureFlagBuffer;Lio/sentry/featureflags/IFeatureFlagBuffer;)Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureFlags()Lio/sentry/protocol/FeatureFlags;
    .locals 1

    .line 682
    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->getFeatureFlagBuffer()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/featureflags/IFeatureFlagBuffer;->getFeatureFlags()Lio/sentry/protocol/FeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprint()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getFingerprint()Ljava/util/List;

    move-result-object v0

    .line 157
    .local v0, "current":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    return-object v0

    .line 160
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getFingerprint()Ljava/util/List;

    move-result-object v1

    .line 161
    .local v1, "isolation":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 162
    return-object v1

    .line 164
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getFingerprint()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 610
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getLastEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    return-object v0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 3

    .line 43
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v0

    .line 44
    .local v0, "current":Lio/sentry/SentryLevel;
    if-eqz v0, :cond_0

    .line 45
    return-object v0

    .line 47
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v1

    .line 48
    .local v1, "isolation":Lio/sentry/SentryLevel;
    if-eqz v1, :cond_1

    .line 49
    return-object v1

    .line 51
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getLevel()Lio/sentry/SentryLevel;

    move-result-object v2

    return-object v2
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 558
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v0

    return-object v0
.end method

.method public getPropagationContext()Lio/sentry/PropagationContext;
    .locals 1

    .line 587
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->getPropagationContext()Lio/sentry/PropagationContext;

    move-result-object v0

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 3

    .line 650
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    .line 651
    .local v0, "current":Lio/sentry/protocol/SentryId;
    sget-object v1, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v1, v0}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    return-object v0

    .line 654
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v1

    .line 655
    .local v1, "isolation":Lio/sentry/protocol/SentryId;
    sget-object v2, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    invoke-virtual {v2, v1}, Lio/sentry/protocol/SentryId;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 656
    return-object v1

    .line 658
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getReplayId()Lio/sentry/protocol/SentryId;

    move-result-object v2

    return-object v2
.end method

.method public getRequest()Lio/sentry/protocol/Request;
    .locals 3

    .line 138
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v0

    .line 139
    .local v0, "current":Lio/sentry/protocol/Request;
    if-eqz v0, :cond_0

    .line 140
    return-object v0

    .line 142
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v1

    .line 143
    .local v1, "isolation":Lio/sentry/protocol/Request;
    if-eqz v1, :cond_1

    .line 144
    return-object v1

    .line 146
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getRequest()Lio/sentry/protocol/Request;

    move-result-object v2

    return-object v2
.end method

.method public getScreen()Ljava/lang/String;
    .locals 3

    .line 120
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getScreen()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 122
    return-object v0

    .line 124
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getScreen()Ljava/lang/String;

    move-result-object v1

    .line 125
    .local v1, "isolation":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 126
    return-object v1

    .line 128
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getScreen()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getSession()Lio/sentry/Session;
    .locals 3

    .line 563
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getSession()Lio/sentry/Session;

    move-result-object v0

    .line 564
    .local v0, "current":Lio/sentry/Session;
    if-eqz v0, :cond_0

    .line 565
    return-object v0

    .line 567
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getSession()Lio/sentry/Session;

    move-result-object v1

    .line 568
    .local v1, "isolation":Lio/sentry/Session;
    if-eqz v1, :cond_1

    .line 569
    return-object v1

    .line 571
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getSession()Lio/sentry/Session;

    move-result-object v2

    return-object v2
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 3

    .line 79
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v0

    .line 80
    .local v0, "current":Lio/sentry/ISpan;
    if-eqz v0, :cond_0

    .line 81
    return-object v0

    .line 83
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v1

    .line 84
    .local v1, "isolation":Lio/sentry/ISpan;
    if-eqz v1, :cond_1

    .line 85
    return-object v1

    .line 87
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getSpan()Lio/sentry/ISpan;

    move-result-object v2

    return-object v2
.end method

.method getSpecificScope(Lio/sentry/ScopeType;)Lio/sentry/IScope;
    .locals 2
    .param p1, "scopeType"    # Lio/sentry/ScopeType;

    .line 448
    if-eqz p1, :cond_0

    .line 449
    sget-object v0, Lio/sentry/CombinedScopeView$1;->$SwitchMap$io$sentry$ScopeType:[I

    invoke-virtual {p1}, Lio/sentry/ScopeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 457
    :pswitch_0
    return-object p0

    .line 455
    :pswitch_1
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    return-object v0

    .line 453
    :pswitch_2
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    return-object v0

    .line 451
    :pswitch_3
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    return-object v0

    .line 463
    :cond_0
    :goto_0
    sget-object v0, Lio/sentry/CombinedScopeView$1;->$SwitchMap$io$sentry$ScopeType:[I

    invoke-virtual {p0}, Lio/sentry/CombinedScopeView;->getOptions()Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getDefaultScopeType()Lio/sentry/ScopeType;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/ScopeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 472
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    return-object v0

    .line 469
    :pswitch_4
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    return-object v0

    .line 467
    :pswitch_5
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    return-object v0

    .line 465
    :pswitch_6
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public getTags()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 248
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v0

    .line 249
    .local v0, "globalTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v1

    .line 250
    .local v1, "isolationTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getTags()Ljava/util/Map;

    move-result-object v2

    .line 252
    .local v2, "currentTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 253
    .local v3, "hasGlobalTags":Z
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 254
    .local v4, "hasIsolationTags":Z
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    .line 256
    .local v5, "hasCurrentTags":Z
    if-nez v3, :cond_0

    if-nez v4, :cond_0

    if-nez v5, :cond_0

    .line 257
    invoke-direct {p0, v0, v1, v2}, Lio/sentry/CombinedScopeView;->getDefaultScopeValue(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    return-object v6

    .line 259
    :cond_0
    if-nez v4, :cond_1

    if-nez v5, :cond_1

    .line 260
    return-object v0

    .line 262
    :cond_1
    if-nez v3, :cond_2

    if-nez v5, :cond_2

    .line 263
    return-object v1

    .line 265
    :cond_2
    if-nez v3, :cond_3

    if-nez v4, :cond_3

    .line 266
    return-object v2

    .line 269
    :cond_3
    new-instance v6, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v6}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 270
    .local v6, "allTags":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v6, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 271
    invoke-interface {v6, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 272
    invoke-interface {v6, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 273
    return-object v6
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 3

    .line 230
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v0

    .line 231
    .local v0, "current":Lio/sentry/ITransaction;
    if-eqz v0, :cond_0

    .line 232
    return-object v0

    .line 234
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v1

    .line 235
    .local v1, "isolation":Lio/sentry/ITransaction;
    if-eqz v1, :cond_1

    .line 236
    return-object v1

    .line 238
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getTransaction()Lio/sentry/ITransaction;

    move-result-object v2

    return-object v2
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 3

    .line 61
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getTransactionName()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "current":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 63
    return-object v0

    .line 65
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getTransactionName()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "isolation":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 67
    return-object v1

    .line 69
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getTransactionName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public getUser()Lio/sentry/protocol/User;
    .locals 3

    .line 102
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v0

    .line 103
    .local v0, "current":Lio/sentry/protocol/User;
    if-eqz v0, :cond_0

    .line 104
    return-object v0

    .line 106
    :cond_0
    iget-object v1, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v1}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v1

    .line 107
    .local v1, "isolation":Lio/sentry/protocol/User;
    if-eqz v1, :cond_1

    .line 108
    return-object v1

    .line 110
    :cond_1
    iget-object v2, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v2}, Lio/sentry/IScope;->getUser()Lio/sentry/protocol/User;

    move-result-object v2

    return-object v2
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 334
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->removeAttribute(Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public removeContexts(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 423
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->removeContexts(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 374
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->removeExtra(Ljava/lang/String;)V

    .line 375
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 283
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->removeTag(Ljava/lang/String;)V

    .line 284
    return-void
.end method

.method public replaceOptions(Lio/sentry/SentryOptions;)V
    .locals 1
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 645
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0, p1}, Lio/sentry/IScope;->replaceOptions(Lio/sentry/SentryOptions;)V

    .line 646
    return-void
.end method

.method public setActiveSpan(Lio/sentry/ISpan;)V
    .locals 1
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 92
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setActiveSpan(Lio/sentry/ISpan;)V

    .line 93
    return-void
.end method

.method public setAttribute(Lio/sentry/SentryAttribute;)V
    .locals 1
    .param p1, "attribute"    # Lio/sentry/SentryAttribute;

    .line 324
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setAttribute(Lio/sentry/SentryAttribute;)V

    .line 325
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 319
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public setAttributes(Lio/sentry/SentryAttributes;)V
    .locals 1
    .param p1, "attributes"    # Lio/sentry/SentryAttributes;

    .line 329
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setAttributes(Lio/sentry/SentryAttributes;)V

    .line 330
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 393
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setContexts(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 394
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Character;

    .line 418
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setContexts(Ljava/lang/String;Ljava/lang/Character;)V

    .line 419
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 403
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setContexts(Ljava/lang/String;Ljava/lang/Number;)V

    .line 404
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 388
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 398
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setContexts(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 408
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setContexts(Ljava/lang/String;Ljava/util/Collection;)V

    .line 409
    return-void
.end method

.method public setContexts(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Object;

    .line 413
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setContexts(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 414
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 369
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 169
    .local p1, "fingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setFingerprint(Ljava/util/List;)V

    .line 170
    return-void
.end method

.method public setLastEventId(Lio/sentry/protocol/SentryId;)V
    .locals 1
    .param p1, "lastEventId"    # Lio/sentry/protocol/SentryId;

    .line 603
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setLastEventId(Lio/sentry/protocol/SentryId;)V

    .line 604
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->isolationScope:Lio/sentry/IScope;

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setLastEventId(Lio/sentry/protocol/SentryId;)V

    .line 605
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->scope:Lio/sentry/IScope;

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setLastEventId(Lio/sentry/protocol/SentryId;)V

    .line 606
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 1
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 56
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setLevel(Lio/sentry/SentryLevel;)V

    .line 57
    return-void
.end method

.method public setPropagationContext(Lio/sentry/PropagationContext;)V
    .locals 1
    .param p1, "propagationContext"    # Lio/sentry/PropagationContext;

    .line 581
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setPropagationContext(Lio/sentry/PropagationContext;)V

    .line 582
    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 1
    .param p1, "replayId"    # Lio/sentry/protocol/SentryId;

    .line 663
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setReplayId(Lio/sentry/protocol/SentryId;)V

    .line 664
    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 1
    .param p1, "request"    # Lio/sentry/protocol/Request;

    .line 151
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setRequest(Lio/sentry/protocol/Request;)V

    .line 152
    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 1
    .param p1, "screen"    # Ljava/lang/String;

    .line 133
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setScreen(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "span"    # Lio/sentry/ISpan;
    .param p3, "transactionName"    # Ljava/lang/String;

    .line 639
    iget-object v0, p0, Lio/sentry/CombinedScopeView;->globalScope:Lio/sentry/IScope;

    invoke-interface {v0, p1, p2, p3}, Lio/sentry/IScope;->setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V

    .line 640
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 278
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lio/sentry/IScope;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    return-void
.end method

.method public setTransaction(Lio/sentry/ITransaction;)V
    .locals 1
    .param p1, "transaction"    # Lio/sentry/ITransaction;

    .line 97
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setTransaction(Lio/sentry/ITransaction;)V

    .line 98
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 1
    .param p1, "transaction"    # Ljava/lang/String;

    .line 74
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setTransaction(Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 1
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 115
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->setUser(Lio/sentry/protocol/User;)V

    .line 116
    return-void
.end method

.method public startSession()Lio/sentry/Scope$SessionPair;
    .locals 1

    .line 543
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/IScope;->startSession()Lio/sentry/Scope$SessionPair;

    move-result-object v0

    return-object v0
.end method

.method public withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;
    .locals 1
    .param p1, "callback"    # Lio/sentry/Scope$IWithPropagationContext;

    .line 593
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;

    move-result-object v0

    return-object v0
.end method

.method public withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;
    .locals 1
    .param p1, "sessionCallback"    # Lio/sentry/Scope$IWithSession;

    .line 538
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;

    move-result-object v0

    return-object v0
.end method

.method public withTransaction(Lio/sentry/Scope$IWithTransaction;)V
    .locals 1
    .param p1, "callback"    # Lio/sentry/Scope$IWithTransaction;

    .line 553
    invoke-direct {p0}, Lio/sentry/CombinedScopeView;->getDefaultWriteScope()Lio/sentry/IScope;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/sentry/IScope;->withTransaction(Lio/sentry/Scope$IWithTransaction;)V

    .line 554
    return-void
.end method
