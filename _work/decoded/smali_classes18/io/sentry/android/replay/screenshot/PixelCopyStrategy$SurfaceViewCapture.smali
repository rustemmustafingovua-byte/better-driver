.class final Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;
.super Ljava/lang/Object;
.source "PixelCopyStrategy.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/screenshot/PixelCopyStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceViewCapture"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\u000b\u00a8\u0006\r"
    }
    d2 = {
        "Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;",
        "",
        "bitmap",
        "Landroid/graphics/Bitmap;",
        "x",
        "",
        "y",
        "(Landroid/graphics/Bitmap;II)V",
        "getBitmap",
        "()Landroid/graphics/Bitmap;",
        "getX",
        "()I",
        "getY",
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
.field private final bitmap:Landroid/graphics/Bitmap;

.field private final x:I

.field private final y:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;II)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "x"    # I
    .param p3, "y"    # I

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->bitmap:Landroid/graphics/Bitmap;

    iput p2, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->x:I

    iput p3, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->y:I

    return-void
.end method


# virtual methods
.method public final getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final getX()I
    .locals 1

    .line 79
    iget v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    .line 79
    iget v0, p0, Lio/sentry/android/replay/screenshot/PixelCopyStrategy$SurfaceViewCapture;->y:I

    return v0
.end method
