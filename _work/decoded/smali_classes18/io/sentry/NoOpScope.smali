.class public final Lio/sentry/NoOpScope;
.super Ljava/lang/Object;
.source "NoOpScope.java"

# interfaces
.implements Lio/sentry/IScope;


# static fields
.field private static final instance:Lio/sentry/NoOpScope;


# instance fields
.field private final emptyOptions:Lio/sentry/util/LazyEvaluator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/sentry/util/LazyEvaluator<",
            "Lio/sentry/SentryOptions;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 26
    new-instance v0, Lio/sentry/NoOpScope;

    invoke-direct {v0}, Lio/sentry/NoOpScope;-><init>()V

    sput-object v0, Lio/sentry/NoOpScope;->instance:Lio/sentry/NoOpScope;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lio/sentry/util/LazyEvaluator;

    new-instance v1, Lio/sentry/NoOpScope$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/sentry/NoOpScope$$ExternalSyntheticLambda0;-><init>()V

    invoke-direct {v0, v1}, Lio/sentry/util/LazyEvaluator;-><init>(Lio/sentry/util/LazyEvaluator$Evaluator;)V

    iput-object v0, p0, Lio/sentry/NoOpScope;->emptyOptions:Lio/sentry/util/LazyEvaluator;

    .line 31
    return-void
.end method

.method public static getInstance()Lio/sentry/NoOpScope;
    .locals 1

    .line 34
    sget-object v0, Lio/sentry/NoOpScope;->instance:Lio/sentry/NoOpScope;

    return-object v0
.end method

.method static synthetic lambda$new$0()Lio/sentry/SentryOptions;
    .locals 1

    .line 29
    invoke-static {}, Lio/sentry/SentryOptions;->empty()Lio/sentry/SentryOptions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addAttachment(Lio/sentry/Attachment;)V
    .locals 0
    .param p1, "attachment"    # Lio/sentry/Attachment;

    .line 193
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;)V
    .locals 0
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;

    .line 117
    return-void
.end method

.method public addBreadcrumb(Lio/sentry/Breadcrumb;Lio/sentry/Hint;)V
    .locals 0
    .param p1, "breadcrumb"    # Lio/sentry/Breadcrumb;
    .param p2, "hint"    # Lio/sentry/Hint;

    .line 114
    return-void
.end method

.method public addEventProcessor(Lio/sentry/EventProcessor;)V
    .locals 0
    .param p1, "eventProcessor"    # Lio/sentry/EventProcessor;

    .line 211
    return-void
.end method

.method public addFeatureFlag(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/String;
    .param p2, "result"    # Ljava/lang/Boolean;

    .line 323
    return-void
.end method

.method public assignTraceContext(Lio/sentry/SentryEvent;)V
    .locals 0
    .param p1, "event"    # Lio/sentry/SentryEvent;

    .line 295
    return-void
.end method

.method public bindClient(Lio/sentry/ISentryClient;)V
    .locals 0
    .param p1, "client"    # Lio/sentry/ISentryClient;

    .line 287
    return-void
.end method

.method public clear()V
    .locals 0

    .line 131
    return-void
.end method

.method public clearAttachments()V
    .locals 0

    .line 196
    return-void
.end method

.method public clearBreadcrumbs()V
    .locals 0

    .line 120
    return-void
.end method

.method public clearFeatureFlags()V
    .locals 0

    .line 326
    return-void
.end method

.method public clearSession()V
    .locals 0

    .line 249
    return-void
.end method

.method public clearTransaction()V
    .locals 0

    .line 123
    return-void
.end method

.method public clone()Lio/sentry/IScope;
    .locals 1

    .line 278
    invoke-static {}, Lio/sentry/NoOpScope;->getInstance()Lio/sentry/NoOpScope;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lio/sentry/NoOpScope;->clone()Lio/sentry/IScope;

    move-result-object v0

    return-object v0
.end method

.method public endSession()Lio/sentry/Session;
    .locals 1

    .line 228
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttachments()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    .line 319
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

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

    .line 110
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    return-object v0
.end method

.method public getClient()Lio/sentry/ISentryClient;
    .locals 1

    .line 291
    invoke-static {}, Lio/sentry/NoOpSentryClient;->getInstance()Lio/sentry/NoOpSentryClient;

    move-result-object v0

    return-object v0
.end method

.method public getContexts()Lio/sentry/protocol/Contexts;
    .locals 1

    .line 159
    new-instance v0, Lio/sentry/protocol/Contexts;

    invoke-direct {v0}, Lio/sentry/protocol/Contexts;-><init>()V

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

    .line 201
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    .line 207
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

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

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getFeatureFlagBuffer()Lio/sentry/featureflags/IFeatureFlagBuffer;
    .locals 1

    .line 335
    invoke-static {}, Lio/sentry/featureflags/NoOpFeatureFlagBuffer;->getInstance()Lio/sentry/featureflags/NoOpFeatureFlagBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getFeatureFlags()Lio/sentry/protocol/FeatureFlags;
    .locals 1

    .line 330
    const/4 v0, 0x0

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

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getLastEventId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 283
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getLevel()Lio/sentry/SentryLevel;
    .locals 1

    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOptions()Lio/sentry/SentryOptions;
    .locals 1

    .line 238
    iget-object v0, p0, Lio/sentry/NoOpScope;->emptyOptions:Lio/sentry/util/LazyEvaluator;

    invoke-virtual {v0}, Lio/sentry/util/LazyEvaluator;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SentryOptions;

    return-object v0
.end method

.method public getPropagationContext()Lio/sentry/PropagationContext;
    .locals 1

    .line 258
    new-instance v0, Lio/sentry/PropagationContext;

    invoke-direct {v0}, Lio/sentry/PropagationContext;-><init>()V

    return-object v0
.end method

.method public getReplayId()Lio/sentry/protocol/SentryId;
    .locals 1

    .line 84
    sget-object v0, Lio/sentry/protocol/SentryId;->EMPTY_ID:Lio/sentry/protocol/SentryId;

    return-object v0
.end method

.method public getRequest()Lio/sentry/protocol/Request;
    .locals 1

    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreen()Ljava/lang/String;
    .locals 1

    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSession()Lio/sentry/Session;
    .locals 1

    .line 244
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpan()Lio/sentry/ISpan;
    .locals 1

    .line 55
    const/4 v0, 0x0

    return-object v0
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

    .line 136
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-object v0
.end method

.method public getTransaction()Lio/sentry/ITransaction;
    .locals 1

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTransactionName()Ljava/lang/String;
    .locals 1

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method public getUser()Lio/sentry/protocol/User;
    .locals 1

    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 314
    return-void
.end method

.method public removeContexts(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 184
    return-void
.end method

.method public removeExtra(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 155
    return-void
.end method

.method public removeTag(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .line 143
    return-void
.end method

.method public replaceOptions(Lio/sentry/SentryOptions;)V
    .locals 0
    .param p1, "options"    # Lio/sentry/SentryOptions;

    .line 302
    return-void
.end method

.method public setActiveSpan(Lio/sentry/ISpan;)V
    .locals 0
    .param p1, "span"    # Lio/sentry/ISpan;

    .line 59
    return-void
.end method

.method public setAttribute(Lio/sentry/SentryAttribute;)V
    .locals 0
    .param p1, "attribute"    # Lio/sentry/SentryAttribute;

    .line 308
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 305
    return-void
.end method

.method public setAttributes(Lio/sentry/SentryAttributes;)V
    .locals 0
    .param p1, "attributes"    # Lio/sentry/SentryAttributes;

    .line 311
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Boolean;

    .line 166
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Character;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Character;

    .line 181
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Number;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Number;

    .line 172
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 163
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setContexts(Ljava/lang/String;Ljava/util/Collection;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "*>;)V"
        }
    .end annotation

    .line 175
    .local p2, "value":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    return-void
.end method

.method public setContexts(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [Ljava/lang/Object;

    .line 178
    return-void
.end method

.method public setExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setFingerprint(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 105
    .local p1, "fingerprint":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public setLastEventId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "lastEventId"    # Lio/sentry/protocol/SentryId;

    .line 269
    return-void
.end method

.method public setLevel(Lio/sentry/SentryLevel;)V
    .locals 0
    .param p1, "level"    # Lio/sentry/SentryLevel;

    .line 43
    return-void
.end method

.method public setPropagationContext(Lio/sentry/PropagationContext;)V
    .locals 0
    .param p1, "propagationContext"    # Lio/sentry/PropagationContext;

    .line 253
    return-void
.end method

.method public setReplayId(Lio/sentry/protocol/SentryId;)V
    .locals 0
    .param p1, "replayId"    # Lio/sentry/protocol/SentryId;

    .line 88
    return-void
.end method

.method public setRequest(Lio/sentry/protocol/Request;)V
    .locals 0
    .param p1, "request"    # Lio/sentry/protocol/Request;

    .line 96
    return-void
.end method

.method public setScreen(Ljava/lang/String;)V
    .locals 0
    .param p1, "screen"    # Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setSpanContext(Ljava/lang/Throwable;Lio/sentry/ISpan;Ljava/lang/String;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "span"    # Lio/sentry/ISpan;
    .param p3, "transactionName"    # Ljava/lang/String;

    .line 299
    return-void
.end method

.method public setTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 140
    return-void
.end method

.method public setTransaction(Lio/sentry/ITransaction;)V
    .locals 0
    .param p1, "transaction"    # Lio/sentry/ITransaction;

    .line 62
    return-void
.end method

.method public setTransaction(Ljava/lang/String;)V
    .locals 0
    .param p1, "transaction"    # Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setUser(Lio/sentry/protocol/User;)V
    .locals 0
    .param p1, "user"    # Lio/sentry/protocol/User;

    .line 70
    return-void
.end method

.method public startSession()Lio/sentry/Scope$SessionPair;
    .locals 1

    .line 222
    const/4 v0, 0x0

    return-object v0
.end method

.method public withPropagationContext(Lio/sentry/Scope$IWithPropagationContext;)Lio/sentry/PropagationContext;
    .locals 1
    .param p1, "callback"    # Lio/sentry/Scope$IWithPropagationContext;

    .line 265
    new-instance v0, Lio/sentry/PropagationContext;

    invoke-direct {v0}, Lio/sentry/PropagationContext;-><init>()V

    return-object v0
.end method

.method public withSession(Lio/sentry/Scope$IWithSession;)Lio/sentry/Session;
    .locals 1
    .param p1, "sessionCallback"    # Lio/sentry/Scope$IWithSession;

    .line 216
    const/4 v0, 0x0

    return-object v0
.end method

.method public withTransaction(Lio/sentry/Scope$IWithTransaction;)V
    .locals 0
    .param p1, "callback"    # Lio/sentry/Scope$IWithTransaction;

    .line 233
    return-void
.end method
