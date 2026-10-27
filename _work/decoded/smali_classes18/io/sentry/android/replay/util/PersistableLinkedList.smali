.class public final Lio/sentry/android/replay/util/PersistableLinkedList;
.super Ljava/util/concurrent/ConcurrentLinkedDeque;
.source "Persistable.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/ConcurrentLinkedDeque<",
        "Lio/sentry/rrweb/RRWebEvent;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPersistable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Persistable.kt\nio/sentry/android/replay/util/PersistableLinkedList\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,60:1\n1#2:61\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u001e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B-\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u000e\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\n\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0016J\u0016\u0010\u0010\u001a\u00020\u000e2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0012H\u0016J\u0008\u0010\u0013\u001a\u00020\u0014H\u0002J\u0008\u0010\u0015\u001a\u00020\u0002H\u0016R\u0016\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lio/sentry/android/replay/util/PersistableLinkedList;",
        "Ljava/util/concurrent/ConcurrentLinkedDeque;",
        "Lio/sentry/rrweb/RRWebEvent;",
        "propertyName",
        "",
        "options",
        "Lio/sentry/SentryOptions;",
        "persistingExecutor",
        "Ljava/util/concurrent/ScheduledExecutorService;",
        "cacheProvider",
        "Lkotlin/Function0;",
        "Lio/sentry/android/replay/ReplayCache;",
        "(Ljava/lang/String;Lio/sentry/SentryOptions;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function0;)V",
        "add",
        "",
        "element",
        "addAll",
        "elements",
        "",
        "persistRecording",
        "",
        "remove",
        "sentry-android-replay_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final $stable:I


# instance fields
.field private final cacheProvider:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;"
        }
    .end annotation
.end field

.field private final options:Lio/sentry/SentryOptions;

.field private final persistingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final propertyName:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$SXE8G42vg3XtXD7RMWXfz2AJ4Pg(Lio/sentry/android/replay/util/PersistableLinkedList;Lio/sentry/ReplayRecording;Lio/sentry/android/replay/ReplayCache;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lio/sentry/android/replay/util/PersistableLinkedList;->persistRecording$lambda$1(Lio/sentry/android/replay/util/PersistableLinkedList;Lio/sentry/ReplayRecording;Lio/sentry/android/replay/ReplayCache;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/util/PersistableLinkedList;->$stable:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lio/sentry/SentryOptions;Ljava/util/concurrent/ScheduledExecutorService;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "options"    # Lio/sentry/SentryOptions;
    .param p3, "persistingExecutor"    # Ljava/util/concurrent/ScheduledExecutorService;
    .param p4, "cacheProvider"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/sentry/SentryOptions;",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            "Lkotlin/jvm/functions/Function0<",
            "Lio/sentry/android/replay/ReplayCache;",
            ">;)V"
        }
    .end annotation

    const-string v0, "propertyName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "persistingExecutor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheProvider"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;-><init>()V

    .line 20
    iput-object p1, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->propertyName:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->options:Lio/sentry/SentryOptions;

    .line 22
    iput-object p3, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->persistingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 23
    iput-object p4, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->cacheProvider:Lkotlin/jvm/functions/Function0;

    .line 19
    return-void
.end method

.method private final persistRecording()V
    .locals 6

    .line 45
    iget-object v0, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->cacheProvider:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/android/replay/ReplayCache;

    if-nez v0, :cond_0

    return-void

    .line 46
    .local v0, "cache":Lio/sentry/android/replay/ReplayCache;
    :cond_0
    new-instance v1, Lio/sentry/ReplayRecording;

    invoke-direct {v1}, Lio/sentry/ReplayRecording;-><init>()V

    move-object v2, v1

    .line 61
    .local v2, "$this$persistRecording_u24lambda_u240":Lio/sentry/ReplayRecording;
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$a$-apply-PersistableLinkedList$persistRecording$recording$1":I
    new-instance v4, Ljava/util/ArrayList;

    move-object v5, p0

    check-cast v5, Ljava/util/Collection;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    check-cast v4, Ljava/util/List;

    invoke-virtual {v2, v4}, Lio/sentry/ReplayRecording;->setPayload(Ljava/util/List;)V

    .line 47
    .end local v2    # "$this$persistRecording_u24lambda_u240":Lio/sentry/ReplayRecording;
    .end local v3    # "$i$a$-apply-PersistableLinkedList$persistRecording$recording$1":I
    .local v1, "recording":Lio/sentry/ReplayRecording;
    iget-object v2, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v2}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v2

    invoke-interface {v2}, Lio/sentry/util/thread/IThreadChecker;->isMainThread()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 48
    iget-object v2, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->persistingExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lio/sentry/android/replay/util/PersistableLinkedList$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v1, v0}, Lio/sentry/android/replay/util/PersistableLinkedList$$ExternalSyntheticLambda0;-><init>(Lio/sentry/android/replay/util/PersistableLinkedList;Lio/sentry/ReplayRecording;Lio/sentry/android/replay/ReplayCache;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 54
    :cond_1
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    .line 55
    .local v2, "stringWriter":Ljava/io/StringWriter;
    iget-object v3, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v3}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v3

    new-instance v4, Ljava/io/BufferedWriter;

    move-object v5, v2

    check-cast v5, Ljava/io/Writer;

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    check-cast v4, Ljava/io/Writer;

    invoke-interface {v3, v1, v4}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 56
    iget-object v3, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->propertyName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lio/sentry/android/replay/ReplayCache;->persistSegmentValues$sentry_android_replay_release(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    .end local v2    # "stringWriter":Ljava/io/StringWriter;
    :goto_0
    return-void
.end method

.method private static final persistRecording$lambda$1(Lio/sentry/android/replay/util/PersistableLinkedList;Lio/sentry/ReplayRecording;Lio/sentry/android/replay/ReplayCache;)V
    .locals 4
    .param p0, "this$0"    # Lio/sentry/android/replay/util/PersistableLinkedList;
    .param p1, "$recording"    # Lio/sentry/ReplayRecording;
    .param p2, "$cache"    # Lio/sentry/android/replay/ReplayCache;

    .line 49
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 50
    .local v0, "stringWriter":Ljava/io/StringWriter;
    iget-object v1, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->options:Lio/sentry/SentryOptions;

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getSerializer()Lio/sentry/ISerializer;

    move-result-object v1

    new-instance v2, Ljava/io/BufferedWriter;

    move-object v3, v0

    check-cast v3, Ljava/io/Writer;

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    check-cast v2, Ljava/io/Writer;

    invoke-interface {v1, p1, v2}, Lio/sentry/ISerializer;->serialize(Ljava/lang/Object;Ljava/io/Writer;)V

    .line 51
    iget-object v1, p0, Lio/sentry/android/replay/util/PersistableLinkedList;->propertyName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v1, v2}, Lio/sentry/android/replay/ReplayCache;->persistSegmentValues$sentry_android_replay_release(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    return-void
.end method


# virtual methods
.method public add(Lio/sentry/rrweb/RRWebEvent;)Z
    .locals 1
    .param p1, "element"    # Lio/sentry/rrweb/RRWebEvent;

    const-string v0, "element"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 34
    .local v0, "result":Z
    invoke-direct {p0}, Lio/sentry/android/replay/util/PersistableLinkedList;->persistRecording()V

    .line 35
    return v0
.end method

.method public bridge synthetic add(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 16
    move-object v0, p1

    check-cast v0, Lio/sentry/rrweb/RRWebEvent;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/util/PersistableLinkedList;->add(Lio/sentry/rrweb/RRWebEvent;)Z

    move-result v0

    return v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .param p1, "elements"    # Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lio/sentry/rrweb/RRWebEvent;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "elements"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 28
    .local v0, "result":Z
    invoke-direct {p0}, Lio/sentry/android/replay/util/PersistableLinkedList;->persistRecording()V

    .line 29
    return v0
.end method

.method public bridge contains(Lio/sentry/rrweb/RRWebEvent;)Z
    .locals 1
    .param p1, "element"    # Lio/sentry/rrweb/RRWebEvent;

    .line 16
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 16
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lio/sentry/rrweb/RRWebEvent;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/rrweb/RRWebEvent;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/util/PersistableLinkedList;->contains(Lio/sentry/rrweb/RRWebEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge getSize()I
    .locals 1

    .line 16
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->size()I

    move-result v0

    return v0
.end method

.method public remove()Lio/sentry/rrweb/RRWebEvent;
    .locals 1

    .line 39
    invoke-super {p0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/sentry/rrweb/RRWebEvent;

    .line 40
    .local v0, "result":Lio/sentry/rrweb/RRWebEvent;
    invoke-direct {p0}, Lio/sentry/android/replay/util/PersistableLinkedList;->persistRecording()V

    .line 41
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0
.end method

.method public bridge synthetic remove()Ljava/lang/Object;
    .locals 1

    .line 16
    invoke-virtual {p0}, Lio/sentry/android/replay/util/PersistableLinkedList;->remove()Lio/sentry/rrweb/RRWebEvent;

    move-result-object v0

    return-object v0
.end method

.method public bridge remove(Lio/sentry/rrweb/RRWebEvent;)Z
    .locals 1
    .param p1, "element"    # Lio/sentry/rrweb/RRWebEvent;

    .line 16
    invoke-super {p0, p1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final bridge remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "element"    # Ljava/lang/Object;

    .line 16
    if-nez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lio/sentry/rrweb/RRWebEvent;

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    move-object v0, p1

    check-cast v0, Lio/sentry/rrweb/RRWebEvent;

    invoke-virtual {p0, v0}, Lio/sentry/android/replay/util/PersistableLinkedList;->remove(Lio/sentry/rrweb/RRWebEvent;)Z

    move-result v0

    return v0
.end method

.method public final bridge size()I
    .locals 1

    .line 16
    invoke-virtual {p0}, Lio/sentry/android/replay/util/PersistableLinkedList;->getSize()I

    move-result v0

    return v0
.end method
