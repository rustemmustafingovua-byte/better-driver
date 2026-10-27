.class public final Lo1/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/d;


# instance fields
.field public final l:Lo1/a;

.field public final m:Lg5/m;

.field public n:Lf6/v;

.field public o:Lf6/v;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lo1/a;

    sget-object v1, Lb3/m;->l:Lb3/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sget-object v2, Lo1/c;->a:Lb3/d;

    iput-object v2, v0, Lo1/a;->a:Lb3/c;

    iput-object v1, v0, Lo1/a;->b:Lb3/m;

    sget-object v1, Lo1/f;->a:Lo1/f;

    iput-object v1, v0, Lo1/a;->c:Lm1/o;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lo1/a;->d:J

    iput-object v0, p0, Lo1/b;->l:Lo1/a;

    new-instance v0, Lg5/m;

    invoke-direct {v0, p0}, Lg5/m;-><init>(Lo1/b;)V

    iput-object v0, p0, Lo1/b;->m:Lg5/m;

    return-void
.end method

.method public static b(Lo1/b;JLo1/e;I)Lf6/v;
    .locals 2

    invoke-virtual {p0, p3}, Lo1/b;->f(Lo1/e;)Lf6/v;

    move-result-object p0

    iget-object p3, p0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p3, Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-static {v0}, Lm1/v;->c(I)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lm1/p;->c(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lf6/v;->p(J)V

    :cond_0
    iget-object p1, p0, Lf6/v;->c:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Shader;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lf6/v;->s(Landroid/graphics/Shader;)V

    :cond_1
    iget-object p1, p0, Lf6/v;->d:Ljava/lang/Object;

    check-cast p1, Lm1/j;

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0, p2}, Lf6/v;->q(Lm1/j;)V

    :cond_2
    iget p1, p0, Lf6/v;->a:I

    if-ne p1, p4, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p4}, Lf6/v;->o(I)V

    :goto_0
    invoke-virtual {p3}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_4

    return-object p0

    :cond_4
    invoke-virtual {p0, p2}, Lf6/v;->r(I)V

    return-object p0
.end method


# virtual methods
.method public final B(JJJFI)V
    .locals 5

    iget-object v0, p0, Lo1/b;->l:Lo1/a;

    iget-object v0, v0, Lo1/a;->c:Lm1/o;

    iget-object v1, p0, Lo1/b;->o:Lf6/v;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {}, Lm1/v;->g()Lf6/v;

    move-result-object v1

    invoke-virtual {v1, v2}, Lf6/v;->w(I)V

    iput-object v1, p0, Lo1/b;->o:Lf6/v;

    :cond_0
    iget-object p0, v1, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result v3

    invoke-static {v3}, Lm1/v;->c(I)J

    move-result-wide v3

    invoke-static {v3, v4, p1, p2}, Lm1/p;->c(JJ)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, p1, p2}, Lf6/v;->p(J)V

    :cond_1
    iget-object p1, v1, Lf6/v;->c:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Shader;

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {v1, p2}, Lf6/v;->s(Landroid/graphics/Shader;)V

    :cond_2
    iget-object p1, v1, Lf6/v;->d:Ljava/lang/Object;

    check-cast p1, Lm1/j;

    invoke-static {p1, p2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v1, p2}, Lf6/v;->q(Lm1/j;)V

    :cond_3
    iget p1, v1, Lf6/v;->a:I

    const/4 p2, 0x3

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {v1, p2}, Lf6/v;->o(I)V

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p1

    cmpg-float p1, p1, p7

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v1, p7}, Lf6/v;->v(F)V

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result p1

    const/high16 p2, 0x40800000    # 4.0f

    cmpg-float p1, p1, p2

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :goto_2
    invoke-virtual {v1}, Lf6/v;->j()I

    move-result p1

    if-ne p1, p8, :cond_7

    goto :goto_3

    :cond_7
    invoke-virtual {v1, p8}, Lf6/v;->t(I)V

    :goto_3
    invoke-virtual {v1}, Lf6/v;->k()I

    move-result p1

    if-nez p1, :cond_8

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lf6/v;->u(I)V

    :goto_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result p0

    if-ne p0, v2, :cond_9

    :goto_5
    move-wide p1, p3

    move-wide p3, p5

    move-object p0, v0

    move-object p5, v1

    goto :goto_6

    :cond_9
    invoke-virtual {v1, v2}, Lf6/v;->r(I)V

    goto :goto_5

    :goto_6
    invoke-interface/range {p0 .. p5}, Lm1/o;->b(JJLf6/v;)V

    return-void
.end method

.method public final S()F
    .locals 0

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iget-object p0, p0, Lo1/a;->a:Lb3/c;

    invoke-interface {p0}, Lb3/c;->S()F

    move-result p0

    return p0
.end method

.method public final Y()Lg5/m;
    .locals 0

    iget-object p0, p0, Lo1/b;->m:Lg5/m;

    return-object p0
.end method

.method public final Z(JFJLo1/e;)V
    .locals 2

    iget-object v0, p0, Lo1/b;->l:Lo1/a;

    iget-object v0, v0, Lo1/a;->c:Lm1/o;

    const/4 v1, 0x3

    invoke-static {p0, p1, p2, p6, v1}, Lo1/b;->b(Lo1/b;JLo1/e;I)Lf6/v;

    move-result-object p0

    invoke-interface {v0, p3, p4, p5, p0}, Lm1/o;->m(FJLf6/v;)V

    return-void
.end method

.method public final a()F
    .locals 0

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iget-object p0, p0, Lo1/a;->a:Lb3/c;

    invoke-interface {p0}, Lb3/c;->a()F

    move-result p0

    return p0
.end method

.method public final a0(Lm1/g;JLo1/e;)V
    .locals 2

    iget-object v0, p0, Lo1/b;->l:Lo1/a;

    iget-object v0, v0, Lo1/a;->c:Lm1/o;

    const/4 v1, 0x3

    invoke-static {p0, p2, p3, p4, v1}, Lo1/b;->b(Lo1/b;JLo1/e;I)Lf6/v;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lm1/o;->g(Lm1/g;Lf6/v;)V

    return-void
.end method

.method public final c(Lm1/m;Lo1/e;FLm1/j;II)Lf6/v;
    .locals 4

    invoke-virtual {p0, p2}, Lo1/b;->f(Lo1/e;)Lf6/v;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-interface {p0}, Lo1/d;->d()J

    move-result-wide v0

    invoke-virtual {p1, p3, v0, v1, p2}, Lm1/m;->a(FJLf6/v;)V

    goto :goto_0

    :cond_0
    iget-object p0, p2, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    iget-object p1, p2, Lf6/v;->c:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/Shader;

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lf6/v;->s(Landroid/graphics/Shader;)V

    :cond_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    invoke-static {p1}, Lm1/v;->c(I)J

    move-result-wide v0

    sget-wide v2, Lm1/p;->b:J

    invoke-static {v0, v1, v2, v3}, Lm1/p;->c(JJ)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p2, v2, v3}, Lf6/v;->p(J)V

    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    int-to-float p0, p0

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    cmpg-float p0, p0, p3

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p3}, Lf6/v;->n(F)V

    :goto_0
    iget-object p0, p2, Lf6/v;->d:Ljava/lang/Object;

    check-cast p0, Lm1/j;

    invoke-static {p0, p4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    invoke-virtual {p2, p4}, Lf6/v;->q(Lm1/j;)V

    :cond_4
    iget p0, p2, Lf6/v;->a:I

    if-ne p0, p5, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p2, p5}, Lf6/v;->o(I)V

    :goto_1
    iget-object p0, p2, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result p0

    if-ne p0, p6, :cond_6

    return-object p2

    :cond_6
    invoke-virtual {p2, p6}, Lf6/v;->r(I)V

    return-object p2
.end method

.method public final e(Lm1/e;Lm1/j;)V
    .locals 8

    iget-object v0, p0, Lo1/b;->l:Lo1/a;

    iget-object v0, v0, Lo1/a;->c:Lm1/o;

    const/4 v2, 0x0

    const/4 v7, 0x1

    sget-object v3, Lo1/g;->a:Lo1/g;

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v6, 0x3

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v7}, Lo1/b;->c(Lm1/m;Lo1/e;FLm1/j;II)Lf6/v;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lm1/o;->k(Lm1/e;Lf6/v;)V

    return-void
.end method

.method public final e0(JJJI)V
    .locals 7

    iget-object v0, p0, Lo1/b;->l:Lo1/a;

    iget-object v0, v0, Lo1/a;->c:Lm1/o;

    const/16 v1, 0x20

    shr-long v2, p3, v1

    long-to-int v2, v2

    move-wide v3, p1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    const-wide v5, 0xffffffffL

    and-long p2, p3, v5

    long-to-int p2, p2

    move p3, p2

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    shr-long v1, p5, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    add-float/2addr v1, p4

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    and-long p4, p5, v5

    long-to-int p4, p4

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    add-float/2addr p4, p3

    sget-object p3, Lo1/g;->a:Lo1/g;

    invoke-static {p0, v3, v4, p3, p7}, Lo1/b;->b(Lo1/b;JLo1/e;I)Lf6/v;

    move-result-object p5

    move-object p0, v0

    move p3, v1

    invoke-interface/range {p0 .. p5}, Lm1/o;->j(FFFFLf6/v;)V

    return-void
.end method

.method public final f(Lo1/e;)Lf6/v;
    .locals 3

    sget-object v0, Lo1/g;->a:Lo1/g;

    invoke-static {p1, v0}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lo1/b;->n:Lf6/v;

    if-nez p1, :cond_0

    invoke-static {}, Lm1/v;->g()Lf6/v;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lf6/v;->w(I)V

    iput-object p1, p0, Lo1/b;->n:Lf6/v;

    :cond_0
    return-object p1

    :cond_1
    instance-of v0, p1, Lo1/h;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lo1/b;->o:Lf6/v;

    if-nez v0, :cond_2

    invoke-static {}, Lm1/v;->g()Lf6/v;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf6/v;->w(I)V

    iput-object v0, p0, Lo1/b;->o:Lf6/v;

    :cond_2
    iget-object p0, v0, Lf6/v;->b:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v1

    check-cast p1, Lo1/h;

    iget v2, p1, Lo1/h;->a:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2}, Lf6/v;->v(F)V

    :goto_0
    invoke-virtual {v0}, Lf6/v;->j()I

    move-result v1

    iget v2, p1, Lo1/h;->c:I

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v2}, Lf6/v;->t(I)V

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v1

    iget v2, p1, Lo1/h;->b:F

    cmpg-float v1, v1, v2

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :goto_2
    invoke-virtual {v0}, Lf6/v;->k()I

    move-result p0

    iget p1, p1, Lo1/h;->d:I

    if-ne p0, p1, :cond_6

    return-object v0

    :cond_6
    invoke-virtual {v0, p1}, Lf6/v;->u(I)V

    return-object v0

    :cond_7
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method

.method public final g(JJJJLo1/e;I)V
    .locals 11

    iget-object v0, p0, Lo1/b;->l:Lo1/a;

    iget-object v0, v0, Lo1/a;->c:Lm1/o;

    const/16 v1, 0x20

    shr-long v2, p3, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    const-wide v4, 0xffffffffL

    and-long v6, p3, v4

    long-to-int v6, v6

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    shr-long v8, p5, v1

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    add-float/2addr v8, v2

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    and-long v9, p5, v4

    long-to-int v6, v9

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    add-float/2addr v6, v2

    shr-long v1, p7, v1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    and-long v4, p7, v4

    long-to-int v2, v4

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    move-object/from16 v4, p9

    move/from16 v5, p10

    invoke-static {p0, p1, p2, v4, v5}, Lo1/b;->b(Lo1/b;JLo1/e;I)Lf6/v;

    move-result-object p0

    move-object/from16 p7, p0

    move-object p0, v0

    move/from16 p5, v1

    move/from16 p6, v2

    move p1, v3

    move p4, v6

    move p2, v7

    move p3, v8

    invoke-interface/range {p0 .. p7}, Lm1/o;->a(FFFFFFLf6/v;)V

    return-void
.end method

.method public final getLayoutDirection()Lb3/m;
    .locals 0

    iget-object p0, p0, Lo1/b;->l:Lo1/a;

    iget-object p0, p0, Lo1/a;->b:Lb3/m;

    return-object p0
.end method

.method public final m0(Lm1/g;Lm1/m;FLo1/e;I)V
    .locals 8

    iget-object v0, p0, Lo1/b;->l:Lo1/a;

    iget-object v0, v0, Lo1/a;->c:Lm1/o;

    const/4 v7, 0x1

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p2

    move v4, p3

    move-object v3, p4

    move v6, p5

    invoke-virtual/range {v1 .. v7}, Lo1/b;->c(Lm1/m;Lo1/e;FLm1/j;II)Lf6/v;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lm1/o;->g(Lm1/g;Lf6/v;)V

    return-void
.end method

.method public final r(Lm1/e;JJJFLm1/j;I)V
    .locals 10

    iget-object v0, p0, Lo1/b;->l:Lo1/a;

    iget-object v1, v0, Lo1/a;->c:Lm1/o;

    const/4 v3, 0x0

    sget-object v4, Lo1/g;->a:Lo1/g;

    const/4 v7, 0x3

    move-object v2, p0

    move/from16 v5, p8

    move-object/from16 v6, p9

    move/from16 v8, p10

    invoke-virtual/range {v2 .. v8}, Lo1/b;->c(Lm1/m;Lo1/e;FLm1/j;II)Lf6/v;

    move-result-object v9

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-wide/from16 v7, p6

    invoke-interface/range {v1 .. v9}, Lm1/o;->n(Lm1/e;JJJLf6/v;)V

    return-void
.end method

.method public final s(JFFJJLo1/h;)V
    .locals 10

    iget-object v0, p0, Lo1/b;->l:Lo1/a;

    iget-object v1, v0, Lo1/a;->c:Lm1/o;

    const/16 v0, 0x20

    shr-long v2, p5, v0

    long-to-int v2, v2

    move v3, v2

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const-wide v4, 0xffffffffL

    and-long v6, p5, v4

    long-to-int v6, v6

    move v7, v3

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    shr-long v8, p7, v0

    long-to-int v0, v8

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    add-float/2addr v0, v7

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    and-long v4, p7, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    add-float v5, v4, v6

    const/4 v4, 0x3

    move-object/from16 v6, p9

    invoke-static {p0, p1, p2, v6, v4}, Lo1/b;->b(Lo1/b;JLo1/e;I)Lf6/v;

    move-result-object v8

    move v6, p3

    move v7, p4

    move v4, v0

    invoke-interface/range {v1 .. v8}, Lm1/o;->f(FFFFFFLf6/v;)V

    return-void
.end method
