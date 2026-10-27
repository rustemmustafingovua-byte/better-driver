.class final Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;
.super Ljava/lang/Object;
.source "SentryLayoutNodeHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Fallback"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0008\u0002\u0018\u00002\u00020\u0001B\u0019\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0005R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\u0007\u00a8\u0006\t"
    }
    d2 = {
        "Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;",
        "",
        "getChildren",
        "Ljava/lang/reflect/Method;",
        "getOuterCoordinator",
        "(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V",
        "getGetChildren",
        "()Ljava/lang/reflect/Method;",
        "getGetOuterCoordinator",
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
.field private final getChildren:Ljava/lang/reflect/Method;

.field private final getOuterCoordinator:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .locals 0
    .param p1, "getChildren"    # Ljava/lang/reflect/Method;
    .param p2, "getOuterCoordinator"    # Ljava/lang/reflect/Method;

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;->getChildren:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;->getOuterCoordinator:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public final getGetChildren()Ljava/lang/reflect/Method;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;->getChildren:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public final getGetOuterCoordinator()Ljava/lang/reflect/Method;
    .locals 1

    .line 27
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/SentryLayoutNodeHelper$Fallback;->getOuterCoordinator:Ljava/lang/reflect/Method;

    return-object v0
.end method
