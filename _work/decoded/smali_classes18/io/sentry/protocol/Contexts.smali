.class public Lio/sentry/protocol/Contexts;
.super Ljava/lang/Object;
.source "Contexts.java"

# interfaces
.implements Lio/sentry/JsonSerializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/protocol/Contexts$Deserializer;
    }
.end annotation


# static fields
.field public static final REPLAY_ID:Ljava/lang/String; = "replay_id"

.field private static final serialVersionUID:J = 0x380de2130187123L


# instance fields
.field private final internalStorage:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected final responseLock:Lio/sentry/util/AutoClosableReentrantLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/Contexts;->responseLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 37
    return-void
.end method

.method public constructor <init>(Lio/sentry/protocol/Contexts;)V
    .locals 5
    .param p1, "contexts"    # Lio/sentry/protocol/Contexts;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/protocol/Contexts;->responseLock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 43
    invoke-virtual {p1}, Lio/sentry/protocol/Contexts;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 44
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_c

    .line 45
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 46
    .local v2, "value":Ljava/lang/Object;
    const-string v3, "app"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    instance-of v3, v2, Lio/sentry/protocol/App;

    if-eqz v3, :cond_0

    .line 47
    new-instance v3, Lio/sentry/protocol/App;

    move-object v4, v2

    check-cast v4, Lio/sentry/protocol/App;

    invoke-direct {v3, v4}, Lio/sentry/protocol/App;-><init>(Lio/sentry/protocol/App;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setApp(Lio/sentry/protocol/App;)V

    goto/16 :goto_1

    .line 48
    :cond_0
    const-string v3, "browser"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    instance-of v3, v2, Lio/sentry/protocol/Browser;

    if-eqz v3, :cond_1

    .line 49
    new-instance v3, Lio/sentry/protocol/Browser;

    move-object v4, v2

    check-cast v4, Lio/sentry/protocol/Browser;

    invoke-direct {v3, v4}, Lio/sentry/protocol/Browser;-><init>(Lio/sentry/protocol/Browser;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setBrowser(Lio/sentry/protocol/Browser;)V

    goto/16 :goto_1

    .line 50
    :cond_1
    const-string v3, "device"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    instance-of v3, v2, Lio/sentry/protocol/Device;

    if-eqz v3, :cond_2

    .line 51
    new-instance v3, Lio/sentry/protocol/Device;

    move-object v4, v2

    check-cast v4, Lio/sentry/protocol/Device;

    invoke-direct {v3, v4}, Lio/sentry/protocol/Device;-><init>(Lio/sentry/protocol/Device;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setDevice(Lio/sentry/protocol/Device;)V

    goto/16 :goto_1

    .line 52
    :cond_2
    const-string v3, "os"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    instance-of v3, v2, Lio/sentry/protocol/OperatingSystem;

    if-eqz v3, :cond_3

    .line 54
    new-instance v3, Lio/sentry/protocol/OperatingSystem;

    move-object v4, v2

    check-cast v4, Lio/sentry/protocol/OperatingSystem;

    invoke-direct {v3, v4}, Lio/sentry/protocol/OperatingSystem;-><init>(Lio/sentry/protocol/OperatingSystem;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V

    goto/16 :goto_1

    .line 55
    :cond_3
    const-string v3, "runtime"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    instance-of v3, v2, Lio/sentry/protocol/SentryRuntime;

    if-eqz v3, :cond_4

    .line 56
    new-instance v3, Lio/sentry/protocol/SentryRuntime;

    move-object v4, v2

    check-cast v4, Lio/sentry/protocol/SentryRuntime;

    invoke-direct {v3, v4}, Lio/sentry/protocol/SentryRuntime;-><init>(Lio/sentry/protocol/SentryRuntime;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setRuntime(Lio/sentry/protocol/SentryRuntime;)V

    goto/16 :goto_1

    .line 57
    :cond_4
    const-string v3, "feedback"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, v2, Lio/sentry/protocol/Feedback;

    if-eqz v3, :cond_5

    .line 58
    new-instance v3, Lio/sentry/protocol/Feedback;

    move-object v4, v2

    check-cast v4, Lio/sentry/protocol/Feedback;

    invoke-direct {v3, v4}, Lio/sentry/protocol/Feedback;-><init>(Lio/sentry/protocol/Feedback;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setFeedback(Lio/sentry/protocol/Feedback;)V

    goto/16 :goto_1

    .line 59
    :cond_5
    const-string v3, "gpu"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    instance-of v3, v2, Lio/sentry/protocol/Gpu;

    if-eqz v3, :cond_6

    .line 60
    new-instance v3, Lio/sentry/protocol/Gpu;

    move-object v4, v2

    check-cast v4, Lio/sentry/protocol/Gpu;

    invoke-direct {v3, v4}, Lio/sentry/protocol/Gpu;-><init>(Lio/sentry/protocol/Gpu;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setGpu(Lio/sentry/protocol/Gpu;)V

    goto/16 :goto_1

    .line 61
    :cond_6
    const-string v3, "trace"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    instance-of v3, v2, Lio/sentry/SpanContext;

    if-eqz v3, :cond_7

    .line 62
    new-instance v3, Lio/sentry/SpanContext;

    move-object v4, v2

    check-cast v4, Lio/sentry/SpanContext;

    invoke-direct {v3, v4}, Lio/sentry/SpanContext;-><init>(Lio/sentry/SpanContext;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setTrace(Lio/sentry/SpanContext;)V

    goto/16 :goto_1

    .line 63
    :cond_7
    const-string v3, "profile"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    instance-of v3, v2, Lio/sentry/ProfileContext;

    if-eqz v3, :cond_8

    .line 64
    new-instance v3, Lio/sentry/ProfileContext;

    move-object v4, v2

    check-cast v4, Lio/sentry/ProfileContext;

    invoke-direct {v3, v4}, Lio/sentry/ProfileContext;-><init>(Lio/sentry/ProfileContext;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setProfile(Lio/sentry/ProfileContext;)V

    goto :goto_1

    .line 65
    :cond_8
    const-string v3, "response"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    instance-of v3, v2, Lio/sentry/protocol/Response;

    if-eqz v3, :cond_9

    .line 66
    new-instance v3, Lio/sentry/protocol/Response;

    move-object v4, v2

    check-cast v4, Lio/sentry/protocol/Response;

    invoke-direct {v3, v4}, Lio/sentry/protocol/Response;-><init>(Lio/sentry/protocol/Response;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/Response;)V

    goto :goto_1

    .line 67
    :cond_9
    const-string v3, "spring"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    instance-of v3, v2, Lio/sentry/protocol/Spring;

    if-eqz v3, :cond_a

    .line 68
    new-instance v3, Lio/sentry/protocol/Spring;

    move-object v4, v2

    check-cast v4, Lio/sentry/protocol/Spring;

    invoke-direct {v3, v4}, Lio/sentry/protocol/Spring;-><init>(Lio/sentry/protocol/Spring;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setSpring(Lio/sentry/protocol/Spring;)V

    goto :goto_1

    .line 69
    :cond_a
    const-string v3, "art"

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    instance-of v3, v2, Lio/sentry/protocol/ArtContext;

    if-eqz v3, :cond_b

    .line 70
    new-instance v3, Lio/sentry/protocol/ArtContext;

    move-object v4, v2

    check-cast v4, Lio/sentry/protocol/ArtContext;

    invoke-direct {v3, v4}, Lio/sentry/protocol/ArtContext;-><init>(Lio/sentry/protocol/ArtContext;)V

    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->setArt(Lio/sentry/protocol/ArtContext;)V

    goto :goto_1

    .line 72
    :cond_b
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_c
    :goto_1
    goto/16 :goto_0

    .line 76
    :cond_d
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

    .line 79
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0, p1}, Lio/sentry/protocol/Contexts;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
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
.method public clear()V
    .locals 1

    .line 255
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 256
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 219
    if-nez p1, :cond_0

    .line 220
    const/4 v0, 0x0

    return v0

    .line 222
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;

    .line 295
    instance-of v0, p1, Lio/sentry/protocol/Contexts;

    if-eqz v0, :cond_0

    .line 296
    move-object v0, p1

    check-cast v0, Lio/sentry/protocol/Contexts;

    .line 297
    .local v0, "otherContexts":Lio/sentry/protocol/Contexts;
    iget-object v1, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, v0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 300
    .end local v0    # "otherContexts":Lio/sentry/protocol/Contexts;
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 226
    if-nez p1, :cond_0

    .line 227
    const/4 v0, 0x0

    return-object v0

    .line 229
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getApp()Lio/sentry/protocol/App;
    .locals 2

    .line 102
    const-string v0, "app"

    const-class v1, Lio/sentry/protocol/App;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/App;

    return-object v0
.end method

.method public getArt()Lio/sentry/protocol/ArtContext;
    .locals 2

    .line 189
    const-string v0, "art"

    const-class v1, Lio/sentry/protocol/ArtContext;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/ArtContext;

    return-object v0
.end method

.method public getBrowser()Lio/sentry/protocol/Browser;
    .locals 2

    .line 110
    const-string v0, "browser"

    const-class v1, Lio/sentry/protocol/Browser;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Browser;

    return-object v0
.end method

.method public getDevice()Lio/sentry/protocol/Device;
    .locals 2

    .line 118
    const-string v0, "device"

    const-class v1, Lio/sentry/protocol/Device;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Device;

    return-object v0
.end method

.method public getFeatureFlags()Lio/sentry/protocol/FeatureFlags;
    .locals 2

    .line 197
    const-string v0, "flags"

    const-class v1, Lio/sentry/protocol/FeatureFlags;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/FeatureFlags;

    return-object v0
.end method

.method public getFeedback()Lio/sentry/protocol/Feedback;
    .locals 2

    .line 142
    const-string v0, "feedback"

    const-class v1, Lio/sentry/protocol/Feedback;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Feedback;

    return-object v0
.end method

.method public getGpu()Lio/sentry/protocol/Gpu;
    .locals 2

    .line 150
    const-string v0, "gpu"

    const-class v1, Lio/sentry/protocol/Gpu;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Gpu;

    return-object v0
.end method

.method public getOperatingSystem()Lio/sentry/protocol/OperatingSystem;
    .locals 2

    .line 126
    const-string v0, "os"

    const-class v1, Lio/sentry/protocol/OperatingSystem;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/OperatingSystem;

    return-object v0
.end method

.method public getProfile()Lio/sentry/ProfileContext;
    .locals 2

    .line 93
    const-string v0, "profile"

    const-class v1, Lio/sentry/ProfileContext;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/ProfileContext;

    return-object v0
.end method

.method public getResponse()Lio/sentry/protocol/Response;
    .locals 2

    .line 158
    const-string v0, "response"

    const-class v1, Lio/sentry/protocol/Response;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Response;

    return-object v0
.end method

.method public getRuntime()Lio/sentry/protocol/SentryRuntime;
    .locals 2

    .line 134
    const-string v0, "runtime"

    const-class v1, Lio/sentry/protocol/SentryRuntime;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/SentryRuntime;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    .line 211
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->size()I

    move-result v0

    return v0
.end method

.method public getSpring()Lio/sentry/protocol/Spring;
    .locals 2

    .line 181
    const-string v0, "spring"

    const-class v1, Lio/sentry/protocol/Spring;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/protocol/Spring;

    return-object v0
.end method

.method public getTrace()Lio/sentry/SpanContext;
    .locals 2

    .line 84
    const-string v0, "trace"

    const-class v1, Lio/sentry/SpanContext;

    invoke-direct {p0, v0, v1}, Lio/sentry/protocol/Contexts;->toContextType(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/SpanContext;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 305
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->hashCode()I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 215
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keys()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 233
    if-nez p1, :cond_0

    .line 234
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    if-nez p2, :cond_1

    .line 237
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 239
    :cond_1
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Lio/sentry/protocol/Contexts;)V
    .locals 2
    .param p1, "contexts"    # Lio/sentry/protocol/Contexts;

    .line 287
    if-nez p1, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p1, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 291
    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 271
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/String;+Ljava/lang/Object;>;"
    if-nez p1, :cond_0

    .line 272
    return-void

    .line 275
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v0, "tmpMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 278
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;*>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 279
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+Ljava/lang/String;*>;"
    :cond_1
    goto :goto_0

    .line 283
    :cond_2
    iget-object v1, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 284
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 248
    if-nez p1, :cond_0

    .line 249
    const/4 v0, 0x0

    return-object v0

    .line 251
    :cond_0
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    .line 313
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->beginObject()Lio/sentry/ObjectWriter;

    .line 315
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->keys()Ljava/util/Enumeration;

    move-result-object v0

    iget-object v1, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v1

    invoke-static {v0, v1}, Lio/sentry/util/CollectionUtils;->toSortedStringArray(Ljava/util/Enumeration;I)[Ljava/lang/String;

    move-result-object v0

    .line 316
    .local v0, "sortedKeys":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 317
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lio/sentry/protocol/Contexts;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 318
    .local v4, "value":Ljava/lang/Object;
    if-eqz v4, :cond_0

    .line 319
    invoke-interface {p1, v3}, Lio/sentry/ObjectWriter;->name(Ljava/lang/String;)Lio/sentry/ObjectWriter;

    move-result-object v5

    invoke-interface {v5, p2, v4}, Lio/sentry/ObjectWriter;->value(Lio/sentry/ILogger;Ljava/lang/Object;)Lio/sentry/ObjectWriter;

    .line 316
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_1
    invoke-interface {p1}, Lio/sentry/ObjectWriter;->endObject()Lio/sentry/ObjectWriter;

    .line 323
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 244
    invoke-virtual {p0, p1, p2}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setApp(Lio/sentry/protocol/App;)V
    .locals 1
    .param p1, "app"    # Lio/sentry/protocol/App;

    .line 106
    const-string v0, "app"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    return-void
.end method

.method public setArt(Lio/sentry/protocol/ArtContext;)V
    .locals 1
    .param p1, "art"    # Lio/sentry/protocol/ArtContext;

    .line 193
    const-string v0, "art"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    return-void
.end method

.method public setBrowser(Lio/sentry/protocol/Browser;)V
    .locals 1
    .param p1, "browser"    # Lio/sentry/protocol/Browser;

    .line 114
    const-string v0, "browser"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    return-void
.end method

.method public setDevice(Lio/sentry/protocol/Device;)V
    .locals 1
    .param p1, "device"    # Lio/sentry/protocol/Device;

    .line 122
    const-string v0, "device"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    return-void
.end method

.method public setFeatureFlags(Lio/sentry/protocol/FeatureFlags;)V
    .locals 1
    .param p1, "featureFlags"    # Lio/sentry/protocol/FeatureFlags;

    .line 201
    const-string v0, "flags"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    return-void
.end method

.method public setFeedback(Lio/sentry/protocol/Feedback;)V
    .locals 1
    .param p1, "feedback"    # Lio/sentry/protocol/Feedback;

    .line 146
    const-string v0, "feedback"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    return-void
.end method

.method public setGpu(Lio/sentry/protocol/Gpu;)V
    .locals 1
    .param p1, "gpu"    # Lio/sentry/protocol/Gpu;

    .line 154
    const-string v0, "gpu"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void
.end method

.method public setOperatingSystem(Lio/sentry/protocol/OperatingSystem;)V
    .locals 1
    .param p1, "operatingSystem"    # Lio/sentry/protocol/OperatingSystem;

    .line 130
    const-string v0, "os"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    return-void
.end method

.method public setProfile(Lio/sentry/ProfileContext;)V
    .locals 1
    .param p1, "profileContext"    # Lio/sentry/ProfileContext;

    .line 97
    const-string v0, "profileContext is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 98
    const-string v0, "profile"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public setResponse(Lio/sentry/protocol/Response;)V
    .locals 3
    .param p1, "response"    # Lio/sentry/protocol/Response;

    .line 175
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->responseLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 176
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    const-string v1, "response"

    invoke-virtual {p0, v1, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 178
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 175
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

.method public setRuntime(Lio/sentry/protocol/SentryRuntime;)V
    .locals 1
    .param p1, "runtime"    # Lio/sentry/protocol/SentryRuntime;

    .line 138
    const-string v0, "runtime"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    return-void
.end method

.method public setSpring(Lio/sentry/protocol/Spring;)V
    .locals 1
    .param p1, "spring"    # Lio/sentry/protocol/Spring;

    .line 185
    const-string v0, "spring"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    return-void
.end method

.method public setTrace(Lio/sentry/SpanContext;)V
    .locals 1
    .param p1, "traceContext"    # Lio/sentry/SpanContext;

    .line 88
    const-string v0, "traceContext is required"

    invoke-static {p1, v0}, Lio/sentry/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    const-string v0, "trace"

    invoke-virtual {p0, v0, p1}, Lio/sentry/protocol/Contexts;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    return-void
.end method

.method public size()I
    .locals 1

    .line 206
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->internalStorage:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method

.method public withResponse(Lio/sentry/util/HintUtils$SentryConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/util/HintUtils$SentryConsumer<",
            "Lio/sentry/protocol/Response;",
            ">;)V"
        }
    .end annotation

    .line 162
    .local p1, "callback":Lio/sentry/util/HintUtils$SentryConsumer;, "Lio/sentry/util/HintUtils$SentryConsumer<Lio/sentry/protocol/Response;>;"
    iget-object v0, p0, Lio/sentry/protocol/Contexts;->responseLock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 163
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    invoke-virtual {p0}, Lio/sentry/protocol/Contexts;->getResponse()Lio/sentry/protocol/Response;

    move-result-object v1

    .line 164
    .local v1, "response":Lio/sentry/protocol/Response;
    if-eqz v1, :cond_0

    .line 165
    invoke-interface {p1, v1}, Lio/sentry/util/HintUtils$SentryConsumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    .line 167
    :cond_0
    new-instance v2, Lio/sentry/protocol/Response;

    invoke-direct {v2}, Lio/sentry/protocol/Response;-><init>()V

    .line 168
    .local v2, "newResponse":Lio/sentry/protocol/Response;
    invoke-virtual {p0, v2}, Lio/sentry/protocol/Contexts;->setResponse(Lio/sentry/protocol/Response;)V

    .line 169
    invoke-interface {p1, v2}, Lio/sentry/util/HintUtils$SentryConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .end local v1    # "response":Lio/sentry/protocol/Response;
    .end local v2    # "newResponse":Lio/sentry/protocol/Response;
    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 172
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_1
    return-void

    .line 162
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
