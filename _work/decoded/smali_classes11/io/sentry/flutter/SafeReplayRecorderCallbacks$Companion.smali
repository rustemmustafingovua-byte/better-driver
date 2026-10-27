.class public final Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;
.super Ljava/lang/Object;
.source "SafeReplayRecorderCallbacks.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/flutter/SafeReplayRecorderCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\u0006\u001a\u00020\u0007J\u0006\u0010\u0008\u001a\u00020\tR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"
    }
    d2 = {
        "Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;",
        "",
        "<init>",
        "()V",
        "generationCounter",
        "Ljava/util/concurrent/atomic/AtomicInteger;",
        "bumpGeneration",
        "",
        "currentGeneration",
        "",
        "sentry_flutter_debug"
    }
    k = 0x1
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final bumpGeneration()V
    .locals 1

    .line 17
    invoke-static {}, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->access$getGenerationCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 18
    return-void
.end method

.method public final currentGeneration()I
    .locals 1

    .line 20
    invoke-static {}, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->access$getGenerationCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method
