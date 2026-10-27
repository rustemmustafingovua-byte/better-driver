.class public abstract Lk0/o;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lb0/r1;JLf2/p2;)I
    .locals 2

    invoke-virtual {p0}, Lb0/r1;->d()Lb0/z2;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, v0, Lb0/z2;->a:Lp2/j0;

    iget-object v0, v0, Lp2/j0;->b:Lp2/n;

    invoke-virtual {p0}, Lb0/r1;->c()Lc2/u;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lc2/u;->O(J)J

    move-result-wide p0

    invoke-static {v0, p0, p1, p3}, Lk0/o;->h(Lp2/n;JLf2/p2;)I

    move-result p2

    if-ne p2, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lp2/n;->f(I)F

    move-result p3

    invoke-virtual {v0, p2}, Lp2/n;->b(I)F

    move-result p2

    add-float/2addr p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    const/4 p3, 0x1

    invoke-static {p0, p1, p2, p3}, Ll1/b;->a(JFI)J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lp2/n;->g(J)I

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static final b(Lb0/r1;Ll1/c;Ll1/c;I)J
    .locals 2

    invoke-static {p0, p1, p3}, Lk0/o;->i(Lb0/r1;Ll1/c;I)J

    move-result-wide v0

    invoke-static {v0, v1}, Lp2/l0;->c(J)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-wide p0, Lp2/l0;->b:J

    return-wide p0

    :cond_0
    invoke-static {p0, p2, p3}, Lk0/o;->i(Lb0/r1;Ll1/c;I)J

    move-result-wide p0

    invoke-static {p0, p1}, Lp2/l0;->c(J)Z

    move-result p2

    if-eqz p2, :cond_1

    sget-wide p0, Lp2/l0;->b:J

    return-wide p0

    :cond_1
    const/16 p2, 0x20

    shr-long p2, v0, p2

    long-to-int p2, p2

    invoke-static {p2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    const-wide v0, 0xffffffffL

    and-long/2addr p0, v0

    long-to-int p0, p0

    invoke-static {p0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p2, p0}, Lp2/d0;->b(II)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final c(Lp2/j0;I)Z
    .locals 5

    iget-object v0, p0, Lp2/j0;->b:Lp2/n;

    invoke-virtual {v0, p1}, Lp2/n;->d(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lp2/j0;->g(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq p1, v2, :cond_1

    invoke-virtual {v0, v1, v4}, Lp2/n;->c(IZ)I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lp2/j0;->a(I)La3/j;

    move-result-object v0

    sub-int/2addr p1, v3

    invoke-virtual {p0, p1}, Lp2/j0;->a(I)La3/j;

    move-result-object p0

    if-eq v0, p0, :cond_2

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lp2/j0;->h(I)La3/j;

    move-result-object v0

    invoke-virtual {p0, p1}, Lp2/j0;->a(I)La3/j;

    move-result-object p0

    if-eq v0, p0, :cond_2

    :goto_1
    return v3

    :cond_2
    return v4
.end method

.method public static final d(Lu2/x;)Landroid/view/inputmethod/ExtractedText;
    .locals 4

    new-instance v0, Landroid/view/inputmethod/ExtractedText;

    invoke-direct {v0}, Landroid/view/inputmethod/ExtractedText;-><init>()V

    iget-object v1, p0, Lu2/x;->a:Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    iput-object v1, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v2, 0x0

    iput v2, v0, Landroid/view/inputmethod/ExtractedText;->startOffset:I

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialEndOffset:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->partialStartOffset:I

    iget-wide v1, p0, Lu2/x;->b:J

    invoke-static {v1, v2}, Lp2/l0;->f(J)I

    move-result v3

    iput v3, v0, Landroid/view/inputmethod/ExtractedText;->selectionStart:I

    invoke-static {v1, v2}, Lp2/l0;->e(J)I

    move-result v1

    iput v1, v0, Landroid/view/inputmethod/ExtractedText;->selectionEnd:I

    iget-object p0, p0, Lu2/x;->a:Lp2/g;

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    const/16 v1, 0xa

    invoke-static {p0, v1}, Lr9/k;->X(Ljava/lang/CharSequence;C)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    iput p0, v0, Landroid/view/inputmethod/ExtractedText;->flags:I

    return-object v0
.end method

.method public static final e(Landroid/graphics/PointF;)J
    .locals 6

    iget v0, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v2, p0

    const/16 p0, 0x20

    shl-long/2addr v0, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public static final f(Ll1/c;FF)Z
    .locals 2

    iget v0, p0, Ll1/c;->a:F

    iget v1, p0, Ll1/c;->c:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_0

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_0

    iget p1, p0, Ll1/c;->b:F

    iget p0, p0, Ll1/c;->d:F

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    cmpg-float p0, p1, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static g(Landroid/view/inputmethod/HandwritingGesture;Lb0/a;)I
    .locals 2

    invoke-static {p0}, Lk0/i;->q(Landroid/view/inputmethod/HandwritingGesture;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    new-instance v0, Lu2/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lu2/a;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x5

    return p0
.end method

.method public static final h(Lp2/n;JLf2/p2;)I
    .locals 4

    if-eqz p3, :cond_0

    invoke-interface {p3}, Lf2/p2;->g()F

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p1

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {p0, v1}, Lp2/n;->e(F)I

    move-result v1

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    invoke-virtual {p0, v1}, Lp2/n;->f(I)F

    move-result v3

    sub-float/2addr v3, p3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_3

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    invoke-virtual {p0, v1}, Lp2/n;->b(I)F

    move-result v2

    add-float/2addr v2, p3

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x20

    shr-long/2addr p1, v0

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    neg-float v0, p3

    cmpg-float p2, p2, v0

    if-ltz p2, :cond_3

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget p0, p0, Lp2/n;->d:F

    add-float/2addr p0, p3

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    :goto_1
    const/4 p0, -0x1

    return p0
.end method

.method public static final i(Lb0/r1;Ll1/c;I)J
    .locals 3

    invoke-virtual {p0}, Lb0/r1;->d()Lb0/z2;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lb0/z2;->a:Lp2/j0;

    iget-object v0, v0, Lp2/j0;->b:Lp2/n;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lb0/r1;->c()Lc2/u;

    move-result-object p0

    if-eqz v0, :cond_2

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x0

    invoke-interface {p0, v1, v2}, Lc2/u;->O(J)J

    move-result-wide v1

    invoke-virtual {p1, v1, v2}, Ll1/c;->j(J)Ll1/c;

    move-result-object p0

    sget-object p1, Lp2/h0;->b:Lc2/c0;

    invoke-virtual {v0, p0, p2, p1}, Lp2/n;->h(Ll1/c;ILc2/c0;)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_1
    sget-wide p0, Lp2/l0;->b:J

    return-wide p0
.end method

.method public static final j(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result p0

    const/16 v0, 0x17

    if-eq p0, v0, :cond_1

    const/16 v0, 0x14

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x1d

    if-eq p0, v0, :cond_1

    const/16 v0, 0x18

    if-eq p0, v0, :cond_1

    const/16 v0, 0x15

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final k(I)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xa0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static final l(I)Z
    .locals 2

    invoke-static {p0}, Lk0/o;->k(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->getType(I)I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v0, 0xa

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final m(Lf1/r;Lk0/b;Lb0/r1;Lm0/v1;)Lf1/r;
    .locals 1

    new-instance v0, Lk0/m;

    invoke-direct {v0, p1, p2, p3}, Lk0/m;-><init>(Lk0/b;Lb0/r1;Lm0/v1;)V

    invoke-interface {p0, v0}, Lf1/r;->d(Lf1/r;)Lf1/r;

    move-result-object p0

    return-object p0
.end method

.method public static n(JLp2/g;ZLb0/a;)V
    .locals 6

    const-wide v0, 0xffffffffL

    if-eqz p3, :cond_7

    sget p3, Lp2/l0;->c:I

    const/16 p3, 0x20

    shr-long v2, p0, p3

    long-to-int p3, v2

    and-long v2, p0, v0

    long-to-int v2, v2

    const/16 v3, 0xa

    if-lez p3, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    iget-object v5, p2, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-static {p2, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    :cond_1
    invoke-static {v4}, Lk0/o;->l(I)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Lk0/o;->k(I)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Lk0/o;->j(I)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    invoke-static {v4}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    sub-int/2addr p3, p0

    if-eqz p3, :cond_3

    invoke-static {p2, p3}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v4

    invoke-static {v4}, Lk0/o;->l(I)Z

    move-result p0

    if-nez p0, :cond_2

    :cond_3
    invoke-static {p3, v2}, Lp2/d0;->b(II)J

    move-result-wide p0

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lk0/o;->l(I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static {v4}, Lk0/o;->k(I)Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {v4}, Lk0/o;->j(I)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_5
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result p0

    add-int/2addr v2, p0

    iget-object p0, p2, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-eq v2, p0, :cond_6

    invoke-static {p2, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v3

    invoke-static {v3}, Lk0/o;->l(I)Z

    move-result p0

    if-nez p0, :cond_5

    :cond_6
    invoke-static {p3, v2}, Lp2/d0;->b(II)J

    move-result-wide p0

    :cond_7
    :goto_1
    new-instance p2, Lu2/w;

    and-long/2addr v0, p0

    long-to-int p3, v0

    invoke-direct {p2, p3, p3}, Lu2/w;-><init>(II)V

    invoke-static {p0, p1}, Lp2/l0;->d(J)I

    move-result p0

    new-instance p1, Lu2/e;

    const/4 p3, 0x0

    invoke-direct {p1, p0, p3}, Lu2/e;-><init>(II)V

    const/4 p0, 0x2

    new-array p0, p0, [Lu2/g;

    aput-object p2, p0, p3

    const/4 p2, 0x1

    aput-object p1, p0, p2

    new-instance p1, Lk0/k;

    invoke-direct {p1, p0}, Lk0/k;-><init>([Lu2/g;)V

    invoke-virtual {p4, p1}, Lb0/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
