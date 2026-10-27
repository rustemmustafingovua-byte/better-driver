.class final Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CanvasStrategy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/screenshot/CanvasStrategy;-><init>(Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Matrix;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCanvasStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CanvasStrategy.kt\nio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1032:1\n1#2:1033\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Matrix;",
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
.field final synthetic this$0:Lio/sentry/android/replay/screenshot/CanvasStrategy;


# direct methods
.method constructor <init>(Lio/sentry/android/replay/screenshot/CanvasStrategy;)V
    .locals 1

    iput-object p1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;->this$0:Lio/sentry/android/replay/screenshot/CanvasStrategy;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Matrix;
    .locals 5

    .line 57
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget-object v1, p0, Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;->this$0:Lio/sentry/android/replay/screenshot/CanvasStrategy;

    move-object v2, v0

    .line 1033
    .local v2, "$this$invoke_u24lambda_u240":Landroid/graphics/Matrix;
    const/4 v3, 0x0

    .line 57
    .local v3, "$i$a$-apply-CanvasStrategy$prescaledMatrix$2$1":I
    invoke-static {v1}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->access$getConfig$p(Lio/sentry/android/replay/screenshot/CanvasStrategy;)Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v4

    invoke-virtual {v4}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorX()F

    move-result v4

    invoke-static {v1}, Lio/sentry/android/replay/screenshot/CanvasStrategy;->access$getConfig$p(Lio/sentry/android/replay/screenshot/CanvasStrategy;)Lio/sentry/android/replay/ScreenshotRecorderConfig;

    move-result-object v1

    invoke-virtual {v1}, Lio/sentry/android/replay/ScreenshotRecorderConfig;->getScaleFactorY()F

    move-result v1

    invoke-virtual {v2, v4, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    .end local v2    # "$this$invoke_u24lambda_u240":Landroid/graphics/Matrix;
    .end local v3    # "$i$a$-apply-CanvasStrategy$prescaledMatrix$2$1":I
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lio/sentry/android/replay/screenshot/CanvasStrategy$prescaledMatrix$2;->invoke()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method
