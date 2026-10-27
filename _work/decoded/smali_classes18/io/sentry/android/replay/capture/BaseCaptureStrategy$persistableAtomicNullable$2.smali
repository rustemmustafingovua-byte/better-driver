.class public final Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;
.super Ljava/lang/Object;
.source "BaseCaptureStrategy.kt"

# interfaces
.implements Lkotlin/properties/ReadWriteProperty;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/capture/BaseCaptureStrategy;->persistableAtomicNullable(Ljava/lang/Object;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)Lkotlin/properties/ReadWriteProperty;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/properties/ReadWriteProperty<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseCaptureStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseCaptureStrategy.kt\nio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2\n*L\n1#1,291:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0002\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0001J&\u0010\u0005\u001a\u0004\u0018\u00018\u00002\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u0008H\u0096\u0002\u00a2\u0006\u0002\u0010\tJ\u0016\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\rH\u0002J.\u0010\u000e\u001a\u00020\u000b2\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00022\n\u0010\u0007\u001a\u0006\u0012\u0002\u0008\u00030\u00082\u0008\u0010\u0003\u001a\u0004\u0018\u00018\u0000H\u0096\u0002\u00a2\u0006\u0002\u0010\u000fR\u0016\u0010\u0003\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "io/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2",
        "Lkotlin/properties/ReadWriteProperty;",
        "",
        "value",
        "Ljava/util/concurrent/atomic/AtomicReference;",
        "getValue",
        "thisRef",
        "property",
        "Lkotlin/reflect/KProperty;",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;",
        "runInBackground",
        "",
        "task",
        "Lkotlin/Function0;",
        "setValue",
        "(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V",
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


# instance fields
.field final synthetic $onChange:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Ljava/lang/String;",
            "TT;TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $propertyName:Ljava/lang/String;

.field final synthetic this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

.field private final value:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/sentry/android/replay/capture/BaseCaptureStrategy;Lkotlin/jvm/functions/Function3;Ljava/lang/String;)V
    .locals 1
    .param p1, "$initialValue"    # Ljava/lang/Object;
    .param p2, "$receiver"    # Lio/sentry/android/replay/capture/BaseCaptureStrategy;
    .param p3, "$onChange"    # Lkotlin/jvm/functions/Function3;
    .param p4, "$propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lio/sentry/android/replay/capture/BaseCaptureStrategy;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Ljava/lang/String;",
            "-TT;-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iput-object p2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    iput-object p3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->$onChange:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->$propertyName:Ljava/lang/String;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->value:Ljava/util/concurrent/atomic/AtomicReference;

    .line 256
    return-void
.end method

.method private final runInBackground(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "task"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    invoke-static {v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->access$getOptions$p(Lio/sentry/android/replay/capture/BaseCaptureStrategy;)Lio/sentry/SentryOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getThreadChecker()Lio/sentry/util/thread/IThreadChecker;

    move-result-object v0

    invoke-interface {v0}, Lio/sentry/util/thread/IThreadChecker;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    invoke-virtual {v0}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->getPersistingExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    new-instance v1, Lio/sentry/android/replay/util/ReplayRunnable;

    new-instance v2, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2$runInBackground$1;

    invoke-direct {v2, p1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2$runInBackground$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    check-cast v2, Ljava/lang/Runnable;

    const-string v3, "CaptureStrategy.runInBackground"

    invoke-direct {v1, v3, v2}, Lio/sentry/android/replay/util/ReplayRunnable;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0

    .line 263
    :cond_0
    nop

    .line 264
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 265
    :catchall_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/lang/Throwable;
    iget-object v1, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->this$0:Lio/sentry/android/replay/capture/BaseCaptureStrategy;

    invoke-static {v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy;->access$getOptions$p(Lio/sentry/android/replay/capture/BaseCaptureStrategy;)Lio/sentry/SentryOptions;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Failed to execute task CaptureStrategy.runInBackground"

    invoke-interface {v1, v2, v3, v0}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 269
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;
    .locals 1
    .param p1, "thisRef"    # Ljava/lang/Object;
    .param p2, "property"    # Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;)TT;"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 271
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V
    .locals 4
    .param p1, "thisRef"    # Ljava/lang/Object;
    .param p2, "property"    # Lkotlin/reflect/KProperty;
    .param p3, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/reflect/KProperty<",
            "*>;TT;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->value:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p3}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 275
    .local v0, "oldValue":Ljava/lang/Object;
    invoke-static {v0, p3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 276
    new-instance v1, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2$setValue$1;

    iget-object v2, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->$onChange:Lkotlin/jvm/functions/Function3;

    iget-object v3, p0, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->$propertyName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v0, p3}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2$setValue$1;-><init>(Lkotlin/jvm/functions/Function3;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v1}, Lio/sentry/android/replay/capture/BaseCaptureStrategy$persistableAtomicNullable$2;->runInBackground(Lkotlin/jvm/functions/Function0;)V

    .line 278
    :cond_0
    return-void
.end method
