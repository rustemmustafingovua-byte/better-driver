.class public final Lio/sentry/android/replay/util/AndroidTextLayout;
.super Ljava/lang/Object;
.source "Views.kt"

# interfaces
.implements Lio/sentry/android/replay/util/TextLayout;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0010\u0007\n\u0002\u0008\u0003\u0008\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u0010\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u0010\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\r\u001a\u00020\u0006H\u0016J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\u0006H\u0016R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\t\u001a\u00020\u00068VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0012"
    }
    d2 = {
        "Lio/sentry/android/replay/util/AndroidTextLayout;",
        "Lio/sentry/android/replay/util/TextLayout;",
        "layout",
        "Landroid/text/Layout;",
        "(Landroid/text/Layout;)V",
        "dominantTextColor",
        "",
        "getDominantTextColor",
        "()Ljava/lang/Integer;",
        "lineCount",
        "getLineCount",
        "()I",
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
.field private final layout:Landroid/text/Layout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    sput v0, Lio/sentry/android/replay/util/AndroidTextLayout;->$stable:I

    return-void
.end method

.method public constructor <init>(Landroid/text/Layout;)V
    .locals 1
    .param p1, "layout"    # Landroid/text/Layout;

    const-string v0, "layout"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    return-void
.end method


# virtual methods
.method public getDominantTextColor()Ljava/lang/Integer;
    .locals 12

    .line 177
    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    instance-of v0, v0, Landroid/text/Spanned;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 180
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.text.Spanned"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/text/Spanned;

    iget-object v3, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const-class v4, Landroid/text/style/ForegroundColorSpan;

    const/4 v5, 0x0

    invoke-interface {v0, v5, v3, v4}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/text/style/ForegroundColorSpan;

    .line 179
    nop

    .line 183
    .local v0, "spans":[Landroid/text/style/ForegroundColorSpan;
    const/high16 v3, -0x80000000

    .line 184
    .local v3, "longestSpan":I
    const/4 v4, 0x0

    .line 185
    .local v4, "dominantColor":Ljava/lang/Integer;
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    array-length v6, v0

    :goto_0
    if-ge v5, v6, :cond_4

    aget-object v7, v0, v5

    .line 186
    .local v7, "span":Landroid/text/style/ForegroundColorSpan;
    iget-object v8, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v8}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-static {v8, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v8, Landroid/text/Spanned;

    invoke-interface {v8, v7}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 187
    .local v8, "spanStart":I
    iget-object v9, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v9}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v9, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Landroid/text/Spanned;

    invoke-interface {v9, v7}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    .line 188
    .local v9, "spanEnd":I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_2

    if-ne v9, v10, :cond_1

    goto :goto_1

    .line 192
    :cond_1
    sub-int v10, v9, v8

    .line 193
    .local v10, "spanLength":I
    if-le v10, v3, :cond_3

    .line 194
    move v3, v10

    .line 195
    invoke-virtual {v7}, Landroid/text/style/ForegroundColorSpan;->getForegroundColor()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    goto :goto_2

    .line 190
    .end local v10    # "spanLength":I
    :cond_2
    :goto_1
    nop

    .line 185
    .end local v7    # "span":Landroid/text/style/ForegroundColorSpan;
    .end local v8    # "spanStart":I
    .end local v9    # "spanEnd":I
    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 198
    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lio/sentry/android/replay/util/ViewsKt;->toOpaque(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    return-object v1
.end method

.method public getLineBottom(I)I
    .locals 1
    .param p1, "line"    # I

    .line 224
    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v0

    return v0
.end method

.method public getLineCount()I
    .locals 1

    .line 173
    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getLineCount()I

    move-result v0

    return v0
.end method

.method public getLineLeft(I)F
    .locals 2
    .param p1, "line"    # I

    .line 207
    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v0

    iget-object v1, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 208
    const/4 v0, 0x0

    goto :goto_0

    .line 210
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    .line 207
    :goto_0
    return v0
.end method

.method public getLineRight(I)F
    .locals 2
    .param p1, "line"    # I

    .line 215
    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v0

    iget-object v1, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 216
    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getEllipsizedWidth()I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v0

    .line 215
    :goto_0
    return v0
.end method

.method public getLineTop(I)I
    .locals 1
    .param p1, "line"    # I

    .line 222
    iget-object v0, p0, Lio/sentry/android/replay/util/AndroidTextLayout;->layout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v0

    return v0
.end method
