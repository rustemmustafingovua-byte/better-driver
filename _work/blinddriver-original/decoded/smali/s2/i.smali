.class public final Ls2/i;
.super Landroid/text/style/ReplacementSpan;
.source "SourceFile"


# instance fields
.field public l:Landroid/graphics/Paint$FontMetricsInt;

.field public m:I

.field public n:I

.field public o:Z


# virtual methods
.method public final a()Landroid/graphics/Paint$FontMetricsInt;
    .locals 0

    iget-object p0, p0, Ls2/i;->l:Landroid/graphics/Paint$FontMetricsInt;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "fontMetrics"

    invoke-static {p0}, Lj9/n;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final b()I
    .locals 1

    iget-boolean v0, p0, Ls2/i;->o:Z

    if-nez v0, :cond_0

    const-string v0, "PlaceholderSpan is not laid out yet."

    invoke-static {v0}, Lv2/a;->b(Ljava/lang/String;)V

    :cond_0
    iget p0, p0, Ls2/i;->n:I

    return p0
.end method

.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 0

    return-void
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    const/4 p2, 0x1

    iput-boolean p2, p0, Ls2/i;->o:Z

    invoke-virtual {p1}, Landroid/graphics/Paint;->getTextSize()F

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iput-object p1, p0, Ls2/i;->l:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {p0}, Ls2/i;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Ls2/i;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p2

    iget p2, p2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    if-le p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "Invalid fontMetrics: line height can not be negative."

    invoke-static {p1}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    float-to-double p2, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p2, p2

    float-to-int p2, p2

    iput p2, p0, Ls2/i;->m:I

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-float p1, p1

    float-to-int p1, p1

    iput p1, p0, Ls2/i;->n:I

    if-eqz p5, :cond_2

    invoke-virtual {p0}, Ls2/i;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Ls2/i;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-virtual {p0}, Ls2/i;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->leading:I

    iget p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-virtual {p0}, Ls2/i;->b()I

    move-result p2

    neg-int p2, p2

    if-le p1, p2, :cond_1

    invoke-virtual {p0}, Ls2/i;->b()I

    move-result p1

    neg-int p1, p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    :cond_1
    invoke-virtual {p0}, Ls2/i;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->top:I

    invoke-virtual {p0}, Ls2/i;->a()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget p2, p5, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p5, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    :cond_2
    iget-boolean p1, p0, Ls2/i;->o:Z

    if-nez p1, :cond_3

    const-string p1, "PlaceholderSpan is not laid out yet."

    invoke-static {p1}, Lv2/a;->b(Ljava/lang/String;)V

    :cond_3
    iget p0, p0, Ls2/i;->m:I

    return p0
.end method
