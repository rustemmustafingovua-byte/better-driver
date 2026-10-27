.class public final Lio/sentry/flutter/SafeReplayRecorderCallbacks;
.super Ljava/lang/Object;
.source "SafeReplayRecorderCallbacks.kt"

# interfaces
.implements Lio/sentry/flutter/ReplayRecorderCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSafeReplayRecorderCallbacks.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SafeReplayRecorderCallbacks.kt\nio/sentry/flutter/SafeReplayRecorderCallbacks\n*L\n1#1,76:1\n26#1,7:77\n26#1,7:84\n26#1,7:91\n26#1,7:98\n26#1,7:105\n26#1,7:112\n26#1,7:119\n*S KotlinDebug\n*F\n+ 1 SafeReplayRecorderCallbacks.kt\nio/sentry/flutter/SafeReplayRecorderCallbacks\n*L\n37#1:77,7\n42#1:84,7\n49#1:91,7\n54#1:98,7\n59#1:105,7\n64#1:112,7\n72#1:119,7\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u000b\u0008\u0000\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0001\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00080\nH\u0082\u0008J\u0018\u0010\u000b\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0010\u001a\u00020\u0008H\u0016J\u0018\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0008\u0010\u0012\u001a\u00020\u0008H\u0016J\u0008\u0010\u0013\u001a\u00020\u0008H\u0016J\u0008\u0010\u0014\u001a\u00020\u0008H\u0016J \u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0018\u001a\u00020\u0006H\u0016R\u000e\u0010\u0002\u001a\u00020\u0001X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lio/sentry/flutter/SafeReplayRecorderCallbacks;",
        "Lio/sentry/flutter/ReplayRecorderCallbacks;",
        "delegate",
        "<init>",
        "(Lio/sentry/flutter/ReplayRecorderCallbacks;)V",
        "generationSnapshot",
        "",
        "guard",
        "",
        "block",
        "Lkotlin/Function0;",
        "replayStarted",
        "replayId",
        "",
        "replayIsBuffering",
        "",
        "replayResumed",
        "replayStateChanged",
        "replayPaused",
        "replayStopped",
        "replayReset",
        "replayConfigChanged",
        "width",
        "height",
        "frameRate",
        "Companion",
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


# static fields
.field public static final Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

.field private static final generationCounter:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final delegate:Lio/sentry/flutter/ReplayRecorderCallbacks;

.field private final generationSnapshot:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public constructor <init>(Lio/sentry/flutter/ReplayRecorderCallbacks;)V
    .locals 1
    .param p1, "delegate"    # Lio/sentry/flutter/ReplayRecorderCallbacks;

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->delegate:Lio/sentry/flutter/ReplayRecorderCallbacks;

    .line 23
    sget-object v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    invoke-virtual {v0}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;->currentGeneration()I

    move-result v0

    iput v0, p0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationSnapshot:I

    .line 10
    return-void
.end method

.method public static final synthetic access$getGenerationCounter$cp()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 10
    sget-object v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private final guard(Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .param p1, "block"    # Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 26
    .local v0, "$i$f$guard":I
    iget v1, p0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationSnapshot:I

    sget-object v2, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    invoke-virtual {v2}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;->currentGeneration()I

    move-result v2

    if-eq v1, v2, :cond_0

    return-void

    .line 27
    :cond_0
    nop

    .line 28
    :try_start_0
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 29
    :catchall_0
    move-exception v1

    .line 30
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "Sentry"

    const-string v3, "Replay recorder callback failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .end local v1    # "t":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method


# virtual methods
.method public replayConfigChanged(III)V
    .locals 5
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "frameRate"    # I

    .line 72
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    const/4 v1, 0x0

    .line 119
    .local v1, "$i$f$guard":I
    iget v2, v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationSnapshot:I

    sget-object v3, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    invoke-virtual {v3}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;->currentGeneration()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 120
    nop

    .line 121
    const/4 v2, 0x0

    .line 73
    .local v2, "$i$a$-guard-SafeReplayRecorderCallbacks$replayConfigChanged$1":I
    :try_start_0
    iget-object v3, p0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->delegate:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v3, p1, p2, p3}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayConfigChanged(III)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    nop

    .line 121
    .end local v2    # "$i$a$-guard-SafeReplayRecorderCallbacks$replayConfigChanged$1":I
    goto :goto_0

    .line 122
    :catchall_0
    move-exception v2

    .line 123
    .local v2, "t$iv":Ljava/lang/Throwable;
    const-string v3, "Sentry"

    const-string v4, "Replay recorder callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 125
    .end local v2    # "t$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 74
    .end local v0    # "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    .end local v1    # "$i$f$guard":I
    :cond_0
    return-void
.end method

.method public replayPaused()V
    .locals 5

    .line 54
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    const/4 v1, 0x0

    .line 98
    .local v1, "$i$f$guard":I
    iget v2, v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationSnapshot:I

    sget-object v3, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    invoke-virtual {v3}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;->currentGeneration()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 99
    nop

    .line 100
    const/4 v2, 0x0

    .line 55
    .local v2, "$i$a$-guard-SafeReplayRecorderCallbacks$replayPaused$1":I
    :try_start_0
    iget-object v3, p0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->delegate:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v3}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayPaused()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    nop

    .line 100
    .end local v2    # "$i$a$-guard-SafeReplayRecorderCallbacks$replayPaused$1":I
    goto :goto_0

    .line 101
    :catchall_0
    move-exception v2

    .line 102
    .local v2, "t$iv":Ljava/lang/Throwable;
    const-string v3, "Sentry"

    const-string v4, "Replay recorder callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 104
    .end local v2    # "t$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 56
    .end local v0    # "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    .end local v1    # "$i$f$guard":I
    :cond_0
    return-void
.end method

.method public replayReset()V
    .locals 5

    .line 64
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    const/4 v1, 0x0

    .line 112
    .local v1, "$i$f$guard":I
    iget v2, v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationSnapshot:I

    sget-object v3, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    invoke-virtual {v3}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;->currentGeneration()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 113
    nop

    .line 114
    const/4 v2, 0x0

    .line 65
    .local v2, "$i$a$-guard-SafeReplayRecorderCallbacks$replayReset$1":I
    :try_start_0
    iget-object v3, p0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->delegate:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v3}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayReset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    nop

    .line 114
    .end local v2    # "$i$a$-guard-SafeReplayRecorderCallbacks$replayReset$1":I
    goto :goto_0

    .line 115
    :catchall_0
    move-exception v2

    .line 116
    .local v2, "t$iv":Ljava/lang/Throwable;
    const-string v3, "Sentry"

    const-string v4, "Replay recorder callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    .end local v2    # "t$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 66
    .end local v0    # "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    .end local v1    # "$i$f$guard":I
    :cond_0
    return-void
.end method

.method public replayResumed()V
    .locals 5

    .line 42
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    const/4 v1, 0x0

    .line 84
    .local v1, "$i$f$guard":I
    iget v2, v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationSnapshot:I

    sget-object v3, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    invoke-virtual {v3}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;->currentGeneration()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 85
    nop

    .line 86
    const/4 v2, 0x0

    .line 43
    .local v2, "$i$a$-guard-SafeReplayRecorderCallbacks$replayResumed$1":I
    :try_start_0
    iget-object v3, p0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->delegate:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v3}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayResumed()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    nop

    .line 86
    .end local v2    # "$i$a$-guard-SafeReplayRecorderCallbacks$replayResumed$1":I
    goto :goto_0

    .line 87
    :catchall_0
    move-exception v2

    .line 88
    .local v2, "t$iv":Ljava/lang/Throwable;
    const-string v3, "Sentry"

    const-string v4, "Replay recorder callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 90
    .end local v2    # "t$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 44
    .end local v0    # "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    .end local v1    # "$i$f$guard":I
    :cond_0
    return-void
.end method

.method public replayStarted(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "replayId"    # Ljava/lang/String;
    .param p2, "replayIsBuffering"    # Z

    const-string v0, "replayId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    const/4 v1, 0x0

    .line 77
    .local v1, "$i$f$guard":I
    iget v2, v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationSnapshot:I

    sget-object v3, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    invoke-virtual {v3}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;->currentGeneration()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 78
    nop

    .line 79
    const/4 v2, 0x0

    .line 38
    .local v2, "$i$a$-guard-SafeReplayRecorderCallbacks$replayStarted$1":I
    :try_start_0
    iget-object v3, p0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->delegate:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v3, p1, p2}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayStarted(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    nop

    .line 79
    .end local v2    # "$i$a$-guard-SafeReplayRecorderCallbacks$replayStarted$1":I
    goto :goto_0

    .line 80
    :catchall_0
    move-exception v2

    .line 81
    .local v2, "t$iv":Ljava/lang/Throwable;
    const-string v3, "Sentry"

    const-string v4, "Replay recorder callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    .end local v2    # "t$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 39
    .end local v0    # "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    .end local v1    # "$i$f$guard":I
    :cond_0
    return-void
.end method

.method public replayStateChanged(Ljava/lang/String;Z)V
    .locals 5
    .param p1, "replayId"    # Ljava/lang/String;
    .param p2, "replayIsBuffering"    # Z

    const-string v0, "replayId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    const/4 v1, 0x0

    .line 91
    .local v1, "$i$f$guard":I
    iget v2, v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationSnapshot:I

    sget-object v3, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    invoke-virtual {v3}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;->currentGeneration()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 92
    nop

    .line 93
    const/4 v2, 0x0

    .line 50
    .local v2, "$i$a$-guard-SafeReplayRecorderCallbacks$replayStateChanged$1":I
    :try_start_0
    iget-object v3, p0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->delegate:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v3, p1, p2}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayStateChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    nop

    .line 93
    .end local v2    # "$i$a$-guard-SafeReplayRecorderCallbacks$replayStateChanged$1":I
    goto :goto_0

    .line 94
    :catchall_0
    move-exception v2

    .line 95
    .local v2, "t$iv":Ljava/lang/Throwable;
    const-string v3, "Sentry"

    const-string v4, "Replay recorder callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 97
    .end local v2    # "t$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 51
    .end local v0    # "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    .end local v1    # "$i$f$guard":I
    :cond_0
    return-void
.end method

.method public replayStopped()V
    .locals 5

    .line 59
    move-object v0, p0

    .local v0, "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    const/4 v1, 0x0

    .line 105
    .local v1, "$i$f$guard":I
    iget v2, v0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->generationSnapshot:I

    sget-object v3, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->Companion:Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;

    invoke-virtual {v3}, Lio/sentry/flutter/SafeReplayRecorderCallbacks$Companion;->currentGeneration()I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 106
    nop

    .line 107
    const/4 v2, 0x0

    .line 60
    .local v2, "$i$a$-guard-SafeReplayRecorderCallbacks$replayStopped$1":I
    :try_start_0
    iget-object v3, p0, Lio/sentry/flutter/SafeReplayRecorderCallbacks;->delegate:Lio/sentry/flutter/ReplayRecorderCallbacks;

    invoke-interface {v3}, Lio/sentry/flutter/ReplayRecorderCallbacks;->replayStopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    nop

    .line 107
    .end local v2    # "$i$a$-guard-SafeReplayRecorderCallbacks$replayStopped$1":I
    goto :goto_0

    .line 108
    :catchall_0
    move-exception v2

    .line 109
    .local v2, "t$iv":Ljava/lang/Throwable;
    const-string v3, "Sentry"

    const-string v4, "Replay recorder callback failed"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 111
    .end local v2    # "t$iv":Ljava/lang/Throwable;
    :goto_0
    nop

    .line 61
    .end local v0    # "this_$iv":Lio/sentry/flutter/SafeReplayRecorderCallbacks;
    .end local v1    # "$i$f$guard":I
    :cond_0
    return-void
.end method
