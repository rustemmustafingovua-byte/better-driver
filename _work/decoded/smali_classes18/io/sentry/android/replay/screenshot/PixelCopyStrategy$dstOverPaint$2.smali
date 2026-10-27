.class final Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PixelCopyStrategy.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/sentry/android/replay/screenshot/PixelCopyStrategy;-><init>(Lio/sentry/android/replay/ExecutorProvider;Lio/sentry/android/replay/ScreenshotRecorderCallback;Lio/sentry/SentryOptions;Lio/sentry/android/replay/ScreenshotRecorderConfig;Lio/sentry/android/replay/util/DebugOverlayDrawable;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Paint;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPixelCopyStrategy.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PixelCopyStrategy.kt\nio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,479:1\n1#2:480\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/graphics/Paint;",
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


# static fields
.field public static final INSTANCE:Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;

    invoke-direct {v0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;-><init>()V

    sput-object v0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;->INSTANCE:Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Paint;
    .locals 5

    .line 72
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    move-object v1, v0

    .line 480
    .local v1, "$this$invoke_u24lambda_u240":Landroid/graphics/Paint;
    const/4 v2, 0x0

    .line 72
    .local v2, "$i$a$-apply-PixelCopyStrategy$dstOverPaint$2$1":I
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    check-cast v3, Landroid/graphics/Xfermode;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .end local v1    # "$this$invoke_u24lambda_u240":Landroid/graphics/Paint;
    .end local v2    # "$i$a$-apply-PixelCopyStrategy$dstOverPaint$2$1":I
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$dstOverPaint$2;->invoke()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method
