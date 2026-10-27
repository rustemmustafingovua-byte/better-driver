.class public final Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$$inlined$enqueueOnMainThread$1;
.super Ljava/lang/Object;
.source "ReplayIntegration.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;->onScreenshotRecorded(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nReplayIntegration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration$enqueueOnMainThread$1\n+ 2 ReplayIntegration.kt\nio/sentry/android/replay/ReplayIntegration\n*L\n1#1,821:1\n484#2:822\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "run",
        "io/sentry/android/replay/ReplayIntegration$enqueueOnMainThread$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method public constructor <init>(Lio/sentry/android/replay/ReplayIntegration;)V
    .locals 0

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 617
    const/4 v0, 0x0

    .line 822
    .local v0, "$i$a$-enqueueOnMainThread-ReplayIntegration$onScreenshotRecorded$3":I
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$$inlined$enqueueOnMainThread$1;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v1}, Lio/sentry/android/replay/ReplayIntegration;->access$checkCanRecord(Lio/sentry/android/replay/ReplayIntegration;)V

    .line 617
    .end local v0    # "$i$a$-enqueueOnMainThread-ReplayIntegration$onScreenshotRecorded$3":I
    return-void
.end method
