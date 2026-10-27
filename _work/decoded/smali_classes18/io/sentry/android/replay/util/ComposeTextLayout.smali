.class public final Lio/sentry/android/replay/util/ComposeTextLayout;
.super Ljava/lang/Object;
.source "Nodes.kt"

# interfaces
.implements Lio/sentry/android/replay/util/TextLayout;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNodes.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Nodes.kt\nio/sentry/android/replay/util/ComposeTextLayout\n+ 2 IntSize.kt\nandroidx/compose/ui/unit/IntSize\n+ 3 InlineClassHelper.kt\nandroidx/compose/ui/util/InlineClassHelperKt\n*L\n1#1,242:1\n54#2:243\n85#3:244\n*S KotlinDebug\n*F\n+ 1 Nodes.kt\nio/sentry/android/replay/util/ComposeTextLayout\n*L\n54#1:243\n54#1:244\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0016J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u0006H\u0016J\u0010\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0013\u001a\u00020\u0006H\u0016J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0016R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0014\u0010\u000b\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u00020\u000f8BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006\u0018"
    }
    d2 = {
        "Lio/sentry/android/replay/util/ComposeTextLayout;",
        "Lio/sentry/android/replay/util/TextLayout;",
        "layout",
        "Landroidx/compose/ui/text/TextLayoutResult;",
        "(Landroidx/compose/ui/text/TextLayoutResult;)V",
        "dominantTextColor",
        "",
        "getDominantTextColor",
        "()Ljava/lang/Integer;",
        "getLayout$sentry_android_replay_release",
        "()Landroidx/compose/ui/text/TextLayoutResult;",
        "lineCount",
        "getLineCount",
        "()I",
        "paragraphWidthExceedsNode",
        "",
        "getParagraphWidthExceedsNode",
        "()Z",
        "getLineBottom",
        "line",
        "getLineLeft",
        "",
        "getLineRight",
        "getLineTop",
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
.field private final layout:Landroidx/compose/ui/text/TextLayoutResult;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/ui/text/TextLayoutResult;->$stable:I

    sput v0, Lio/sentry/android/replay/util/ComposeTextLayout;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/TextLayoutResult;)V
    .locals 1
    .param p1, "layout"    # Landroidx/compose/ui/text/TextLayoutResult;

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    return-void
.end method

.method private final getParagraphWidthExceedsNode()Z
    .locals 9

    .line 54
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/text/MultiParagraph;->getWidth()F

    move-result v0

    iget-object v1, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v1}, Landroidx/compose/ui/text/TextLayoutResult;->getSize-YbymL2g()J

    move-result-wide v1

    .local v1, "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    const/4 v3, 0x0

    .line 243
    .local v3, "$i$f$getWidth-impl":I
    move-wide v4, v1

    .local v4, "value$iv$iv":J
    const/4 v6, 0x0

    .line 244
    .local v6, "$i$f$unpackInt1":I
    const/16 v7, 0x20

    shr-long v7, v4, v7

    long-to-int v4, v7

    .line 243
    .end local v4    # "value$iv$iv":J
    .end local v6    # "$i$f$unpackInt1":I
    nop

    .line 54
    .end local v1    # "$v$c$androidx-compose-ui-unit-IntSize$-this$0$iv":J
    .end local v3    # "$i$f$getWidth-impl":I
    int-to-float v1, v4

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getDominantTextColor()Ljava/lang/Integer;
    .locals 1

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getLayout$sentry_android_replay_release()Landroidx/compose/ui/text/TextLayoutResult;
    .locals 1

    .line 40
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    return-object v0
.end method

.method public getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .line 72
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineBottom(I)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 42
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineLeft(I)F
    .locals 1
    .param p1, "line"    # I

    .line 57
    invoke-direct {p0}, Lio/sentry/android/replay/util/ComposeTextLayout;->getParagraphWidthExceedsNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x0

    return v0

    .line 60
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineLeft(I)F

    move-result v0

    return v0
.end method

.method public getLineRight(I)F
    .locals 1
    .param p1, "line"    # I

    .line 64
    invoke-direct {p0}, Lio/sentry/android/replay/util/ComposeTextLayout;->getParagraphWidthExceedsNode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0}, Landroidx/compose/ui/text/TextLayoutResult;->getMultiParagraph()Landroidx/compose/ui/text/MultiParagraph;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/MultiParagraph;->getLineWidth(I)F

    move-result v0

    return v0

    .line 67
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineRight(I)F

    move-result v0

    return v0
.end method

.method public getLineTop(I)I
    .locals 1
    .param p1, "line"    # I

    .line 70
    iget-object v0, p0, Lio/sentry/android/replay/util/ComposeTextLayout;->layout:Landroidx/compose/ui/text/TextLayoutResult;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/text/TextLayoutResult;->getLineTop(I)F

    move-result v0

    invoke-static {v0}, Lkotlin/math/MathKt;->roundToInt(F)I

    move-result v0

    return v0
.end method
