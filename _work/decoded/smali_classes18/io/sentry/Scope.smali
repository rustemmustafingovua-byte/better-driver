.class public final Lio/sentry/Scope;
.super Ljava/lang/Object;
.source "Scope.java"

# interfaces
.implements Lio/sentry/IScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/Scope$IWithSession;,
        Lio/sentry/Scope$SessionPair;,
        Lio/sentry/Scope$IWithTransaction;,
        Lio/sentry/Scope$IWithPropagationContext;
    }
.end annotation


# instance fields
.field private activeSpan:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lio/sentry/ISpan;",
            ">;"
        }
    .end annotation
.end field

.field private attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private attributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private volatile breadcrumbs:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation
.end field

.field private client:Lio/sentry/ISentryClient;

.field private contexts:Lio/sentry/protocol/Contexts;

.field private eventProcessors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;",
            ">;"
        }
    .end annotation
.end field

.field private extra:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

.field private fingerprint:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile lastEventId:Lio/sentry/protocol/SentryId;

.field private level:Lio/sentry/SentryLevel;

.field private volatile options:Lio/sentry/SentryOptions;

.field private propagationContext:Lio/sentry/PropagationContext;

.field private final propagationContextLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private replayId:Lio/sentry/protocol/SentryId;

.field private request:Lio/sentry/protocol/Request;

.field private screen:Ljava/lang/String;

.field private volatile session:Lio/sentry/Session;

.field private final sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private tags:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final throwableToSpan:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Throwable;",
            "Lio/sentry/util/Pair<",
            "Ljava/lang/ref/WeakReference<",
            "Lio/sentry/ISpan;",
            ">;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private transaction:Lio/sentry/ITransaction;

.field private final transactionLock:Lio/sentry/util/AutoClosableReentrantLock;

.field private transactionName:Ljava/lang/String;

.field private user:Lio/sentry/protocol/User;


# direct methods
.method private constructor <init>(Lio/sentry/Scope;)V
    .locals 14
    .param p1, "scope"    # Lio/sentry/Scope;

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/Scope;->activeSpan:Ljava/lang/ref/WeakReference;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->attributes:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 87
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 90
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->transactionLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 94
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->propagationContextLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 98
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    .line 106
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    .line 108
    invoke-static {}, Lio/sentry/NoOpSentryClient;->getInstance()Lio/sentry/NoOpSentryClient;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Scope;->client:Lio/sentry/ISentryClient;

    .line 110
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Scope;->throwableToSpan:Ljava/util/Map;

    .line 129
    iget-object v0, p1, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    iput-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 130
    iget-object v0, p1, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    iput-object v0, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    .line 131
    iget-object v0, p1, Lio/sentry/Scope;->activeSpan:Ljava/lang/ref/WeakReference;

    iput-object v0, p0, Lio/sentry/Scope;->activeSpan:Ljava/lang/ref/WeakReference;

    .line 132
    iget-object v0, p1, Lio/sentry/Scope;->session:Lio/sentry/Session;

    iput-object v0, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 133
    iget-object v0, p1, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 134
    iget-object v0, p1, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    iput-object v0, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    .line 135
    iget-object v0, p1, Lio/sentry/Scope;->client:Lio/sentry/ISentryClient;

    iput-object v0, p0, Lio/sentry/Scope;->client:Lio/sentry/ISentryClient;

    .line 136
    invoke-virtual {p1}, Lio/sentry/Scope;->getLastEventId()Lio/sentry/protocol/SentryId;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Scope;->lastEventId:Lio/sentry/protocol/SentryId;

    .line 138
    iget-object v0, p1, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    .line 139
    .local v0, "userRef":Lio/sentry/protocol/User;
    if-eqz v0, :cond_0

    new-instance v2, Lio/sentry/protocol/User;

    invoke-direct {v2, v0}, Lio/sentry/protocol/User;-><init>(Lio/sentry/protocol/User;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    .line 140
    iget-object v2, p1, Lio/sentry/Scope;->screen:Ljava/lang/String;

    iput-object v2, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    .line 141
    iget-object v2, p1, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    iput-object v2, p0, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    .line 143
    iget-object v2, p1, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    .line 144
    .local v2, "requestRef":Lio/sentry/protocol/Request;
    if-eqz v2, :cond_1

    new-instance v1, Lio/sentry/protocol/Request;

    invoke-direct {v1, v2}, Lio/sentry/protocol/Request;-><init>(Lio/sentry/protocol/Request;)V

    :cond_1
    iput-object v1, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    .line 146
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p1, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 147
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v3, p1, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    invoke-direct {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 149
    iget-object v1, p1, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    const/4 v3, 0x0

    new-array v4, v3, [Lio/sentry/Breadcrumb;

    invoke-interface {v1, v4}, Ljava/util/Queue;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lio/sentry/Breadcrumb;

    .line 151
    .local v1, "breadcrumbsRef":[Lio/sentry/Breadcrumb;
    iget-object v4, p1, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v4

    invoke-static {v4}, Lio/sentry/Scope;->createBreadcrumbsList(I)Ljava/util/Queue;

    move-result-object v4

    .line 153
    .local v4, "breadcrumbsClone":Ljava/util/Queue;, "Ljava/util/Queue<Lio/sentry/Breadcrumb;>;"
    array-length v5, v1

    :goto_1
    if-ge v3, v5, :cond_2

    aget-object v6, v1, v3

    .line 154
    .local v6, "item":Lio/sentry/Breadcrumb;
    new-instance v7, Lio/sentry/Breadcrumb;

    invoke-direct {v7, v6}, Lio/sentry/Breadcrumb;-><init>(Lio/sentry/Breadcrumb;)V

    .line 155
    .local v7, "breadcrumbClone":Lio/sentry/Breadcrumb;
    invoke-interface {v4, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 153
    .end local v6    # "item":Lio/sentry/Breadcrumb;
    .end local v7    # "breadcrumbClone":Lio/sentry/Breadcrumb;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 157
    :cond_2
    iput-object v4, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 159
    iget-object v3, p1, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 161
    .local v3, "tagsRef":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v5, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v5}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 163
    .local v5, "tagsClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 164
    .local v7, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz v7, :cond_3

    .line 165
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-interface {v5, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    .end local v7    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    goto :goto_2

    .line 169
    :cond_4
    iput-object v5, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 171
    iget-object v6, p1, Lio/sentry/Scope;->attributes:Ljava/util/Map;

    .line 173
    .local v6, "attributesRef":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryAttribute;>;"
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 175
    .local v7, "attributesClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lio/sentry/SentryAttribute;>;"
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 176
    .local v9, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lio/sentry/SentryAttribute;>;"
    if-eqz v9, :cond_5

    .line 177
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lio/sentry/SentryAttribute;

    invoke-interface {v7, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    .end local v9    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lio/sentry/SentryAttribute;>;"
    :cond_5
    goto :goto_3

    .line 181
    :cond_6
    iput-object v7, p0, Lio/sentry/Scope;->attributes:Ljava/util/Map;

    .line 183
    iget-object v8, p1, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 185
    .local v8, "extraRef":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v9, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v9}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 187
    .local v9, "extraClone":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 188
    .local v11, "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v11, :cond_7

    .line 189
    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-interface {v9, v12, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    .end local v11    # "item":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_7
    goto :goto_4

    .line 193
    :cond_8
    iput-object v9, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 195
    new-instance v10, Lio/sentry/protocol/Contexts;

    iget-object v11, p1, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-direct {v10, v11}, Lio/sentry/protocol/Contexts;-><init>(Lio/sentry/protocol/Contexts;)V

    iput-object v10, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 197
    new-instance v10, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v11, p1, Lio/sentry/Scope;->attachments:Ljava/util/List;

    invoke-direct {v10, v11}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v10, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    .line 199
    iget-object v10, p1, Lio/sentry/Scope;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    invoke-interface {v10}, Lio/sentry/featureflags/IFeatureFlagBuffer;->clone()Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v10

    iput-object v10, p0, Lio/sentry/Scope;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 201
    new-instance v10, Lio/sentry/PropagationContext;

    iget-object v11, p1, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    invoke-direct {v10, v11}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/PropagationContext;)V

    iput-object v10, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    .line 202
    return-void
.end method

.method public constructor <init>(Lio/sentry/SentryOptions;)V
    .locals 2
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/Scope;->activeSpan:Ljava/lang/ref/WeakReference;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    .line 70
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->attributes:Ljava/util/Map;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    .line 87
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 90
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->transactionLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 94
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->propagationContextLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 98
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    .line 106
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    .line 108
    invoke-static {}, Lio/sentry/NoOpSentryClient;->getInstance()Lio/sentry/NoOpSentryClient;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Scope;->client:Lio/sentry/ISentryClient;

    .line 110
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 111
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Scope;->throwableToSpan:Ljava/util/Map;

    .line 121
    const-string v0, "SentryOptions is required."

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    iput-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 122
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v0

    invoke-static {v0}, Lio/sentry/Scope;->createBreadcrumbsList(I)Ljava/util/Queue;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 123
    invoke-static {p1}, Lio/sentry/featureflags/FeatureFlagBuffer;->create(Lio/sentry/SentryOptions;)Lio/sentry/featureflags/IFeatureFlagBuffer;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/Scope;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    .line 124
    new-instance v0, Lio/sentry/PropagationContext;

    invoke-direct {v0}, Lio/sentry/PropagationContext;-><init>()V

    iput-object v0, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    .line 125
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    iput-object v0, p0, Lio/sentry/Scope;->lastEventId:Lio/sentry/protocol/SentryId;

    .line 126
    return-void
.end method

.method static createBreadcrumbsList(I)Ljava/util/Queue;
    .locals 1
    .param p0, "maxBreadcrumb"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    .line 956
    if-lez p0, :cond_0

    .line 957
    new-instance v0, Lio/sentry/CircularFifoQueue;

    invoke-direct {v0, p0}, Lio/sentry/CircularFifoQueue;-><init>(I)V

    invoke-static {v0}, Lio/sentry/SynchronizedQueue;->synchronizedQueue(Ljava/util/Queue;)Lio/sentry/SynchronizedQueue;

    move-result-object v0

    goto :goto_0

    .line 958
    :cond_0
    new-instance v0, Lio/sentry/DisabledQueue;

    invoke-direct {v0}, Lio/sentry/DisabledQueue;-><init>()V

    .line 956
    :goto_0
    return-object v0
.end method

.method private executeBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;
    .locals 4
    .param p1, "callback"    # Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;
    .param p2, "breadcrumb"    # Lio/sentry/Breadcrumb;
    .param p3, "hint"    # Lio/sentry/Hint;

    .line 468
    :try_start_0
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->enter()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 469
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_1
    invoke-interface {p1, p2, p3}, Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;->execute(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    if-eqz v0, :cond_0

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 469
    :cond_0
    return-object v1

    .line 468
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_3
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "callback":Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;
    .end local p2    # "breadcrumb":Lio/sentry/Breadcrumb;
    .end local p3    # "hint":Lio/sentry/Hint;
    :cond_1
    :goto_0
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 470
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    .restart local p1    # "callback":Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;
    .restart local p2    # "breadcrumb":Lio/sentry/Breadcrumb;
    .restart local p3    # "hint":Lio/sentry/Hint;
    :catchall_2
    move-exception v0

    .line 471
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 472
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    .line 473
    const-string v3, "The BeforeBreadcrumb callback threw an exception. Dropping breadcrumb."

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 477
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public addAttachment(Lio/sentry/Attachment;)V
    .locals 2
    .param p1, "attachment"    # Lio/sentry/Attachment;

    .line 932
    iget-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 935
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->addAttachment(Lio/sentry/Attachment;)V

    .line 936
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 937
    :cond_0
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 1
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 524
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V

    .line 525
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 5
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 490
    if-eqz p1, :cond_6

    iget-object v0, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    instance-of v0, v0, Lio/sentry/DisabledQueue;

    if-eqz v0, :cond_0

    goto :goto_2

    .line 494
    :cond_0
    invoke-static {}, Lio/sentry/util/SentryCallbackReentrancyGuard;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 495
    return-void

    .line 497
    :cond_1
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getBeforeBreadcrumb()Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;

    move-result-object v0

    .line 498
    .local v0, "callback":Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;
    if-eqz v0, :cond_3

    .line 499
    if-nez p2, :cond_2

    .line 500
    new-instance v1, Lio/sentry/Hint;

    invoke-direct {v1}, Lio/sentry/Hint;-><init>()V

    move-object p2, v1

    .line 502
    :cond_2
    invoke-direct {p0, v0, p1, p2}, Lio/sentry/Scope;->executeBeforeBreadcrumb(Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;Lio/sentry/Breadcrumb;Lio/sentry/Hint;)Lio/sentry/Breadcrumb;

    move-result-object p1

    .line 504
    :cond_3
    if-eqz p1, :cond_5

    .line 505
    iget-object v1, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    invoke-interface {v1, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 507
    iget-object v1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IScopeObserver;

    .line 508
    .local v2, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v2, p1}, Lio/sentry/IScopeObserver;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 509
    iget-object v3, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    invoke-interface {v2, v3}, Lio/sentry/IScopeObserver;->setBreadcrumbs(Ljava/util/Collection;)V

    .line 510
    .end local v2    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    :cond_4
    goto :goto_1

    .line 512
    :cond_5
    iget-object v1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->INFO:Lio/sentry/SentryLevel;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Breadcrumb was dropped by beforeBreadcrumb"

    invoke-interface {v1, v2, v4, v3}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 514
    :goto_1
    return-void

    .line 491
    .end local v0    # "callback":Lio/sentry/SentryOptions$BeforeBreadcrumbCallback;
    :cond_6
    :goto_2
    return-void
.end method

.method public addEventProcessor(Lio/sentry/EventProcessor;)V
    .locals 3
    .param p1, "eventProcessor"    # Lio/sentry/EventProcessor;

    .line 992
    iget-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    new-instance v1, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;

    invoke-interface {p1}, Lio/sentry/EventProcessor;->getOrder()Ljava/lang/Long;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;-><init>(Lio/sentry/EventProcessor;Ljava/lang/Long;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 993
    return-void
.end method

.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 1220
    iget-object v0, p0, Lio/sentry/Scope;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    invoke-interface {v0, p1, p2}, Lio/sentry/featureflags/IFeatureFlagBuffer;->add(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1221
    return-void
.end method

.method public assignTraceContext(Lio/sentry/SentryEvent;)V
    .locals 5
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 1241
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->isTracingEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1242
    iget-object v0, p0, Lio/sentry/Scope;->throwableToSpan:Ljava/util/Map;

    .line 1243
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getThrowable()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lio/sentry/util/ExceptionUtils;->findRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/util/Pair;

    .line 1244
    .local v0, "pair":Lio/sentry/util/Pair;, "Lio/sentry/util/Pair<Ljava/lang/ref/WeakReference<Lio/sentry/ISpan;>;Ljava/lang/String;>;"
    if-eqz v0, :cond_1

    .line 1245
    invoke-virtual {v0}, Lio/sentry/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 1246
    .local v1, "spanWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/sentry/ISpan;>;"
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v2

    invoke-virtual {v2}, Lio/sentry/protocol/Contexts;->getTrace()Lio/sentry/SpanContext;

    move-result-object v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    .line 1247
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/ISpan;

    .line 1248
    .local v2, "span":Lio/sentry/ISpan;
    if-eqz v2, :cond_0

    .line 1249
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v3

    invoke-interface {v2}, Lio/sentry/ISpan;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v4

    invoke-virtual {v3, v4}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    .line 1252
    .end local v2    # "span":Lio/sentry/ISpan;
    :cond_0
    invoke-virtual {v0}, Lio/sentry/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1253
    .local v2, "transactionName":Ljava/lang/String;
    invoke-virtual {p1}, Lio/sentry/SentryEvent;->getTransaction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    .line 1254
    invoke-virtual {p1, v2}, Lio/sentry/SentryEvent;->setTransaction(Ljava/lang/String;)V

    .line 1258
    .end local v0    # "pair":Lio/sentry/util/Pair;, "Lio/sentry/util/Pair<Ljava/lang/ref/WeakReference<Lio/sentry/ISpan;>;Ljava/lang/String;>;"
    .end local v1    # "spanWeakRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Lio/sentry/ISpan;>;"
    .end local v2    # "transactionName":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 0
    .param p1, "client"    # Lio/sentry/ISentryClient;

    .line 1210
    iput-object p1, p0, Lio/sentry/Scope;->client:Lio/sentry/ISentryClient;

    .line 1211
    return-void
.end method

.method public clear()V
    .locals 3

    .line 565
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    .line 566
    iput-object v0, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    .line 567
    iput-object v0, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    .line 568
    iput-object v0, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    .line 569
    iget-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 570
    invoke-virtual {p0}, Lio/sentry/Scope;->clearBreadcrumbs()V

    .line 571
    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 572
    iget-object v0, p0, Lio/sentry/Scope;->attributes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 573
    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 574
    iget-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->clear()V

    .line 575
    iget-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 576
    invoke-virtual {p0}, Lio/sentry/Scope;->clearTransaction()V

    .line 577
    invoke-virtual {p0}, Lio/sentry/Scope;->clearAttachments()V

    .line 578
    invoke-virtual {p0}, Lio/sentry/Scope;->clearFeatureFlags()V

    .line 580
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 581
    .local v1, "observer":Lio/sentry/IScopeObserver;
    iget-object v2, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setContexts(Lio/sentry/protocol/Contexts;)V

    .line 582
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 583
    :cond_0
    return-void
.end method

.method public clearAttachments()V
    .locals 2

    .line 942
    iget-object v0, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 944
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 945
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1}, Lio/sentry/IScopeObserver;->clearAttachments()V

    .line 946
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 947
    :cond_0
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 3

    .line 530
    iget-object v0, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 532
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 533
    .local v1, "observer":Lio/sentry/IScopeObserver;
    iget-object v2, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setBreadcrumbs(Ljava/util/Collection;)V

    .line 534
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 535
    :cond_0
    return-void
.end method

.method public clearFeatureFlags()V
    .locals 1

    .line 1225
    iget-object v0, p0, Lio/sentry/Scope;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    invoke-interface {v0}, Lio/sentry/featureflags/IFeatureFlagBuffer;->clear()V

    .line 1226
    return-void
.end method

.method public clearSession()V
    .locals 3

    .line 1156
    iget-object v0, p0, Lio/sentry/Scope;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 1157
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1158
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 1159
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 1156
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public clearTransaction()V
    .locals 3

    .line 540
    iget-object v0, p0, Lio/sentry/Scope;->transactionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 541
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 542
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 543
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    iput-object v1, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    .line 545
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IScopeObserver;

    .line 546
    .local v2, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v2, v1}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    .line 547
    invoke-interface {v2, v1, p0}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V

    .line 548
    .end local v2    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 549
    :cond_1
    return-void

    .line 540
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public clone()Lio/sentry/IScope;
    .locals 1

    .line 1195
    new-instance v0, Lio/sentry/Scope;

    invoke-direct {v0, p0}, Lio/sentry/Scope;-><init>(Lio/sentry/Scope;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 36
    invoke-virtual {p0}, Lio/sentry/Scope;->clone()Lio/sentry/IScope;

    move-result-object v0

    return-object v0
.end method

.method public endSession()Lio/sentry/Session;
    .locals 4

    .line 1114
    const/4 v0, 0x0

    .line 1115
    .local v0, "previousSession":Lio/sentry/Session;
    iget-object v1, p0, Lio/sentry/Scope;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 1116
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    if-eqz v2, :cond_0

    .line 1117
    iget-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {v2}, Lio/sentry/Session;->end()V

    .line 1119
    iget-object v2, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/IContinuousProfiler;->reevaluateSampling()V

    .line 1120
    iget-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {v2}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v2

    move-object v0, v2

    .line 1121
    const/4 v2, 0x0

    iput-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1123
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 1124
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-object v0

    .line 1115
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method public getAttachments()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation

    .line 921
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lio/sentry/Scope;->attachments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getAttributes()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lio/sentry/SentryAttribute;",
            ">;"
        }
    .end annotation

    .line 647
    iget-object v0, p0, Lio/sentry/Scope;->attributes:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getBreadcrumbs()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lio/sentry/Breadcrumb;",
            ">;"
        }
    .end annotation

    .line 453
    iget-object v0, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    return-object v0
.end method

.method public getClient()Lio/sentry/ISentryClient;
    .locals 1

    .line 1215
    iget-object v0, p0, Lio/sentry/Scope;->client:Lio/sentry/ISentryClient;

    return-object v0
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 1

    .line 752
    iget-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

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

    .line 970
    iget-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    invoke-static {v0}, Lio/sentry/util/EventProcessorUtils;->unwrap(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventProcessorsWithOrder()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/internal/eventprocessor/EventProcessorAndOrder;",
            ">;"
        }
    .end annotation

    .line 982
    iget-object v0, p0, Lio/sentry/Scope;->eventProcessors:Ljava/util/List;

    return-object v0
.end method

.method public getExtras()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 701
    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    return-object v0
.end method

.method public getFeatureFlagBuffer()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 1

    .line 1235
    iget-object v0, p0, Lio/sentry/Scope;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    return-object v0
.end method

.method public getFeatureFlags()Lio/sentry/protocol/FeatureFlags;
    .locals 1

    .line 1230
    iget-object v0, p0, Lio/sentry/Scope;->featureFlags:Lio/sentry/featureflags/IFeatureFlagBuffer;

    invoke-interface {v0}, Lio/sentry/featureflags/IFeatureFlagBuffer;->getFeatureFlags()Lio/sentry/protocol/FeatureFlags;

    move-result-object v0

    return-object v0
.end method

.method public getFingerprint()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 424
    iget-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    return-object v0
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 1205
    iget-object v0, p0, Lio/sentry/Scope;->lastEventId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 1

    .line 211
    iget-object v0, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 1144
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public getPropagationContext()Lio/sentry/PropagationContext;
    .locals 1

    .line 1175
    iget-object v0, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 379
    iget-object v0, p0, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getRequest()Lio/sentry/protocol/Request;
    .locals 1

    .line 398
    iget-object v0, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lio/sentry/Session;
    .locals 1

    .line 1150
    iget-object v0, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    return-object v0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 3

    .line 269
    iget-object v0, p0, Lio/sentry/Scope;->activeSpan:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ISpan;

    .line 270
    .local v0, "activeSpan":Lio/sentry/ISpan;
    if-eqz v0, :cond_0

    .line 271
    return-object v0

    .line 274
    :cond_0
    iget-object v1, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 275
    .local v1, "tx":Lio/sentry/ITransaction;
    if-eqz v1, :cond_1

    .line 276
    invoke-interface {v1}, Lio/sentry/ITransaction;->getLatestActiveSpan()Lio/sentry/ISpan;

    move-result-object v2

    .line 278
    .local v2, "span":Lio/sentry/ISpan;
    if-eqz v2, :cond_1

    .line 279
    return-object v2

    .line 282
    .end local v2    # "span":Lio/sentry/ISpan;
    :cond_1
    return-object v1
.end method

.method public getTags()Ljava/util/Map;
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

    .line 594
    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-static {v0}, Lio/sentry/util/CollectionUtils;->newConcurrentHashMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 1

    .line 559
    iget-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    return-object v0
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 2

    .line 235
    iget-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 236
    .local v0, "tx":Lio/sentry/ITransaction;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method public getUser()Lio/sentry/protocol/User;
    .locals 1

    .line 319
    iget-object v0, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 686
    if-nez p1, :cond_0

    .line 687
    return-void

    .line 689
    :cond_0
    iget-object v0, p0, Lio/sentry/Scope;->attributes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    return-void
.end method

.method public removeContexts(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 906
    if-nez p1, :cond_0

    .line 907
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1}, Lio/sentry/protocol/Contexts;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 734
    if-nez p1, :cond_0

    .line 735
    return-void

    .line 737
    :cond_0
    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 739
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 740
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->removeExtra(Ljava/lang/String;)V

    .line 741
    iget-object v2, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setExtras(Ljava/util/Map;)V

    .line 742
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 743
    :cond_1
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .line 627
    if-nez p1, :cond_0

    .line 628
    return-void

    .line 630
    :cond_0
    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 633
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->removeTag(Ljava/lang/String;)V

    .line 634
    iget-object v2, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setTags(Ljava/util/Map;)V

    .line 635
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 636
    :cond_1
    return-void
.end method

.method public replaceOptions(Lio/sentry/SentryOptions;)V
    .locals 3
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 1280
    iput-object p1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 1281
    iget-object v0, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 1282
    .local v0, "oldBreadcrumbs":Ljava/util/Queue;, "Ljava/util/Queue<Lio/sentry/Breadcrumb;>;"
    invoke-virtual {p1}, Lio/sentry/SentryOptions;->getMaxBreadcrumbs()I

    move-result v1

    invoke-static {v1}, Lio/sentry/Scope;->createBreadcrumbsList(I)Ljava/util/Queue;

    move-result-object v1

    iput-object v1, p0, Lio/sentry/Scope;->breadcrumbs:Ljava/util/Queue;

    .line 1283
    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/Breadcrumb;

    .line 1288
    .local v2, "breadcrumb":Lio/sentry/Breadcrumb;
    invoke-virtual {p0, v2}, Lio/sentry/Scope;->addBreadcrumb(Lio/sentry/Breadcrumb;)V

    .line 1289
    .end local v2    # "breadcrumb":Lio/sentry/Breadcrumb;
    goto :goto_0

    .line 1290
    :cond_0
    return-void
.end method

.method public setActiveSpan(Lio/sentry/ISpan;)V
    .locals 1
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 287
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/Scope;->activeSpan:Ljava/lang/ref/WeakReference;

    .line 288
    return-void
.end method

.method public setAttribute(Lio/sentry/SentryAttribute;)V
    .locals 2
    .param p1, "attribute"    # Lio/sentry/SentryAttribute;

    .line 666
    if-nez p1, :cond_0

    .line 667
    return-void

    .line 669
    :cond_0
    iget-object v0, p0, Lio/sentry/Scope;->attributes:Ljava/util/Map;

    invoke-virtual {p1}, Lio/sentry/SentryAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 653
    if-nez p1, :cond_0

    .line 654
    return-void

    .line 656
    :cond_0
    if-nez p2, :cond_1

    .line 657
    invoke-virtual {p0, p1}, Lio/sentry/Scope;->removeAttribute(Ljava/lang/String;)V

    goto :goto_0

    .line 659
    :cond_1
    iget-object v0, p0, Lio/sentry/Scope;->attributes:Ljava/util/Map;

    invoke-static {p1, p2}, Lio/sentry/SentryAttribute;->named(Ljava/lang/String;Ljava/lang/Object;)Lio/sentry/SentryAttribute;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 661
    :goto_0
    return-void
.end method

.method public setAttributes(Lio/sentry/SentryAttributes;)V
    .locals 4
    .param p1, "attributes"    # Lio/sentry/SentryAttributes;

    .line 675
    if-nez p1, :cond_0

    .line 676
    return-void

    .line 678
    :cond_0
    invoke-virtual {p1}, Lio/sentry/SentryAttributes;->getAttributes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/SentryAttribute;

    .line 679
    .local v1, "attribute":Lio/sentry/SentryAttribute;
    iget-object v2, p0, Lio/sentry/Scope;->attributes:Ljava/util/Map;

    invoke-virtual {v1}, Lio/sentry/SentryAttribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    .end local v1    # "attribute":Lio/sentry/SentryAttribute;
    goto :goto_0

    .line 681
    :cond_1
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 781
    if-nez p1, :cond_0

    .line 782
    return-void

    .line 784
    :cond_0
    if-nez p2, :cond_1

    .line 786
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 788
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 789
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    .line 792
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    :goto_0
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Character;

    .line 886
    if-nez p1, :cond_0

    .line 887
    return-void

    .line 889
    :cond_0
    if-nez p2, :cond_1

    .line 891
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 893
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 894
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Character;>;"
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    .line 897
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Character;>;"
    :goto_0
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 823
    if-nez p1, :cond_0

    .line 824
    return-void

    .line 826
    :cond_0
    if-nez p2, :cond_1

    .line 828
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 830
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 831
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Number;>;"
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    .line 834
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Number;>;"
    :goto_0
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 763
    if-nez p1, :cond_0

    .line 764
    return-void

    .line 766
    :cond_0
    iget-object v0, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-virtual {v0, p1, p2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 769
    .local v1, "observer":Lio/sentry/IScopeObserver;
    iget-object v2, p0, Lio/sentry/Scope;->contexts:Lio/sentry/protocol/Contexts;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setContexts(Lio/sentry/protocol/Contexts;)V

    .line 770
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 771
    :cond_1
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 802
    if-nez p1, :cond_0

    .line 803
    return-void

    .line 805
    :cond_0
    if-nez p2, :cond_1

    .line 807
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 809
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 810
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 811
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    .line 813
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :goto_0
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 844
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p1, :cond_0

    .line 845
    return-void

    .line 847
    :cond_0
    if-nez p2, :cond_1

    .line 849
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 851
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 852
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<*>;>;"
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    .line 855
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Collection<*>;>;"
    :goto_0
    return-void
.end method

.method public setContexts(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Object;

    .line 865
    if-nez p1, :cond_0

    .line 866
    return-void

    .line 868
    :cond_0
    if-nez p2, :cond_1

    .line 870
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 872
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 873
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    const-string v1, "value"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 874
    invoke-virtual {p0, p1, v0}, Lio/sentry/Scope;->setContexts(Ljava/lang/String;Ljava/lang/Object;)V

    .line 876
    .end local v0    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[Ljava/lang/Object;>;"
    :goto_0
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 712
    if-nez p1, :cond_0

    .line 713
    return-void

    .line 715
    :cond_0
    if-nez p2, :cond_1

    .line 716
    invoke-virtual {p0, p1}, Lio/sentry/Scope;->removeExtra(Ljava/lang/String;)V

    goto :goto_1

    .line 718
    :cond_1
    iget-object v0, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 721
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1, p1, p2}, Lio/sentry/IScopeObserver;->setExtra(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    iget-object v2, p0, Lio/sentry/Scope;->extra:Ljava/util/Map;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setExtras(Ljava/util/Map;)V

    .line 723
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 725
    :cond_2
    :goto_1
    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    .local p1, "fingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lio/sentry/Scope;->fingerprint:Ljava/util/List;

    .line 439
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 440
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setFingerprint(Ljava/util/Collection;)V

    .line 441
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 442
    :cond_1
    return-void
.end method

.method public setLastEventId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "lastEventId"    # Lio/sentry/protocol/SentryId;

    .line 1200
    iput-object p1, p0, Lio/sentry/Scope;->lastEventId:Lio/sentry/protocol/SentryId;

    .line 1201
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 2
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 221
    iput-object p1, p0, Lio/sentry/Scope;->level:Lio/sentry/SentryLevel;

    .line 223
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 224
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setLevel(Lio/sentry/SentryLevel;)V

    .line 225
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method public setPropagationContext(Lio/sentry/PropagationContext;)V
    .locals 3
    .param p1, "propagationContext"    # Lio/sentry/PropagationContext;

    .line 1164
    iput-object p1, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    .line 1166
    invoke-virtual {p1}, Lio/sentry/PropagationContext;->toSpanContext()Lio/sentry/SpanContext;

    move-result-object v0

    .line 1167
    .local v0, "spanContext":Lio/sentry/SpanContext;
    iget-object v1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IScopeObserver;

    .line 1168
    .local v2, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v2, v0, p0}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V

    .line 1169
    .end local v2    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 1170
    :cond_0
    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 2
    .param p1, "replayId"    # Lio/sentry/protocol/SentryId;

    .line 384
    iput-object p1, p0, Lio/sentry/Scope;->replayId:Lio/sentry/protocol/SentryId;

    .line 386
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 387
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setReplayId(Lio/sentry/protocol/SentryId;)V

    .line 388
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 2
    .param p1, "request"    # Lio/sentry/protocol/Request;

    .line 408
    iput-object p1, p0, Lio/sentry/Scope;->request:Lio/sentry/protocol/Request;

    .line 410
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 411
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setRequest(Lio/sentry/protocol/Request;)V

    .line 412
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 413
    :cond_0
    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 4
    .param p1, "screen"    # Ljava/lang/String;

    .line 355
    iput-object p1, p0, Lio/sentry/Scope;->screen:Ljava/lang/String;

    .line 357
    invoke-virtual {p0}, Lio/sentry/Scope;->getContexts()Lio/sentry/protocol/Contexts;

    move-result-object v0

    .line 358
    .local v0, "contexts":Lio/sentry/protocol/Contexts;
    invoke-virtual {v0}, Lio/sentry/protocol/Contexts;->getApp()Lio/sentry/protocol/App;

    move-result-object v1

    .line 359
    .local v1, "app":Lio/sentry/protocol/App;
    if-nez v1, :cond_0

    .line 360
    new-instance v2, Lio/sentry/protocol/App;

    invoke-direct {v2}, Lio/sentry/protocol/App;-><init>()V

    move-object v1, v2

    .line 361
    invoke-virtual {v0, v1}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    .line 364
    :cond_0
    if-nez p1, :cond_1

    .line 365
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lio/sentry/protocol/App;->setViewNames(Ljava/util/List;)V

    goto :goto_0

    .line 367
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 368
    .local v2, "viewNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 369
    invoke-virtual {v1, v2}, Lio/sentry/protocol/App;->setViewNames(Ljava/util/List;)V

    .line 372
    .end local v2    # "viewNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    iget-object v2, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/sentry/IScopeObserver;

    .line 373
    .local v3, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v3, v0}, Lio/sentry/IScopeObserver;->setContexts(Lio/sentry/protocol/Contexts;)V

    .line 374
    .end local v3    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_1

    .line 375
    :cond_2
    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 4
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "span"    # Lio/sentry/ISpan;
    .param p3, "transactionName"    # Ljava/lang/String;

    .line 1266
    const-string v0, "throwable is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1267
    const-string v0, "span is required"

    invoke-static {p2, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1268
    const-string v0, "transactionName is required"

    invoke-static {p3, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1270
    invoke-static {p1}, Lio/sentry/util/ExceptionUtils;->findRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 1272
    .local v0, "rootCause":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/Scope;->throwableToSpan:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1273
    iget-object v1, p0, Lio/sentry/Scope;->throwableToSpan:Ljava/util/Map;

    new-instance v2, Lio/sentry/util/Pair;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v2, v3, p3}, Lio/sentry/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    :cond_0
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 605
    if-nez p1, :cond_0

    .line 606
    return-void

    .line 608
    :cond_0
    if-nez p2, :cond_1

    .line 609
    invoke-virtual {p0, p1}, Lio/sentry/Scope;->removeTag(Ljava/lang/String;)V

    goto :goto_1

    .line 611
    :cond_1
    iget-object v0, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 614
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1, p1, p2}, Lio/sentry/IScopeObserver;->setTag(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v2, p0, Lio/sentry/Scope;->tags:Ljava/util/Map;

    invoke-interface {v1, v2}, Lio/sentry/IScopeObserver;->setTags(Ljava/util/Map;)V

    .line 616
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 618
    :cond_2
    :goto_1
    return-void
.end method

.method public setTransaction(Lio/sentry/ITransaction;)V
    .locals 4
    .param p1, "transaction"    # Lio/sentry/ITransaction;

    .line 297
    iget-object v0, p0, Lio/sentry/Scope;->transactionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 298
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iput-object p1, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 300
    iget-object v1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IScopeObserver;

    .line 301
    .local v2, "observer":Lio/sentry/IScopeObserver;
    if-eqz p1, :cond_0

    .line 302
    invoke-interface {p1}, Lio/sentry/ITransaction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    .line 303
    invoke-interface {p1}, Lio/sentry/ITransaction;->getSpanContext()Lio/sentry/SpanContext;

    move-result-object v3

    invoke-interface {v2, v3, p0}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V

    goto :goto_1

    .line 305
    :cond_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    .line 306
    invoke-interface {v2, v3, p0}, Lio/sentry/IScopeObserver;->setTrace(Lio/sentry/SpanContext;Lio/sentry/IScope;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    .end local v2    # "observer":Lio/sentry/IScopeObserver;
    :goto_1
    goto :goto_0

    .line 309
    :cond_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 310
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_2
    return-void

    .line 297
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw v1
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 4
    .param p1, "transaction"    # Ljava/lang/String;

    .line 246
    if-eqz p1, :cond_2

    .line 247
    iget-object v0, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    .line 248
    .local v0, "tx":Lio/sentry/ITransaction;
    if-eqz v0, :cond_0

    .line 249
    sget-object v1, Lio/sentry/protocol/TransactionNameSource;->CUSTOM:Lio/sentry/protocol/TransactionNameSource;

    invoke-interface {v0, p1, v1}, Lio/sentry/ITransaction;->setName(Ljava/lang/String;Lio/sentry/protocol/TransactionNameSource;)V

    .line 251
    :cond_0
    iput-object p1, p0, Lio/sentry/Scope;->transactionName:Ljava/lang/String;

    .line 253
    iget-object v1, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/sentry/IScopeObserver;

    .line 254
    .local v2, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v2, p1}, Lio/sentry/IScopeObserver;->setTransaction(Ljava/lang/String;)V

    .line 255
    .end local v2    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 256
    .end local v0    # "tx":Lio/sentry/ITransaction;
    :cond_1
    goto :goto_1

    .line 257
    :cond_2
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v0

    sget-object v1, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "Transaction cannot be null"

    invoke-interface {v0, v1, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 259
    :goto_1
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 2
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 329
    iput-object p1, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    .line 331
    iget-object v0, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getScopeObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/sentry/IScopeObserver;

    .line 332
    .local v1, "observer":Lio/sentry/IScopeObserver;
    invoke-interface {v1, p1}, Lio/sentry/IScopeObserver;->setUser(Lio/sentry/protocol/User;)V

    .line 333
    .end local v1    # "observer":Lio/sentry/IScopeObserver;
    goto :goto_0

    .line 334
    :cond_0
    return-void
.end method

.method public startSession()Lio/sentry/Scope$SessionPair;
    .locals 8

    .line 1038
    const/4 v0, 0x0

    .line 1039
    .local v0, "pair":Lio/sentry/Scope$SessionPair;
    iget-object v1, p0, Lio/sentry/Scope;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 1040
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    if-eqz v2, :cond_0

    .line 1042
    iget-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {v2}, Lio/sentry/Session;->end()V

    .line 1044
    iget-object v2, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getContinuousProfiler()Lio/sentry/IContinuousProfiler;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/IContinuousProfiler;->reevaluateSampling()V

    .line 1046
    :cond_0
    iget-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 1048
    .local v2, "previousSession":Lio/sentry/Session;
    iget-object v3, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1049
    new-instance v3, Lio/sentry/Session;

    iget-object v4, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 1051
    invoke-virtual {v4}, Lio/sentry/SentryOptions;->getDistinctId()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lio/sentry/Scope;->user:Lio/sentry/protocol/User;

    iget-object v6, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v6}, Lio/sentry/SentryOptions;->getEnvironment()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v7}, Lio/sentry/SentryOptions;->getRelease()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lio/sentry/Session;-><init>(Ljava/lang/String;Lio/sentry/protocol/User;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    .line 1053
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    .line 1054
    .local v3, "previousClone":Lio/sentry/Session;
    :goto_0
    new-instance v4, Lio/sentry/Scope$SessionPair;

    iget-object v5, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {v5}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Lio/sentry/Scope$SessionPair;-><init>(Lio/sentry/Session;Lio/sentry/Session;)V

    move-object v0, v4

    .line 1055
    .end local v3    # "previousClone":Lio/sentry/Session;
    goto :goto_1

    .line 1056
    :cond_2
    iget-object v3, p0, Lio/sentry/Scope;->options:Lio/sentry/SentryOptions;

    .line 1057
    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v3

    sget-object v4, Lio/sentry/SentryLevel;->WARNING:Lio/sentry/SentryLevel;

    const-string v5, "Release is not set on SentryOptions. Session could not be started"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    .line 1058
    invoke-interface {v3, v4, v5, v6}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1062
    :goto_1
    if-eqz v1, :cond_3

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 1063
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    return-object v0

    .line 1039
    .end local v2    # "previousSession":Lio/sentry/Session;
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_2
    throw v2
.end method

.method public withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;
    .locals 3
    .param p1, "callback"    # Lio/sentry/Scope$IWithPropagationContext;

    .line 1182
    iget-object v0, p0, Lio/sentry/Scope;->propagationContextLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 1183
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    invoke-interface {p1, v1}, Lio/sentry/Scope$IWithPropagationContext;->accept(Lio/sentry/PropagationContext;)V

    .line 1184
    new-instance v1, Lio/sentry/PropagationContext;

    iget-object v2, p0, Lio/sentry/Scope;->propagationContext:Lio/sentry/PropagationContext;

    invoke-direct {v1, v2}, Lio/sentry/PropagationContext;-><init>(Lio/sentry/PropagationContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1185
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 1184
    :cond_0
    return-object v1

    .line 1182
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;
    .locals 4
    .param p1, "sessionCallback"    # Lio/sentry/Scope$IWithSession;

    .line 1005
    const/4 v0, 0x0

    .line 1006
    .local v0, "cloneSession":Lio/sentry/Session;
    iget-object v1, p0, Lio/sentry/Scope;->sessionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v1}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v1

    .line 1007
    .local v1, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-interface {p1, v2}, Lio/sentry/Scope$IWithSession;->accept(Lio/sentry/Session;)V

    .line 1009
    iget-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    if-eqz v2, :cond_0

    .line 1010
    iget-object v2, p0, Lio/sentry/Scope;->session:Lio/sentry/Session;

    invoke-virtual {v2}, Lio/sentry/Session;->clone()Lio/sentry/Session;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v2

    .line 1012
    :cond_0
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 1013
    .end local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-object v0

    .line 1006
    .restart local v1    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-interface {v1}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v2
.end method

.method public withTransaction(Lio/sentry/Scope$IWithTransaction;)V
    .locals 3
    .param p1, "callback"    # Lio/sentry/Scope$IWithTransaction;

    .line 1135
    iget-object v0, p0, Lio/sentry/Scope;->transactionLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 1136
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/Scope;->transaction:Lio/sentry/ITransaction;

    invoke-interface {p1, v1}, Lio/sentry/Scope$IWithTransaction;->accept(Lio/sentry/ITransaction;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 1138
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 1135
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method
