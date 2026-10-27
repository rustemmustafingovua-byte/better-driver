.class public final Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;
.super Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
.source "ViewHierarchyNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextViewHierarchyNode"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\n\u0008\u0007\u0018\u00002\u00020\u0001B\u0097\u0001\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0005\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\t\u0012\u0006\u0010\u000b\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\u0005\u0012\u0006\u0010\r\u001a\u00020\t\u0012\u0006\u0010\u000e\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u000f\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u0011\u0012\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0011\u0012\n\u0008\u0002\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\u0002\u0010\u0016R\u0015\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\n\n\u0002\u0010\u0019\u001a\u0004\u0008\u0017\u0010\u0018R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0011\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u0007\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u001d\u00a8\u0006\u001f"
    }
    d2 = {
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;",
        "Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;",
        "layout",
        "Lio/sentry/android/replay/util/TextLayout;",
        "dominantColor",
        "",
        "paddingLeft",
        "paddingTop",
        "x",
        "",
        "y",
        "width",
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
        "(Lio/sentry/android/replay/util/TextLayout;Ljava/lang/Integer;IIFFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V",
        "getDominantColor",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "getLayout",
        "()Lio/sentry/android/replay/util/TextLayout;",
        "getPaddingLeft",
        "()I",
        "getPaddingTop",
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


# instance fields
.field private final dominantColor:Ljava/lang/Integer;

.field private final layout:Lio/sentry/android/replay/util/TextLayout;

.field private final paddingLeft:I

.field private final paddingTop:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->$stable:I

    return-void
.end method

.method public constructor <init>(Lio/sentry/android/replay/util/TextLayout;Ljava/lang/Integer;IIFFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V
    .locals 13
    .param p1, "layout"    # Lio/sentry/android/replay/util/TextLayout;
    .param p2, "dominantColor"    # Ljava/lang/Integer;
    .param p3, "paddingLeft"    # I
    .param p4, "paddingTop"    # I
    .param p5, "x"    # F
    .param p6, "y"    # F
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "elevation"    # F
    .param p10, "distance"    # I
    .param p11, "parent"    # Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;
    .param p12, "shouldMask"    # Z
    .param p13, "isImportantForContentCapture"    # Z
    .param p14, "isVisible"    # Z
    .param p15, "visibleRect"    # Landroid/graphics/Rect;

    .line 85
    nop

    .line 86
    nop

    .line 87
    nop

    .line 88
    nop

    .line 89
    nop

    .line 90
    nop

    .line 91
    nop

    .line 92
    nop

    .line 93
    nop

    .line 94
    nop

    .line 95
    nop

    .line 96
    nop

    .line 85
    const/4 v12, 0x0

    move-object v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v5, p9

    move/from16 v6, p10

    move-object/from16 v7, p11

    move/from16 v8, p12

    move/from16 v9, p13

    move/from16 v10, p14

    move-object/from16 v11, p15

    invoke-direct/range {v0 .. v12}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;-><init>(FFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 69
    iput-object p1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->layout:Lio/sentry/android/replay/util/TextLayout;

    .line 70
    iput-object p2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->dominantColor:Ljava/lang/Integer;

    .line 71
    move/from16 v1, p3

    iput v1, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->paddingLeft:I

    .line 72
    move/from16 v2, p4

    iput v2, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->paddingTop:I

    .line 68
    return-void
.end method

.method public synthetic constructor <init>(Lio/sentry/android/replay/util/TextLayout;Ljava/lang/Integer;IIFFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 19

    .line 68
    move/from16 v0, p16

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 69
    move-object v4, v2

    goto :goto_0

    .line 68
    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    .line 70
    move-object v5, v2

    goto :goto_1

    .line 68
    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v1, v0, 0x4

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 71
    move v6, v3

    goto :goto_2

    .line 68
    :cond_2
    move/from16 v6, p3

    :goto_2
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_3

    .line 72
    move v7, v3

    goto :goto_3

    .line 68
    :cond_3
    move/from16 v7, p4

    :goto_3
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_4

    .line 79
    move-object v14, v2

    goto :goto_4

    .line 68
    :cond_4
    move-object/from16 v14, p11

    :goto_4
    and-int/lit16 v1, v0, 0x800

    if-eqz v1, :cond_5

    .line 80
    move v15, v3

    goto :goto_5

    .line 68
    :cond_5
    move/from16 v15, p12

    :goto_5
    and-int/lit16 v1, v0, 0x1000

    if-eqz v1, :cond_6

    .line 81
    move/from16 v16, v3

    goto :goto_6

    .line 68
    :cond_6
    move/from16 v16, p13

    :goto_6
    and-int/lit16 v1, v0, 0x2000

    if-eqz v1, :cond_7

    .line 82
    move/from16 v17, v3

    goto :goto_7

    .line 68
    :cond_7
    move/from16 v17, p14

    :goto_7
    and-int/lit16 v0, v0, 0x4000

    if-eqz v0, :cond_8

    .line 83
    move-object/from16 v18, v2

    goto :goto_8

    .line 68
    :cond_8
    move-object/from16 v18, p15

    :goto_8
    move-object/from16 v3, p0

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move/from16 v13, p10

    invoke-direct/range {v3 .. v18}, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;-><init>(Lio/sentry/android/replay/util/TextLayout;Ljava/lang/Integer;IIFFIIFILio/sentry/android/replay/viewhierarchy/ViewHierarchyNode;ZZZLandroid/graphics/Rect;)V

    .line 84
    return-void
.end method


# virtual methods
.method public final getDominantColor()Ljava/lang/Integer;
    .locals 1

    .line 70
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->dominantColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getLayout()Lio/sentry/android/replay/util/TextLayout;
    .locals 1

    .line 69
    iget-object v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->layout:Lio/sentry/android/replay/util/TextLayout;

    return-object v0
.end method

.method public final getPaddingLeft()I
    .locals 1

    .line 71
    iget v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->paddingLeft:I

    return v0
.end method

.method public final getPaddingTop()I
    .locals 1

    .line 72
    iget v0, p0, Lio/sentry/android/replay/viewhierarchy/ViewHierarchyNode$TextViewHierarchyNode;->paddingTop:I

    return v0
.end method
