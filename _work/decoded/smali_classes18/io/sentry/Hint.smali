.class public final Lio/sentry/Hint;
.super Ljava/lang/Object;
.source "Hint.java"


# static fields
.field private static final PRIMITIVE_MAPPINGS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final attachments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private final internalStorage:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Lio/sentry/util/AutoClosableReentrantLock;

.field private replayRecording:Lio/sentry/ReplayRecording;

.field private screenshot:Lio/sentry/Attachment;

.field private threadDump:Lio/sentry/Attachment;

.field private tombstone:Lio/sentry/Attachment;

.field private viewHierarchy:Lio/sentry/Attachment;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lio/sentry/Hint;->PRIMITIVE_MAPPINGS:Ljava/util/Map;

    .line 19
    sget-object v0, Lio/sentry/Hint;->PRIMITIVE_MAPPINGS:Ljava/util/Map;

    const-string v1, "boolean"

    const-class v2, Ljava/lang/Boolean;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    sget-object v0, Lio/sentry/Hint;->PRIMITIVE_MAPPINGS:Ljava/util/Map;

    const-string v1, "char"

    const-class v2, Ljava/lang/Character;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    sget-object v0, Lio/sentry/Hint;->PRIMITIVE_MAPPINGS:Ljava/util/Map;

    const-string v1, "byte"

    const-class v2, Ljava/lang/Byte;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v0, Lio/sentry/Hint;->PRIMITIVE_MAPPINGS:Ljava/util/Map;

    const-string v1, "short"

    const-class v2, Ljava/lang/Short;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lio/sentry/Hint;->PRIMITIVE_MAPPINGS:Ljava/util/Map;

    const-string v1, "int"

    const-class v2, Ljava/lang/Integer;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v0, Lio/sentry/Hint;->PRIMITIVE_MAPPINGS:Ljava/util/Map;

    const-string v1, "long"

    const-class v2, Ljava/lang/Long;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    sget-object v0, Lio/sentry/Hint;->PRIMITIVE_MAPPINGS:Ljava/util/Map;

    const-string v1, "float"

    const-class v2, Ljava/lang/Float;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v0, Lio/sentry/Hint;->PRIMITIVE_MAPPINGS:Ljava/util/Map;

    const-string v1, "double"

    const-class v2, Ljava/lang/Double;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/sentry/Hint;->internalStorage:Ljava/util/Map;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lio/sentry/Hint;->attachments:Ljava/util/List;

    .line 31
    new-instance v0, Lio/sentry/util/AutoClosableReentrantLock;

    invoke-direct {v0}, Lio/sentry/util/AutoClosableReentrantLock;-><init>()V

    iput-object v0, p0, Lio/sentry/Hint;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lio/sentry/Hint;->screenshot:Lio/sentry/Attachment;

    .line 33
    iput-object v0, p0, Lio/sentry/Hint;->viewHierarchy:Lio/sentry/Attachment;

    .line 34
    iput-object v0, p0, Lio/sentry/Hint;->threadDump:Lio/sentry/Attachment;

    .line 35
    iput-object v0, p0, Lio/sentry/Hint;->tombstone:Lio/sentry/Attachment;

    .line 36
    iput-object v0, p0, Lio/sentry/Hint;->replayRecording:Lio/sentry/ReplayRecording;

    return-void
.end method

.method private isCastablePrimitive(Ljava/lang/Object;Ljava/lang/Class;)Z
    .locals 2
    .param p1, "hintValue"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 169
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lio/sentry/Hint;->PRIMITIVE_MAPPINGS:Ljava/util/Map;

    invoke-virtual {p2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 170
    .local v0, "nonPrimitiveClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_0

    .line 171
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 170
    :goto_0
    return v1
.end method

.method public static withAttachment(Lio/sentry/Attachment;)Lio/sentry/Hint;
    .locals 1
    .param p0, "attachment"    # Lio/sentry/Attachment;

    .line 39
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    .line 40
    .local v0, "hint":Lio/sentry/Hint;
    invoke-virtual {v0, p0}, Lio/sentry/Hint;->addAttachment(Lio/sentry/Attachment;)V

    .line 41
    return-object v0
.end method

.method public static withAttachments(Ljava/util/List;)Lio/sentry/Hint;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;)",
            "Lio/sentry/Hint;"
        }
    .end annotation

    .line 45
    .local p0, "attachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    new-instance v0, Lio/sentry/Hint;

    invoke-direct {v0}, Lio/sentry/Hint;-><init>()V

    .line 46
    .local v0, "hint":Lio/sentry/Hint;
    invoke-virtual {v0, p0}, Lio/sentry/Hint;->addAttachments(Ljava/util/List;)V

    .line 47
    return-object v0
.end method


# virtual methods
.method public addAttachment(Lio/sentry/Attachment;)V
    .locals 1
    .param p1, "attachment"    # Lio/sentry/Attachment;

    .line 84
    if-eqz p1, :cond_0

    .line 85
    iget-object v0, p0, Lio/sentry/Hint;->attachments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_0
    return-void
.end method

.method public addAttachments(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    if-eqz p1, :cond_0

    .line 91
    iget-object v0, p0, Lio/sentry/Hint;->attachments:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 93
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 5

    .line 115
    iget-object v0, p0, Lio/sentry/Hint;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 116
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hint;->internalStorage:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 120
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "sentry:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    goto :goto_0

    .line 124
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :cond_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 125
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_3
    return-void

    .line 115
    .restart local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_1
    throw v1
.end method

.method public clearAttachments()V
    .locals 1

    .line 105
    iget-object v0, p0, Lio/sentry/Hint;->attachments:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 106
    return-void
.end method

.method public get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lio/sentry/Hint;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 58
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hint;->internalStorage:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 58
    :cond_0
    return-object v1

    .line 57
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

.method public getAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
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

    .line 64
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lio/sentry/Hint;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 65
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hint;->internalStorage:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 67
    .local v1, "hintValue":Ljava/lang/Object;
    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 68
    nop

    .line 74
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 68
    :cond_0
    return-object v1

    .line 69
    :cond_1
    :try_start_1
    invoke-direct {p0, v1, p2}, Lio/sentry/Hint;->isCastablePrimitive(Ljava/lang/Object;Ljava/lang/Class;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    .line 70
    nop

    .line 74
    if-eqz v0, :cond_2

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 70
    :cond_2
    return-object v1

    .line 72
    :cond_3
    nop

    .line 74
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 72
    :cond_4
    const/4 v2, 0x0

    return-object v2

    .line 64
    .end local v1    # "hintValue":Ljava/lang/Object;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    :try_start_2
    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_5
    :goto_0
    throw v1
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

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lio/sentry/Hint;->attachments:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getReplayRecording()Lio/sentry/ReplayRecording;
    .locals 1

    .line 161
    iget-object v0, p0, Lio/sentry/Hint;->replayRecording:Lio/sentry/ReplayRecording;

    return-object v0
.end method

.method public getScreenshot()Lio/sentry/Attachment;
    .locals 1

    .line 132
    iget-object v0, p0, Lio/sentry/Hint;->screenshot:Lio/sentry/Attachment;

    return-object v0
.end method

.method public getThreadDump()Lio/sentry/Attachment;
    .locals 1

    .line 148
    iget-object v0, p0, Lio/sentry/Hint;->threadDump:Lio/sentry/Attachment;

    return-object v0
.end method

.method public getTombstone()Lio/sentry/Attachment;
    .locals 1

    .line 156
    iget-object v0, p0, Lio/sentry/Hint;->tombstone:Lio/sentry/Attachment;

    return-object v0
.end method

.method public getViewHierarchy()Lio/sentry/Attachment;
    .locals 1

    .line 140
    iget-object v0, p0, Lio/sentry/Hint;->viewHierarchy:Lio/sentry/Attachment;

    return-object v0
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 78
    iget-object v0, p0, Lio/sentry/Hint;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 79
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hint;->internalStorage:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 81
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 78
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

.method public replaceAttachments(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lio/sentry/Attachment;",
            ">;)V"
        }
    .end annotation

    .line 100
    .local p1, "attachments":Ljava/util/List;, "Ljava/util/List<Lio/sentry/Attachment;>;"
    invoke-virtual {p0}, Lio/sentry/Hint;->clearAttachments()V

    .line 101
    invoke-virtual {p0, p1}, Lio/sentry/Hint;->addAttachments(Ljava/util/List;)V

    .line 102
    return-void
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "hint"    # Ljava/lang/Object;

    .line 51
    iget-object v0, p0, Lio/sentry/Hint;->lock:Lio/sentry/util/AutoClosableReentrantLock;

    invoke-virtual {v0}, Lio/sentry/util/AutoClosableReentrantLock;->acquire()Lio/sentry/ISentryLifecycleToken;

    move-result-object v0

    .line 52
    .local v0, "ignored":Lio/sentry/ISentryLifecycleToken;
    :try_start_0
    iget-object v1, p0, Lio/sentry/Hint;->internalStorage:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lio/sentry/ISentryLifecycleToken;->close()V

    .line 54
    .end local v0    # "ignored":Lio/sentry/ISentryLifecycleToken;
    :cond_0
    return-void

    .line 51
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

.method public setReplayRecording(Lio/sentry/ReplayRecording;)V
    .locals 0
    .param p1, "replayRecording"    # Lio/sentry/ReplayRecording;

    .line 165
    iput-object p1, p0, Lio/sentry/Hint;->replayRecording:Lio/sentry/ReplayRecording;

    .line 166
    return-void
.end method

.method public setScreenshot(Lio/sentry/Attachment;)V
    .locals 0
    .param p1, "screenshot"    # Lio/sentry/Attachment;

    .line 128
    iput-object p1, p0, Lio/sentry/Hint;->screenshot:Lio/sentry/Attachment;

    .line 129
    return-void
.end method

.method public setThreadDump(Lio/sentry/Attachment;)V
    .locals 0
    .param p1, "threadDump"    # Lio/sentry/Attachment;

    .line 144
    iput-object p1, p0, Lio/sentry/Hint;->threadDump:Lio/sentry/Attachment;

    .line 145
    return-void
.end method

.method public setTombstone(Lio/sentry/Attachment;)V
    .locals 0
    .param p1, "tombstone"    # Lio/sentry/Attachment;

    .line 152
    iput-object p1, p0, Lio/sentry/Hint;->tombstone:Lio/sentry/Attachment;

    .line 153
    return-void
.end method

.method public setViewHierarchy(Lio/sentry/Attachment;)V
    .locals 0
    .param p1, "viewHierarchy"    # Lio/sentry/Attachment;

    .line 136
    iput-object p1, p0, Lio/sentry/Hint;->viewHierarchy:Lio/sentry/Attachment;

    .line 137
    return-void
.end method
