.class public final Lio/sentry/android/replay/util/SentryReplayDebug;
.super Ljava/lang/Object;
.source "SentryReplayDebug.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0005\u001a\u00020\u00068F\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lio/sentry/android/replay/util/SentryReplayDebug;",
        "",
        "()V",
        "FAIL_FAST_PROPERTY",
        "",
        "failFast",
        "",
        "getFailFast",
        "()Z",
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
.field public static final $stable:I = 0x0

.field private static final FAIL_FAST_PROPERTY:Ljava/lang/String; = "io.sentry.replay.compose.fail-fast"

.field public static final INSTANCE:Lio/sentry/android/replay/util/SentryReplayDebug;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/util/SentryReplayDebug;

    invoke-direct {v0}, Lio/sentry/android/replay/util/SentryReplayDebug;-><init>()V

    sput-object v0, Lio/sentry/android/replay/util/SentryReplayDebug;->INSTANCE:Lio/sentry/android/replay/util/SentryReplayDebug;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getFailFast()Z
    .locals 3

    .line 25
    const-string v0, "io.sentry.replay.compose.fail-fast"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "true"

    invoke-static {v2, v0, v1}, Lkotlin/text/StringsKt;->equals(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method
