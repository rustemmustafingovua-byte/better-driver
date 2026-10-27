.class public final Lx2/d;
.super Landroid/text/TextPaint;
.source "SourceFile"


# instance fields
.field public a:Lf6/v;

.field public b:La3/l;

.field public c:I

.field public d:Lm1/g0;

.field public e:Lm1/p;

.field public f:Lm1/m;

.field public g:Lr0/d0;

.field public h:Ll1/e;

.field public i:Lo1/e;


# virtual methods
.method public final a()Lf6/v;
    .locals 1

    iget-object v0, p0, Lx2/d;->a:Lf6/v;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lf6/v;

    invoke-direct {v0, p0}, Lf6/v;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lx2/d;->a:Lf6/v;

    return-object v0
.end method

.method public final b(I)V
    .locals 1

    iget v0, p0, Lx2/d;->c:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lx2/d;->a()Lf6/v;

    move-result-object v0

    invoke-virtual {v0, p1}, Lf6/v;->o(I)V

    iput p1, p0, Lx2/d;->c:I

    return-void
.end method

.method public final c(Lm1/m;JF)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iput-object v0, p0, Lx2/d;->g:Lr0/d0;

    iput-object v0, p0, Lx2/d;->f:Lm1/m;

    iput-object v0, p0, Lx2/d;->h:Ll1/e;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-void

    :cond_0
    instance-of v1, p1, Lm1/j0;

    if-eqz v1, :cond_1

    check-cast p1, Lm1/j0;

    iget-wide p1, p1, Lm1/j0;->a:J

    invoke-static {p4, p1, p2}, La/a;->r(FJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lx2/d;->d(J)V

    return-void

    :cond_1
    instance-of v1, p1, Lm1/n;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lx2/d;->f:Lm1/m;

    invoke-static {v1, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lx2/d;->h:Ll1/e;

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    iget-wide v3, v1, Ll1/e;->a:J

    invoke-static {v3, v4, p2, p3}, Ll1/e;->a(JJ)Z

    move-result v1

    :goto_0
    if-nez v1, :cond_5

    :cond_3
    const-wide v3, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v1, p2, v3

    if-eqz v1, :cond_4

    const/4 v2, 0x1

    :cond_4
    if-eqz v2, :cond_5

    iput-object p1, p0, Lx2/d;->f:Lm1/m;

    new-instance v1, Ll1/e;

    invoke-direct {v1, p2, p3}, Ll1/e;-><init>(J)V

    iput-object v1, p0, Lx2/d;->h:Ll1/e;

    new-instance v1, Lod/x4;

    invoke-direct {v1, p1, p2, p3}, Lod/x4;-><init>(Lm1/m;J)V

    invoke-static {v1}, Lr0/r;->r(Li9/a;)Lr0/d0;

    move-result-object p1

    iput-object p1, p0, Lx2/d;->g:Lr0/d0;

    :cond_5
    invoke-virtual {p0}, Lx2/d;->a()Lf6/v;

    move-result-object p1

    iget-object p2, p0, Lx2/d;->g:Lr0/d0;

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Lr0/d0;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Shader;

    goto :goto_1

    :cond_6
    move-object p2, v0

    :goto_1
    invoke-virtual {p1, p2}, Lf6/v;->s(Landroid/graphics/Shader;)V

    iput-object v0, p0, Lx2/d;->e:Lm1/p;

    invoke-static {p0, p4}, Lx2/i;->c(Landroid/text/TextPaint;F)V

    return-void

    :cond_7
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final d(J)V
    .locals 4

    iget-object v0, p0, Lx2/d;->e:Lm1/p;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    iget-wide v2, v0, Lm1/p;->a:J

    invoke-static {v2, v3, p1, p2}, Lm1/p;->c(JJ)Z

    move-result v0

    :goto_0
    if-nez v0, :cond_2

    const-wide/16 v2, 0x10

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    if-eqz v1, :cond_2

    new-instance v0, Lm1/p;

    invoke-direct {v0, p1, p2}, Lm1/p;-><init>(J)V

    iput-object v0, p0, Lx2/d;->e:Lm1/p;

    invoke-static {p1, p2}, Lm1/v;->y(J)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    iput-object p1, p0, Lx2/d;->g:Lr0/d0;

    iput-object p1, p0, Lx2/d;->f:Lm1/m;

    iput-object p1, p0, Lx2/d;->h:Ll1/e;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_2
    return-void
.end method

.method public final e(Lo1/e;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx2/d;->i:Lo1/e;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lx2/d;->i:Lo1/e;

    sget-object v0, Lo1/g;->a:Lo1/g;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void

    :cond_1
    instance-of v0, p1, Lo1/h;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lx2/d;->a()Lf6/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf6/v;->w(I)V

    invoke-virtual {p0}, Lx2/d;->a()Lf6/v;

    move-result-object v0

    check-cast p1, Lo1/h;

    iget v1, p1, Lo1/h;->a:F

    invoke-virtual {v0, v1}, Lf6/v;->v(F)V

    invoke-virtual {p0}, Lx2/d;->a()Lf6/v;

    move-result-object v0

    iget v1, p1, Lo1/h;->b:F

    iget-object v0, v0, Lf6/v;->b:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p0}, Lx2/d;->a()Lf6/v;

    move-result-object v0

    iget v1, p1, Lo1/h;->d:I

    invoke-virtual {v0, v1}, Lf6/v;->u(I)V

    invoke-virtual {p0}, Lx2/d;->a()Lf6/v;

    move-result-object v0

    iget p1, p1, Lo1/h;->c:I

    invoke-virtual {v0, p1}, Lf6/v;->t(I)V

    invoke-virtual {p0}, Lx2/d;->a()Lf6/v;

    move-result-object p0

    iget-object p0, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    return-void

    :cond_2
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_3
    :goto_0
    return-void
.end method

.method public final f(Lm1/g0;)V
    .locals 5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx2/d;->d:Lm1/g0;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lx2/d;->d:Lm1/g0;

    sget-object v0, Lm1/g0;->d:Lm1/g0;

    invoke-virtual {p1, v0}, Lm1/g0;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Paint;->clearShadowLayer()V

    return-void

    :cond_1
    iget-object p1, p0, Lx2/d;->d:Lm1/g0;

    iget v0, p1, Lm1/g0;->c:F

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    iget-wide v1, p1, Lm1/g0;->b:J

    const/16 p1, 0x20

    shr-long/2addr v1, p1

    long-to-int p1, v1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-object v1, p0, Lx2/d;->d:Lm1/g0;

    iget-wide v1, v1, Lm1/g0;->b:J

    const-wide v3, 0xffffffffL

    and-long/2addr v1, v3

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget-object v2, p0, Lx2/d;->d:Lm1/g0;

    iget-wide v2, v2, Lm1/g0;->a:J

    invoke-static {v2, v3}, Lm1/v;->y(J)I

    move-result v2

    invoke-virtual {p0, v0, p1, v1, v2}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_3
    :goto_0
    return-void
.end method

.method public final g(La3/l;)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lx2/d;->b:La3/l;

    invoke-static {v0, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iput-object p1, p0, Lx2/d;->b:La3/l;

    iget p1, p1, La3/l;->a:I

    or-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, p1, :cond_1

    move p1, v2

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    iget-object p1, p0, Lx2/d;->b:La3/l;

    iget p1, p1, La3/l;->a:I

    or-int/lit8 v0, p1, 0x2

    if-ne v0, p1, :cond_2

    move v1, v2

    :cond_2
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    :cond_3
    :goto_1
    return-void
.end method
