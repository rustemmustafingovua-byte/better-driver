.class public final Lio/sentry/android/replay/util/MaskRenderer;
.super Ljava/lang/Object;
.source "MaskRenderer.kt"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/util/MaskRenderer$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMaskRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MaskRenderer.kt\nio/sentry/android/replay/util/MaskRenderer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0001\u0018\u0000 #2\u00020\u0001:\u0001#B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J$\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u001c2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u0002J(\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u001c0 2\u0006\u0010\u001a\u001a\u00020\u00052\u0006\u0010!\u001a\u00020\"2\n\u0008\u0002\u0010\u001d\u001a\u0004\u0018\u00010\u001eR\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0006\u001a\u00020\u00078BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001b\u0010\u000c\u001a\u00020\u00058@X\u0080\u0084\u0002\u00a2\u0006\u000c\u001a\u0004\u0008\u000f\u0010\u0010*\u0004\u0008\r\u0010\u000eR\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000b\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006$"
    }
    d2 = {
        "Lio/sentry/android/replay/util/MaskRenderer;",
        "Ljava/io/Closeable;",
        "()V",
        "lazySinglePixelBitmap",
        "Lkotlin/Lazy;",
        "Landroid/graphics/Bitmap;",
        "maskingPaint",
        "Landroid/graphics/Paint;",
        "getMaskingPaint",
        "()Landroid/graphics/Paint;",
        "maskingPaint$delegate",
        "Lkotlin/Lazy;",
        "singlePixelBitmap",
        "getSinglePixelBitmap$sentry_android_replay_release$delegate",
        "(Lio/sentry/android/replay/util/MaskRenderer;)Ljava/lang/Object;",
        "getSinglePixelBitmap$sentry_android_replay_release",
        "()Landroid/graphics/Bitmap;",
        "singlePixelBitmapCanvas",
        "Landroid/graphics/Canvas;",
        "getSinglePixelBitmapCanvas",
        "()Landroid/graphics/Canvas;",
        "singlePixelBitmapCanvas$delegate",
        "close",
        "",
        "dominantColorForRect",
        "",
        "bitmap",
        "rect",
        "Landroid/graphics/Rect;",
        "scaleMatrix",
        "Landroid/graphics/Matrix;",
        "renderMasks",
        "",
        "viewHierarchy",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "Companion",
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
.field public static final $stable:I

.field private static final Companion:Lio/sentry/android/replay/util/MaskRenderer$Companion;

.field private static final MASK_CORNER_RADIUS:F = 10.0f


# instance fields
.field private final lazySinglePixelBitmap:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final maskingPaint$delegate:Lkotlin/Lazy;

.field private final singlePixelBitmapCanvas$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/util/MaskRenderer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/util/MaskRenderer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/util/MaskRenderer;->Companion:Lio/sentry/android/replay/util/MaskRenderer$Companion;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/util/MaskRenderer;->$stable:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lio/sentry/android/replay/util/MaskRenderer$lazySinglePixelBitmap$1;->INSTANCE:Lio/sentry/android/replay/util/MaskRenderer$lazySinglePixelBitmap$1;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/util/MaskRenderer;->lazySinglePixelBitmap:Lkotlin/Lazy;

    .line 31
    nop

    .line 32
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lio/sentry/android/replay/util/MaskRenderer$singlePixelBitmapCanvas$2;

    invoke-direct {v1, p0}, Lio/sentry/android/replay/util/MaskRenderer$singlePixelBitmapCanvas$2;-><init>(Lio/sentry/android/replay/util/MaskRenderer;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/util/MaskRenderer;->singlePixelBitmapCanvas$delegate:Lkotlin/Lazy;

    .line 33
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lio/sentry/android/replay/util/MaskRenderer$maskingPaint$2;->INSTANCE:Lio/sentry/android/replay/util/MaskRenderer$maskingPaint$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lio/sentry/android/replay/util/MaskRenderer;->maskingPaint$delegate:Lkotlin/Lazy;

    .line 22
    return-void
.end method

.method public static final synthetic access$dominantColorForRect(Lio/sentry/android/replay/util/MaskRenderer;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;)I
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/util/MaskRenderer;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "scaleMatrix"    # Landroid/graphics/Matrix;

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/replay/util/MaskRenderer;->dominantColorForRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;)I

    move-result v0

    return v0
.end method

.method public static final synthetic access$getMaskingPaint(Lio/sentry/android/replay/util/MaskRenderer;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/util/MaskRenderer;

    .line 21
    invoke-direct {p0}, Lio/sentry/android/replay/util/MaskRenderer;->getMaskingPaint()Landroid/graphics/Paint;

    move-result-object v0

    return-object v0
.end method

.method private final dominantColorForRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;)I
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "rect"    # Landroid/graphics/Rect;
    .param p3, "scaleMatrix"    # Landroid/graphics/Matrix;

    .line 94
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lio/sentry/android/replay/util/MaskRenderer;->getSinglePixelBitmap$sentry_android_replay_release()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 98
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 99
    .local v0, "visibleRect":Landroid/graphics/Rect;
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 102
    .local v1, "visibleRectF":Landroid/graphics/RectF;
    if-eqz p3, :cond_1

    invoke-virtual {p3, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 103
    :cond_1
    invoke-virtual {v1, v0}, Landroid/graphics/RectF;->round(Landroid/graphics/Rect;)V

    .line 106
    invoke-direct {p0}, Lio/sentry/android/replay/util/MaskRenderer;->getSinglePixelBitmapCanvas()Landroid/graphics/Canvas;

    move-result-object v2

    new-instance v3, Landroid/graphics/Rect;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v4, v5, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x0

    invoke-virtual {v2, p1, v0, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 109
    invoke-virtual {p0}, Lio/sentry/android/replay/util/MaskRenderer;->getSinglePixelBitmap$sentry_android_replay_release()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2, v4, v4}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v2

    return v2

    .line 95
    .end local v0    # "visibleRect":Landroid/graphics/Rect;
    .end local v1    # "visibleRectF":Landroid/graphics/RectF;
    :cond_2
    :goto_0
    const/high16 v0, -0x1000000

    return v0
.end method

.method static synthetic dominantColorForRect$default(Lio/sentry/android/replay/util/MaskRenderer;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;ILjava/lang/Object;)I
    .locals 0

    .line 93
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lio/sentry/android/replay/util/MaskRenderer;->dominantColorForRect(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Matrix;)I

    move-result p0

    return p0
.end method

.method private final getMaskingPaint()Landroid/graphics/Paint;
    .locals 1

    .line 33
    iget-object v0, p0, Lio/sentry/android/replay/util/MaskRenderer;->maskingPaint$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Paint;

    return-object v0
.end method

.method private static getSinglePixelBitmap$sentry_android_replay_release$delegate(Lio/sentry/android/replay/util/MaskRenderer;)Ljava/lang/Object;
    .locals 1
    .param p0, "<this>"    # Lio/sentry/android/replay/util/MaskRenderer;

    .line 31
    iget-object v0, p0, Lio/sentry/android/replay/util/MaskRenderer;->lazySinglePixelBitmap:Lkotlin/Lazy;

    return-object v0
.end method

.method private final getSinglePixelBitmapCanvas()Landroid/graphics/Canvas;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/sentry/android/replay/util/MaskRenderer;->singlePixelBitmapCanvas$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Canvas;

    return-object v0
.end method

.method public static synthetic renderMasks$default(Lio/sentry/android/replay/util/MaskRenderer;Landroid/graphics/Bitmap;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Landroid/graphics/Matrix;ILjava/lang/Object;)Ljava/util/List;
    .locals 0

    .line 43
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 46
    const/4 p3, 0x0

    .line 43
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lio/sentry/android/replay/util/MaskRenderer;->renderMasks(Landroid/graphics/Bitmap;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Landroid/graphics/Matrix;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 114
    iget-object v0, p0, Lio/sentry/android/replay/util/MaskRenderer;->lazySinglePixelBitmap:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/sentry/android/replay/util/MaskRenderer;->getSinglePixelBitmap$sentry_android_replay_release()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lio/sentry/android/replay/util/MaskRenderer;->getSinglePixelBitmap$sentry_android_replay_release()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 117
    :cond_0
    return-void
.end method

.method public final getSinglePixelBitmap$sentry_android_replay_release()Landroid/graphics/Bitmap;
    .locals 1

    .line 31
    iget-object v0, p0, Lio/sentry/android/replay/util/MaskRenderer;->lazySinglePixelBitmap:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public final renderMasks(Landroid/graphics/Bitmap;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Landroid/graphics/Matrix;)Ljava/util/List;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "viewHierarchy"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p3, "scaleMatrix"    # Landroid/graphics/Matrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
            "Landroid/graphics/Matrix;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation

    const-string v0, "bitmap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewHierarchy"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v0

    check-cast v5, Ljava/util/List;

    .line 53
    .local v5, "maskedRects":Ljava/util/List;
    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 55
    .local v6, "canvas":Landroid/graphics/Canvas;
    if-eqz p3, :cond_1

    move-object v0, p3

    .line 120
    .local v0, "it":Landroid/graphics/Matrix;
    const/4 v1, 0x0

    .line 55
    .local v1, "$i$a$-let-MaskRenderer$renderMasks$1":I
    invoke-virtual {v6, v0}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 57
    .end local v0    # "it":Landroid/graphics/Matrix;
    .end local v1    # "$i$a$-let-MaskRenderer$renderMasks$1":I
    :cond_1
    new-instance v1, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p3

    .end local p1    # "bitmap":Landroid/graphics/Bitmap;
    .end local p3    # "scaleMatrix":Landroid/graphics/Matrix;
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    .local v4, "scaleMatrix":Landroid/graphics/Matrix;
    invoke-direct/range {v1 .. v6}, Lio/sentry/android/replay/util/MaskRenderer$renderMasks$2;-><init>(Lio/sentry/android/replay/util/MaskRenderer;Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Ljava/util/List;Landroid/graphics/Canvas;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p2, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->traverse(Lkotlin/jvm/functions/Function1;)V

    .line 86
    return-object v5
.end method
