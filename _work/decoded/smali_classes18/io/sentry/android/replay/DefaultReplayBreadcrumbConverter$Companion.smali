.class public final Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;
.super Ljava/lang/Object;
.source "DefaultReplayBreadcrumbConverter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\u0008\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0005\u001a\u00020\u00068BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\u000b\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000cj\u0008\u0012\u0004\u0012\u00020\r`\u000eX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;",
        "",
        "()V",
        "MAX_HTTP_NETWORK_DETAILS",
        "",
        "snakecasePattern",
        "Lkotlin/text/Regex;",
        "getSnakecasePattern",
        "()Lkotlin/text/Regex;",
        "snakecasePattern$delegate",
        "Lkotlin/Lazy;",
        "supportedNetworkData",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getSnakecasePattern(Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;)Lkotlin/text/Regex;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;

    .line 27
    invoke-direct {p0}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter$Companion;->getSnakecasePattern()Lkotlin/text/Regex;

    move-result-object v0

    return-object v0
.end method

.method private final getSnakecasePattern()Lkotlin/text/Regex;
    .locals 1

    .line 29
    invoke-static {}, Lio/sentry/android/replay/DefaultReplayBreadcrumbConverter;->access$getSnakecasePattern$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/text/Regex;

    return-object v0
.end method
