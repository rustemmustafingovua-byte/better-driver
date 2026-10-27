.class public abstract Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
.super Ljava/lang/Object;
.source "ViewHierarchyNode.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;,
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$GenericViewHierarchyNode;,
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;,
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;,
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;,
        Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nViewHierarchyNode.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ViewHierarchyNode.kt\nio/sentry/android/replay/viewhierarchy/ViewHierarchyNode\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,448:1\n1863#2,2:449\n*S KotlinDebug\n*F\n+ 1 ViewHierarchyNode.kt\nio/sentry/android/replay/viewhierarchy/ViewHierarchyNode\n*L\n181#1:449,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00081\u0018\u0000 32\u00020\u0001:\u0006345678Bm\u0008\u0004\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0006\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0000\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000c\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011J\u0018\u0010(\u001a\u00020)2\u0006\u0010*\u001a\u00020\u00002\u0006\u0010+\u001a\u00020\u0000H\u0002J\u000e\u0010,\u001a\u00020\u000c2\u0006\u0010*\u001a\u00020\u0000J\u000e\u0010-\u001a\u00020.2\u0006\u0010/\u001a\u00020\u000cJ\u001a\u00100\u001a\u00020.2\u0012\u00101\u001a\u000e\u0012\u0004\u0012\u00020\u0000\u0012\u0004\u0012\u00020\u000c02R\"\u0010\u0012\u001a\n\u0012\u0004\u0012\u00020\u0000\u0018\u00010\u0013X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\u0011\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019R\u001a\u0010\r\u001a\u00020\u000cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\u0011\u0010\u000e\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u001dR\u0013\u0010\n\u001a\u0004\u0018\u00010\u0000\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010!R\u0011\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\"\u0010\u001dR\u0013\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$R\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008%\u0010\u0019R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008&\u0010\u001bR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\'\u0010\u001b\u0082\u0001\u00049:;<\u00a8\u0006="
    }
    d2 = {
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "",
        "x",
        "",
        "y",
        "width",
        "",
        "height",
        "elevation",
        "distance",
        "parent",
        "shouldMask",
        "",
        "isImportantForContentCapture",
        "isVisible",
        "visibleRect",
        "Landroid/graphics/Rect;",
        "(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V",
        "children",
        "",
        "getChildren",
        "()Ljava/util/List;",
        "setChildren",
        "(Ljava/util/List;)V",
        "getDistance",
        "()I",
        "getElevation",
        "()F",
        "getHeight",
        "()Z",
        "setImportantForContentCapture",
        "(Z)V",
        "getParent",
        "()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "getShouldMask",
        "getVisibleRect",
        "()Landroid/graphics/Rect;",
        "getWidth",
        "getX",
        "getY",
        "findLCA",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;",
        "node",
        "otherNode",
        "isObscured",
        "setImportantForCaptureToAncestors",
        "",
        "isImportant",
        "traverse",
        "callback",
        "Lkotlin/Function1;",
        "Companion",
        "GenericViewHierarchyNode",
        "ImageViewHierarchyNode",
        "LCAResult",
        "SurfaceViewHierarchyNode",
        "TextViewHierarchyNode",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$GenericViewHierarchyNode;",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$ImageViewHierarchyNode;",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$SurfaceViewHierarchyNode;",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;",
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

.field public static final Companion:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;

.field private static final SENTRY_MASK_TAG:Ljava/lang/String; = "sentry-mask"

.field private static final SENTRY_UNMASK_TAG:Ljava/lang/String; = "sentry-unmask"


# instance fields
.field private children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
            ">;"
        }
    .end annotation
.end field

.field private final distance:I

.field private final elevation:F

.field private final height:I

.field private isImportantForContentCapture:Z

.field private final isVisible:Z

.field private final parent:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

.field private final shouldMask:Z

.field private final visibleRect:Landroid/graphics/Rect;

.field private final width:I

.field private final x:F

.field private final y:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->Companion:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->$stable:I

    return-void
.end method

.method private constructor <init>(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "elevation"    # F
    .param p6, "distance"    # I
    .param p7, "parent"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p8, "shouldMask"    # Z
    .param p9, "isImportantForContentCapture"    # Z
    .param p10, "isVisible"    # Z
    .param p11, "visibleRect"    # Landroid/graphics/Rect;

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->x:F

    .line 25
    iput p2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->y:F

    .line 26
    iput p3, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->width:I

    .line 27
    iput p4, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->height:I

    .line 29
    iput p5, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->elevation:F

    .line 31
    iput p6, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->distance:I

    .line 32
    iput-object p7, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->parent:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 33
    iput-boolean p8, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->shouldMask:Z

    .line 35
    iput-boolean p9, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->isImportantForContentCapture:Z

    .line 36
    iput-boolean p10, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->isVisible:Z

    .line 37
    iput-object p11, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->visibleRect:Landroid/graphics/Rect;

    .line 23
    return-void
.end method

.method public synthetic constructor <init>(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 16

    .line 23
    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x40

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 32
    move-object v10, v2

    goto :goto_0

    .line 23
    :cond_0
    move-object/from16 v10, p7

    :goto_0
    and-int/lit16 v1, v0, 0x80

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 33
    move v11, v3

    goto :goto_1

    .line 23
    :cond_1
    move/from16 v11, p8

    :goto_1
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_2

    .line 35
    move v12, v3

    goto :goto_2

    .line 23
    :cond_2
    move/from16 v12, p9

    :goto_2
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_3

    .line 36
    move v13, v3

    goto :goto_3

    .line 23
    :cond_3
    move/from16 v13, p10

    :goto_3
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_4

    .line 37
    move-object v14, v2

    goto :goto_4

    .line 23
    :cond_4
    move-object/from16 v14, p11

    :goto_4
    const/4 v15, 0x0

    move-object/from16 v3, p0

    move/from16 v4, p1

    move/from16 v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    invoke-direct/range {v3 .. v15}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 38
    return-void
.end method

.method public synthetic constructor <init>(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V

    return-void
.end method

.method public static final synthetic access$findLCA(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;
    .locals 1
    .param p0, "$this"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p1, "node"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p2, "otherNode"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 21
    invoke-direct {p0, p1, p2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->findLCA(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;

    move-result-object v0

    return-object v0
.end method

.method private final findLCA(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;
    .locals 7
    .param p1, "node"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p2, "otherNode"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 259
    const/4 v0, 0x0

    .line 260
    .local v0, "nodeSubtree":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    const/4 v1, 0x0

    .line 261
    .local v1, "otherNodeSubtree":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    const/4 v2, 0x0

    .line 264
    .local v2, "lca":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 265
    move-object v0, p0

    .line 267
    :cond_0
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    move-object v1, p0

    .line 272
    :cond_1
    iget-object v3, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->children:Ljava/util/List;

    if-eqz v3, :cond_5

    .line 273
    iget-object v3, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->children:Ljava/util/List;

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 274
    .local v4, "child":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    invoke-direct {v4, p1, p2}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->findLCA(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;

    move-result-object v5

    .line 276
    .local v5, "result":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;
    invoke-virtual {v5}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->getLca()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 277
    return-object v5

    .line 279
    :cond_3
    invoke-virtual {v5}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->getNodeSubtree()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 280
    move-object v0, v4

    .line 282
    :cond_4
    invoke-virtual {v5}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;->getOtherNodeSubtree()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 283
    move-object v1, v4

    .end local v4    # "child":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .end local v5    # "result":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;
    goto :goto_0

    .line 290
    :cond_5
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 291
    move-object v2, p0

    .line 294
    :cond_6
    new-instance v3, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;

    invoke-direct {v3, v2, v0, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$LCAResult;-><init>(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V

    return-object v3
.end method

.method public static final fromView(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ILio/sentry/SentryMaskingOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 1
    .param p0, "view"    # Landroid/view/View;
    .param p1, "parent"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p2, "distance"    # I
    .param p3, "options"    # Lio/sentry/SentryMaskingOptions;
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->Companion:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;

    invoke-virtual {v0, p0, p1, p2, p3}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$Companion;->fromView(Landroid/view/View;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ILio/sentry/SentryMaskingOptions;)Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    move-result-object v0

    .line 445
    return-object v0
.end method


# virtual methods
.method public final getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->children:Ljava/util/List;

    return-object v0
.end method

.method public final getDistance()I
    .locals 1

    .line 31
    iget v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->distance:I

    return v0
.end method

.method public final getElevation()F
    .locals 1

    .line 29
    iget v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->elevation:F

    return v0
.end method

.method public final getHeight()I
    .locals 1

    .line 27
    iget v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->height:I

    return v0
.end method

.method public final getParent()Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .locals 1

    .line 32
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->parent:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    return-object v0
.end method

.method public final getShouldMask()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->shouldMask:Z

    return v0
.end method

.method public final getVisibleRect()Landroid/graphics/Rect;
    .locals 1

    .line 37
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->visibleRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public final getWidth()I
    .locals 1

    .line 26
    iget v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->width:I

    return v0
.end method

.method public final getX()F
    .locals 1

    .line 24
    iget v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->x:F

    return v0
.end method

.method public final getY()F
    .locals 1

    .line 25
    iget v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->y:F

    return v0
.end method

.method public final isImportantForContentCapture()Z
    .locals 1

    .line 35
    iget-boolean v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->isImportantForContentCapture:Z

    return v0
.end method

.method public final isObscured(Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)Z
    .locals 2
    .param p1, "node"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->parent:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 199
    iget-object v0, p1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->visibleRect:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    return v1

    .line 201
    :cond_1
    new-instance v0, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    .line 203
    .local v0, "isObscured":Lkotlin/jvm/internal/Ref$BooleanRef;
    new-instance v1, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;

    invoke-direct {v1, v0, p1, p0}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$isObscured$2;-><init>(Lkotlin/jvm/internal/Ref$BooleanRef;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->traverse(Lkotlin/jvm/functions/Function1;)V

    .line 237
    iget-boolean v1, v0, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    return v1

    .line 196
    .end local v0    # "isObscured":Lkotlin/jvm/internal/Ref$BooleanRef;
    :cond_2
    const/4 v0, 0x0

    .line 197
    .local v0, "$i$a$-require-ViewHierarchyNode$isObscured$1":I
    nop

    .line 196
    .end local v0    # "$i$a$-require-ViewHierarchyNode$isObscured$1":I
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "This method should be called on the root node of the view hierarchy."

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final isVisible()Z
    .locals 1

    .line 36
    iget-boolean v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->isVisible:Z

    return v0
.end method

.method public final setChildren(Ljava/util/List;)V
    .locals 0
    .param p1, "<set-?>"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
            ">;)V"
        }
    .end annotation

    .line 39
    iput-object p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->children:Ljava/util/List;

    return-void
.end method

.method public final setImportantForCaptureToAncestors(Z)V
    .locals 1
    .param p1, "isImportant"    # Z

    .line 163
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->parent:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .line 164
    .local v0, "parent":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    :goto_0
    if-eqz v0, :cond_0

    .line 165
    iput-boolean p1, v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->isImportantForContentCapture:Z

    .line 166
    iget-object v0, v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->parent:Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method public final setImportantForContentCapture(Z)V
    .locals 0
    .param p1, "<set-?>"    # Z

    .line 35
    iput-boolean p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->isImportantForContentCapture:Z

    return-void
.end method

.method public final traverse(Lkotlin/jvm/functions/Function1;)V
    .locals 7
    .param p1, "callback"    # Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-interface {p1, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 179
    .local v0, "traverseChildren":Z
    if-eqz v0, :cond_1

    .line 180
    iget-object v1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->children:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 181
    iget-object v1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->children:Ljava/util/List;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Ljava/lang/Iterable;

    .local v1, "$this$forEach$iv":Ljava/lang/Iterable;
    const/4 v2, 0x0

    .line 449
    .local v2, "$i$f$forEach":I
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .local v4, "element$iv":Ljava/lang/Object;
    move-object v5, v4

    check-cast v5, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;

    .local v5, "it":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    const/4 v6, 0x0

    .line 181
    .local v6, "$i$a$-forEach-ViewHierarchyNode$traverse$1":I
    invoke-virtual {v5, p1}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;->traverse(Lkotlin/jvm/functions/Function1;)V

    .line 449
    .end local v5    # "it":Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .end local v6    # "$i$a$-forEach-ViewHierarchyNode$traverse$1":I
    nop

    .end local v4    # "element$iv":Ljava/lang/Object;
    goto :goto_0

    .line 450
    :cond_0
    nop

    .line 184
    .end local v1    # "$this$forEach$iv":Ljava/lang/Iterable;
    .end local v2    # "$i$f$forEach":I
    :cond_1
    return-void
.end method
