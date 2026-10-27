.class final Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ReplayIntegration.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;->onScreenshotRecorded(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lio/sentry/android/replay/ReplayCache;",
        "Ljava/lang/Long;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lio/sentry/android/replay/ReplayCache;",
        "frameTimeStamp",
        "",
        "invoke"
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
.field final synthetic $bitmap:Landroid/graphics/Bitmap;

.field final synthetic $screen:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/ReplayIntegration;Landroid/graphics/Bitmap;Lkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/replay/ReplayIntegration;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->$bitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->$screen:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 467
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/ReplayCache;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->invoke(Lio/sentry/android/replay/ReplayCache;J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/sentry/android/replay/ReplayCache;J)V
    .locals 6
    .param p1, "$this$onScreenshotRecorded"    # Lio/sentry/android/replay/ReplayCache;
    .param p2, "frameTimeStamp"    # J

    const-string v0, "$this$onScreenshotRecorded"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v0}, Lio/sentry/android/replay/ReplayIntegration;->access$getOptions$p(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/SentryOptions;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "options"

    if-nez v0, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_0
    invoke-virtual {v0}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object v0

    invoke-virtual {v0}, Lio/sentry/SentryReplayOptions;->getFrameObserver()Lio/sentry/SentryReplayOptions$ReplayFrameObserver;

    move-result-object v0

    .line 469
    .local v0, "observer":Lio/sentry/SentryReplayOptions$ReplayFrameObserver;
    if-eqz v0, :cond_2

    .line 470
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 471
    .local v3, "copy":Landroid/graphics/Bitmap;
    if-eqz v3, :cond_2

    .line 472
    nop

    .line 473
    :try_start_0
    new-instance v4, Lio/sentry/Hint;

    invoke-direct {v4}, Lio/sentry/Hint;-><init>()V

    .line 474
    .local v4, "hint":Lio/sentry/Hint;
    const-string v5, "replay:frameBitmap"

    invoke-virtual {v4, v5, v3}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->$screen:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v4, p2, p3, v5}, Lio/sentry/SentryReplayOptions$ReplayFrameObserver;->onMaskedFrameCaptured(Lio/sentry/Hint;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v4    # "hint":Lio/sentry/Hint;
    goto :goto_1

    .line 476
    :catchall_0
    move-exception v4

    .line 477
    .local v4, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v5}, Lio/sentry/android/replay/ReplayIntegration;->access$getOptions$p(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/SentryOptions;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v1, v5

    :goto_0
    invoke-virtual {v1}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object v1

    sget-object v2, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v5, "Error in ReplayFrameObserver"

    invoke-interface {v1, v2, v5, v4}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 478
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 482
    .end local v3    # "copy":Landroid/graphics/Bitmap;
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->$bitmap:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$2;->$screen:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v1, p2, p3, v2}, Lio/sentry/android/replay/ReplayCache;->addFrame$sentry_android_replay_release(Landroid/graphics/Bitmap;JLjava/lang/String;)V

    .line 483
    return-void
.end method
