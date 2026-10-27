.class final Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;
.super Lkotlin/jvm/internal/Lambda;
.source "ReplayIntegration.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/ReplayIntegration;->onScreenshotRecorded(Ljava/io/File;J)V
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
        "<anonymous parameter 0>",
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
.field final synthetic $frameTimestamp:J

.field final synthetic $screen:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $screenshot:Ljava/io/File;

.field final synthetic this$0:Lio/sentry/android/replay/ReplayIntegration;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/ReplayIntegration;Ljava/io/File;JLkotlin/jvm/internal/Ref$ObjectRef;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/sentry/android/replay/ReplayIntegration;",
            "Ljava/io/File;",
            "J",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    iput-object p2, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->$screenshot:Ljava/io/File;

    iput-wide p3, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->$frameTimestamp:J

    iput-object p5, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->$screen:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;

    .line 490
    move-object v0, p1

    check-cast v0, Lio/sentry/android/replay/ReplayCache;

    move-object v1, p2

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->invoke(Lio/sentry/android/replay/ReplayCache;J)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(Lio/sentry/android/replay/ReplayCache;J)V
    .locals 6
    .param p1, "$this$onScreenshotRecorded"    # Lio/sentry/android/replay/ReplayCache;

    const-string p2, "$this$onScreenshotRecorded"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 491
    iget-object p2, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {p2}, Lio/sentry/android/replay/ReplayIntegration;->access$getOptions$p(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/SentryOptions;

    move-result-object p2

    const/4 p3, 0x0

    const-string v0, "options"

    if-nez p2, :cond_0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, p3

    :cond_0
    invoke-virtual {p2}, Lio/sentry/SentryOptions;->getSessionReplay()Lio/sentry/SentryReplayOptions;

    move-result-object p2

    invoke-virtual {p2}, Lio/sentry/SentryReplayOptions;->getFrameObserver()Lio/sentry/SentryReplayOptions$ReplayFrameObserver;

    move-result-object p2

    .line 492
    .local p2, "observer":Lio/sentry/SentryReplayOptions$ReplayFrameObserver;
    if-eqz p2, :cond_2

    .line 493
    iget-object v1, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->$screenshot:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 494
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v1, :cond_2

    .line 495
    nop

    .line 496
    :try_start_0
    new-instance v2, Lio/sentry/Hint;

    invoke-direct {v2}, Lio/sentry/Hint;-><init>()V

    .line 497
    .local v2, "hint":Lio/sentry/Hint;
    const-string v3, "replay:frameBitmap"

    invoke-virtual {v2, v3, v1}, Lio/sentry/Hint;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 498
    iget-wide v3, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->$frameTimestamp:J

    iget-object v5, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->$screen:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-interface {p2, v2, v3, v4, v5}, Lio/sentry/SentryReplayOptions$ReplayFrameObserver;->onMaskedFrameCaptured(Lio/sentry/Hint;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v2    # "hint":Lio/sentry/Hint;
    goto :goto_1

    .line 499
    :catchall_0
    move-exception v2

    .line 500
    .local v2, "e":Ljava/lang/Throwable;
    iget-object v3, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->this$0:Lio/sentry/android/replay/ReplayIntegration;

    invoke-static {v3}, Lio/sentry/android/replay/ReplayIntegration;->access$getOptions$p(Lio/sentry/android/replay/ReplayIntegration;)Lio/sentry/SentryOptions;

    move-result-object v3

    if-nez v3, :cond_1

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object p3, v3

    :goto_0
    invoke-virtual {p3}, Lio/sentry/SentryOptions;->getLogger()Lio/sentry/ILogger;

    move-result-object p3

    sget-object v0, Lio/sentry/SentryLevel;->ERROR:Lio/sentry/SentryLevel;

    const-string v3, "Error in ReplayFrameObserver"

    invoke-interface {p3, v0, v3, v2}, Lio/sentry/ILogger;->log(Lio/sentry/SentryLevel;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 501
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 505
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "e":Ljava/lang/Throwable;
    :cond_2
    :goto_1
    iget-object p3, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->$screenshot:Ljava/io/File;

    iget-wide v0, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->$frameTimestamp:J

    iget-object v2, p0, Lio/sentry/android/replay/ReplayIntegration$onScreenshotRecorded$5;->$screen:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, p3, v0, v1, v2}, Lio/sentry/android/replay/ReplayCache;->addFrame(Ljava/io/File;JLjava/lang/String;)V

    .line 506
    return-void
.end method
