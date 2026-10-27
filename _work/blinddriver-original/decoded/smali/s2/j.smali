.class public final Ls2/j;
.super Landroid/text/style/CharacterStyle;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:F

.field public final c:F

.field public final d:F


# direct methods
.method public constructor <init>(IFFF)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    iput p1, p0, Ls2/j;->a:I

    iput p2, p0, Ls2/j;->b:F

    iput p3, p0, Ls2/j;->c:F

    iput p4, p0, Ls2/j;->d:F

    return-void
.end method


# virtual methods
.method public final updateDrawState(Landroid/text/TextPaint;)V
    .locals 3

    iget v0, p0, Ls2/j;->c:F

    iget v1, p0, Ls2/j;->a:I

    iget v2, p0, Ls2/j;->d:F

    iget p0, p0, Ls2/j;->b:F

    invoke-virtual {p1, v2, p0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    return-void
.end method
