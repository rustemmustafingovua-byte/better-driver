.class public final Lio/sentry/MonitorContexts;
.super Ljava/util/concurrent/ConcurrentHashMap;
.source "MonitorContexts.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/MonitorContexts$Deserializer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentHashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;",
        "Lio/sentry/JsonSerializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x3755d6f1f6298bdcL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-void
.end method

.method public constructor <init>(Lio/sentry/MonitorContexts;)V
    .locals 5
    .param p1, "contexts"    # Lio/sentry/MonitorContexts;

    .line 17
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 18
    invoke-virtual {p1}, Lio/sentry/MonitorContexts;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 19
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_1

    .line 20
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 21
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "trace"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lio/sentry/SpanContext;

    if-eqz v3, :cond_0

    .line 22
    new-instance v3, Lio/sentry/SpanContext;

    move-object v4, v2

    check-cast v4, Lio/sentry/SpanContext;

    invoke-direct {v3, v4}, Lio/sentry/SpanContext;-><init>(Lio/sentry/SpanContext;)V

    invoke-virtual {p0, v3}, Lio/sentry/MonitorContexts;->setTrace(Lio/sentry/SpanContext;)V

    goto :goto_1

    .line 24
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lio/sentry/MonitorContexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_1
    :goto_1
    goto :goto_0

    .line 28
    :cond_2
    return-void
.end method

.method private toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 31
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lio/sentry/MonitorContexts;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 32
    .local v0, "item":Ljava/lang/Object;
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public getTrace()Lio/sentry/SpanContext;
    .locals 2

    .line 36
    const-string v0, "trace"

    const-class v1, Lio/sentry/SpanContext;

    invoke-direct {p0, v0, v1}, Lio/sentry/MonitorContexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SpanContext;

    return-object v0
.end method

.method public serialize(Lio/sentry/ObjectWriter;Lio/sentry/ILogger;)V
    .locals 6
    .param p1, "writer"    # Lio/sentry/ObjectWriter;
    .param p2, "logger"    # Lio/sentry/ILogger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 55
    invoke-virtual {p0}, Lio/sentry/MonitorContexts;->keys()Ljava/util/Enumeration;

    move-result-object v0

    invoke-virtual {p0}, Lio/sentry/MonitorContexts;->size()I

    move-result v1

    invoke-static {v0, v1}, Lio/sentry/util/CollectionUtils;->toSortedStringArray(Ljava/util/Enumeration;I)[Ljava/lang/String;

    move-result-object v0

    .line 56
    .local v0, "sortedKeys":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 57
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lio/sentry/MonitorContexts;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 58
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 59
    invoke-interface {p1, v3}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v5

    invoke-interface {v5, p2, v4}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 56
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 63
    return-void
.end method

.method public setTrace(Lio/sentry/SpanContext;)V
    .locals 1
    .param p1, "traceContext"    # Lio/sentry/SpanContext;

    .line 40
    const-string v0, "traceContext is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 41
    const-string v0, "trace"

    invoke-virtual {p0, v0, p1}, Lio/sentry/MonitorContexts;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    return-void
.end method
