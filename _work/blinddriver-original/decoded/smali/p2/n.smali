.class public final Lp2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroidx/lifecycle/a1;

.field public final b:I

.field public final c:Z

.field public final d:F

.field public final e:F

.field public final f:I

.field public final g:Ljava/util/ArrayList;

.field public final h:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroidx/lifecycle/a1;JII)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lp2/n;->a:Landroidx/lifecycle/a1;

    move/from16 v2, p4

    iput v2, v0, Lp2/n;->b:I

    invoke-static/range {p2 .. p3}, Lb3/a;->j(J)I

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p2 .. p3}, Lb3/a;->i(J)I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead."

    invoke-static {v2}, Lv2/a;->a(Ljava/lang/String;)V

    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x0

    move v12, v5

    const/4 v5, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v5, v3, :cond_6

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp2/q;

    iget-object v14, v6, Lp2/q;->a:Lx2/c;

    invoke-static/range {p2 .. p3}, Lb3/a;->h(J)I

    move-result v7

    invoke-static/range {p2 .. p3}, Lb3/a;->c(J)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-static/range {p2 .. p3}, Lb3/a;->g(J)I

    move-result v8

    move/from16 p4, v5

    float-to-double v4, v12

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-int v4, v4

    sub-int/2addr v8, v4

    if-gez v8, :cond_2

    const/4 v8, 0x0

    goto :goto_2

    :cond_1
    move/from16 p4, v5

    invoke-static/range {p2 .. p3}, Lb3/a;->g(J)I

    move-result v8

    :cond_2
    :goto_2
    const/4 v4, 0x5

    invoke-static {v7, v8, v4}, Lb3/b;->b(III)J

    move-result-wide v17

    iget v4, v0, Lp2/n;->b:I

    sub-int v15, v4, v10

    new-instance v13, Lp2/a;

    move/from16 v16, p5

    invoke-direct/range {v13 .. v18}, Lp2/a;-><init>(Lx2/c;IIJ)V

    invoke-virtual {v13}, Lp2/a;->b()F

    move-result v4

    add-float/2addr v4, v12

    iget-object v5, v13, Lp2/a;->d:Lq2/j;

    iget v7, v5, Lq2/j;->g:I

    add-int v11, v10, v7

    new-instance v7, Lp2/p;

    iget v8, v6, Lp2/q;->b:I

    iget v9, v6, Lp2/q;->c:I

    move-object v6, v7

    move-object v7, v13

    move v13, v4

    invoke-direct/range {v6 .. v13}, Lp2/p;-><init>(Lp2/a;IIIIFF)V

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v4, v5, Lq2/j;->d:Z

    if-nez v4, :cond_5

    iget v4, v0, Lp2/n;->b:I

    if-ne v11, v4, :cond_3

    iget-object v4, v0, Lp2/n;->a:Landroidx/lifecycle/a1;

    iget-object v4, v4, Landroidx/lifecycle/a1;->p:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-static {v4}, Lg5/f;->A(Ljava/util/List;)I

    move-result v4

    move/from16 v5, p4

    if-eq v5, v4, :cond_4

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :cond_4
    add-int/lit8 v5, v5, 0x1

    move v10, v11

    move v12, v13

    goto :goto_1

    :cond_5
    :goto_3
    const/4 v1, 0x1

    move v10, v11

    move v12, v13

    goto :goto_4

    :cond_6
    const/4 v1, 0x0

    :goto_4
    iput v12, v0, Lp2/n;->e:F

    iput v10, v0, Lp2/n;->f:I

    iput-boolean v1, v0, Lp2/n;->c:Z

    iput-object v2, v0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-static/range {p2 .. p3}, Lb3/a;->h(J)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lp2/n;->d:F

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x0

    if-ge v4, v3, :cond_9

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp2/p;

    iget-object v7, v6, Lp2/p;->a:Lp2/a;

    iget-object v7, v7, Lp2/a;->f:Ljava/lang/Object;

    new-instance v8, Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v8, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7}, Ljava/util/Collection;->size()I

    move-result v9

    const/4 v10, 0x0

    :goto_6
    if-ge v10, v9, :cond_8

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ll1/c;

    if-eqz v11, :cond_7

    invoke-virtual {v6, v11}, Lp2/p;->a(Ll1/c;)Ll1/c;

    move-result-object v11

    goto :goto_7

    :cond_7
    move-object v11, v5

    :goto_7
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    invoke-static {v8, v1}, Lu8/m;->V(Ljava/lang/Iterable;Ljava/util/AbstractCollection;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v0, Lp2/n;->a:Landroidx/lifecycle/a1;

    iget-object v3, v3, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_b

    iget-object v2, v0, Lp2/n;->a:Landroidx/lifecycle/a1;

    iget-object v2, v2, Landroidx/lifecycle/a1;->m:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v2, v3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_8
    if-ge v4, v2, :cond_a

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_a
    invoke-static {v1, v3}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v1

    :cond_b
    iput-object v1, v0, Lp2/n;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public static i(Lp2/n;Lm1/o;JLm1/g0;La3/l;Lo1/e;)V
    .locals 10

    invoke-interface {p1}, Lm1/o;->h()V

    iget-object p0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/p;

    iget-object v3, v2, Lp2/p;->a:Lp2/a;

    move-object v4, p1

    move-wide v5, p2

    move-object v7, p4

    move-object v8, p5

    move-object/from16 v9, p6

    invoke-virtual/range {v3 .. v9}, Lp2/a;->f(Lm1/o;JLm1/g0;La3/l;Lo1/e;)V

    iget-object v2, v2, Lp2/p;->a:Lp2/a;

    invoke-virtual {v2}, Lp2/a;->b()F

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p1, v3, v2}, Lm1/o;->p(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lm1/o;->q()V

    return-void
.end method

.method public static j(Lp2/n;Lm1/o;Lm1/m;FLm1/g0;La3/l;Lo1/e;)V
    .locals 8

    invoke-interface {p1}, Lm1/o;->h()V

    iget-object v0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-gt v1, v2, :cond_0

    invoke-static/range {p0 .. p6}, Lx2/i;->b(Lp2/n;Lm1/o;Lm1/m;FLm1/g0;La3/l;Lo1/e;)V

    goto/16 :goto_2

    :cond_0
    instance-of v1, p2, Lm1/j0;

    if-eqz v1, :cond_1

    invoke-static/range {p0 .. p6}, Lx2/i;->b(Lp2/n;Lm1/o;Lm1/m;FLm1/g0;La3/l;Lo1/e;)V

    goto :goto_2

    :cond_1
    instance-of p0, p2, Lm1/n;

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v1

    move v4, v2

    move v5, v4

    :goto_0
    if-ge v3, p0, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp2/p;

    iget-object v7, v6, Lp2/p;->a:Lp2/a;

    invoke-virtual {v7}, Lp2/a;->b()F

    move-result v7

    add-float/2addr v5, v7

    iget-object v6, v6, Lp2/p;->a:Lp2/a;

    invoke-virtual {v6}, Lp2/a;->d()F

    move-result v6

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    check-cast p2, Lm1/n;

    invoke-static {v4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    iget-object v3, p2, Lm1/n;->c:Landroid/graphics/Shader;

    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_1
    if-ge v1, v5, :cond_3

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/p;

    iget-object p0, p0, Lp2/p;->a:Lp2/a;

    new-instance p2, Lm1/n;

    invoke-direct {p2, v3}, Lm1/n;-><init>(Landroid/graphics/Shader;)V

    invoke-virtual/range {p0 .. p6}, Lp2/a;->g(Lm1/o;Lm1/m;FLm1/g0;La3/l;Lo1/e;)V

    invoke-virtual {p0}, Lp2/a;->b()F

    move-result p2

    invoke-interface {p1, v2, p2}, Lm1/o;->p(FF)V

    invoke-virtual {p0}, Lp2/a;->b()F

    move-result p0

    neg-float p0, p0

    invoke-virtual {v4, v2, p0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    invoke-interface {p1}, Lm1/o;->q()V

    return-void

    :cond_4
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(J[F)V
    .locals 7

    invoke-static {p1, p2}, Lp2/l0;->f(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lp2/n;->k(I)V

    invoke-static {p1, p2}, Lp2/l0;->e(J)I

    move-result v0

    invoke-virtual {p0, v0}, Lp2/n;->l(I)V

    new-instance v5, La6/k;

    invoke-direct {v5}, La6/k;-><init>()V

    const/4 v0, 0x0

    iput v0, v5, La6/k;->m:I

    new-instance v6, Lj9/w;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lp/u;

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v1 .. v6}, Lp/u;-><init>(J[FLa6/k;Lj9/w;)V

    iget-object p0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-static {p0, v2, v3, v1}, Lp2/d0;->g(Ljava/util/ArrayList;JLi9/c;)V

    return-void
.end method

.method public final b(I)F
    .locals 2

    invoke-virtual {p0, p1}, Lp2/n;->m(I)V

    iget-object p0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lp2/d0;->e(ILjava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/p;

    iget-object v0, p0, Lp2/p;->a:Lp2/a;

    iget v1, p0, Lp2/p;->d:I

    sub-int/2addr p1, v1

    iget-object v0, v0, Lp2/a;->d:Lq2/j;

    invoke-virtual {v0, p1}, Lq2/j;->e(I)F

    move-result p1

    iget p0, p0, Lp2/p;->f:F

    add-float/2addr p1, p0

    return p1
.end method

.method public final c(IZ)I
    .locals 3

    invoke-virtual {p0, p1}, Lp2/n;->m(I)V

    iget-object p0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lp2/d0;->e(ILjava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/p;

    iget-object v0, p0, Lp2/p;->a:Lp2/a;

    iget v1, p0, Lp2/p;->d:I

    sub-int/2addr p1, v1

    iget-object v0, v0, Lp2/a;->d:Lq2/j;

    if-eqz p2, :cond_1

    iget-object p2, v0, Lq2/j;->f:Landroid/text/Layout;

    sget-object v1, Lq2/k;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, p1}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v0, Lq2/j;->b:Landroid/text/TextUtils$TruncateAt;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    if-ne v1, v2, :cond_0

    invoke-virtual {p2, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    invoke-virtual {p2, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result p1

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lq2/j;->c()Landroidx/lifecycle/a1;

    move-result-object p2

    iget-object v0, p2, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v1

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result p1

    invoke-virtual {p2, v1, p1}, Landroidx/lifecycle/a1;->z(II)I

    move-result p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lq2/j;->f(I)I

    move-result p1

    :goto_0
    iget p0, p0, Lp2/p;->b:I

    add-int/2addr p1, p0

    return p1
.end method

.method public final d(I)I
    .locals 1

    iget-object v0, p0, Lp2/n;->a:Landroidx/lifecycle/a1;

    iget-object v0, v0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v0, Lp2/g;

    iget-object v0, v0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object p0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    if-lt p1, v0, :cond_0

    invoke-static {p0}, Lg5/f;->A(Ljava/util/List;)I

    move-result v0

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p1, p0}, Lp2/d0;->d(ILjava/util/List;)I

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/p;

    iget-object v0, p0, Lp2/p;->a:Lp2/a;

    invoke-virtual {p0, p1}, Lp2/p;->d(I)I

    move-result p1

    iget-object v0, v0, Lp2/a;->d:Lq2/j;

    iget-object v0, v0, Lq2/j;->f:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result p1

    iget p0, p0, Lp2/p;->d:I

    add-int/2addr p1, p0

    return p1
.end method

.method public final e(F)I
    .locals 2

    iget-object p0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-static {p0, p1}, Lp2/d0;->f(Ljava/util/ArrayList;F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/p;

    iget v0, p0, Lp2/p;->c:I

    iget v1, p0, Lp2/p;->b:I

    sub-int/2addr v0, v1

    iget v1, p0, Lp2/p;->d:I

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lp2/p;->a:Lp2/a;

    iget p0, p0, Lp2/p;->f:F

    sub-float/2addr p1, p0

    iget-object p0, v0, Lp2/a;->d:Lq2/j;

    float-to-int p1, p1

    iget-object v0, p0, Lq2/j;->f:Landroid/text/Layout;

    iget p0, p0, Lq2/j;->h:I

    sub-int/2addr p1, p0

    invoke-virtual {v0, p1}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final f(I)F
    .locals 2

    invoke-virtual {p0, p1}, Lp2/n;->m(I)V

    iget-object p0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-static {p1, p0}, Lp2/d0;->e(ILjava/util/List;)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/p;

    iget-object v0, p0, Lp2/p;->a:Lp2/a;

    iget v1, p0, Lp2/p;->d:I

    sub-int/2addr p1, v1

    iget-object v0, v0, Lp2/a;->d:Lq2/j;

    invoke-virtual {v0, p1}, Lq2/j;->g(I)F

    move-result p1

    iget p0, p0, Lp2/p;->f:F

    add-float/2addr p1, p0

    return p1
.end method

.method public final g(J)I
    .locals 8

    const-wide v0, 0xffffffffL

    and-long v2, p1, v0

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget-object p0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-static {p0, v3}, Lp2/d0;->f(Ljava/util/ArrayList;F)I

    move-result v3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/p;

    iget v3, p0, Lp2/p;->c:I

    iget v4, p0, Lp2/p;->b:I

    sub-int/2addr v3, v4

    if-nez v3, :cond_0

    return v4

    :cond_0
    iget-object v3, p0, Lp2/p;->a:Lp2/a;

    const/16 v5, 0x20

    shr-long/2addr p1, v5

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    iget p0, p0, Lp2/p;->f:F

    sub-float/2addr p2, p0

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long p0, p0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v6, p2

    shl-long/2addr p0, v5

    and-long/2addr v6, v0

    or-long/2addr p0, v6

    iget-object p2, v3, Lp2/a;->d:Lq2/j;

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p2, Lq2/j;->f:Landroid/text/Layout;

    iget v2, p2, Lq2/j;->h:I

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result v0

    shr-long/2addr p0, v5

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    iget-object p1, p2, Lq2/j;->f:Landroid/text/Layout;

    const/4 v1, -0x1

    int-to-float v1, v1

    invoke-virtual {p2, v0}, Lq2/j;->b(I)F

    move-result p2

    mul-float/2addr p2, v1

    add-float/2addr p2, p0

    invoke-virtual {p1, v0, p2}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p0

    add-int/2addr p0, v4

    return p0
.end method

.method public final h(Ll1/c;ILc2/c0;)J
    .locals 10

    iget v0, p1, Ll1/c;->b:F

    iget-object p0, p0, Lp2/n;->h:Ljava/util/ArrayList;

    invoke-static {p0, v0}, Lp2/d0;->f(Ljava/util/ArrayList;F)I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/p;

    iget v1, v1, Lp2/p;->g:F

    iget v2, p1, Ll1/c;->d:F

    cmpl-float v1, v1, v2

    const/4 v3, 0x1

    if-gez v1, :cond_5

    invoke-static {p0}, Lg5/f;->A(Ljava/util/List;)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_2

    :cond_0
    invoke-static {p0, v2}, Lp2/d0;->f(Ljava/util/ArrayList;F)I

    move-result v1

    sget-wide v4, Lp2/l0;->b:J

    :goto_0
    sget-wide v6, Lp2/l0;->b:J

    invoke-static {v4, v5, v6, v7}, Lp2/l0;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_1

    if-gt v0, v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/p;

    iget-object v4, v2, Lp2/p;->a:Lp2/a;

    invoke-virtual {v2, p1}, Lp2/p;->c(Ll1/c;)Ll1/c;

    move-result-object v5

    invoke-virtual {v4, v5, p2, p3}, Lp2/a;->c(Ll1/c;ILc2/c0;)J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lp2/p;->b(ZJ)J

    move-result-wide v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4, v5, v6, v7}, Lp2/l0;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_2

    return-wide v6

    :cond_2
    :goto_1
    sget-wide v8, Lp2/l0;->b:J

    invoke-static {v6, v7, v8, v9}, Lp2/l0;->b(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    if-gt v0, v1, :cond_3

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp2/p;

    iget-object v6, v2, Lp2/p;->a:Lp2/a;

    invoke-virtual {v2, p1}, Lp2/p;->c(Ll1/c;)Ll1/c;

    move-result-object v7

    invoke-virtual {v6, v7, p2, p3}, Lp2/a;->c(Ll1/c;ILc2/c0;)J

    move-result-wide v6

    invoke-virtual {v2, v3, v6, v7}, Lp2/p;->b(ZJ)J

    move-result-wide v6

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_3
    invoke-static {v6, v7, v8, v9}, Lp2/l0;->b(JJ)Z

    move-result p0

    if-eqz p0, :cond_4

    return-wide v4

    :cond_4
    const/16 p0, 0x20

    shr-long p0, v4, p0

    long-to-int p0, p0

    const-wide p1, 0xffffffffL

    and-long/2addr p1, v6

    long-to-int p1, p1

    invoke-static {p0, p1}, Lp2/d0;->b(II)J

    move-result-wide p0

    return-wide p0

    :cond_5
    :goto_2
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/p;

    iget-object v0, p0, Lp2/p;->a:Lp2/a;

    invoke-virtual {p0, p1}, Lp2/p;->c(Ll1/c;)Ll1/c;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Lp2/a;->c(Ll1/c;ILc2/c0;)J

    move-result-wide p1

    invoke-virtual {p0, v3, p1, p2}, Lp2/p;->b(ZJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final k(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lp2/n;->a:Landroidx/lifecycle/a1;

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v1, Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "offset("

    const-string v1, ") is out of bounds [0, "

    invoke-static {p1, v0, v1}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast p0, Lp2/g;

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv2/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final l(I)V
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lp2/n;->a:Landroidx/lifecycle/a1;

    if-ltz p1, :cond_0

    iget-object v1, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast v1, Lp2/g;

    iget-object v1, v1, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    const-string v0, "offset("

    const-string v1, ") is out of bounds [0, "

    invoke-static {p1, v0, v1}, La6/q;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Landroidx/lifecycle/a1;->l:Ljava/lang/Object;

    check-cast p0, Lp2/g;

    iget-object p0, p0, Lp2/g;->m:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv2/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final m(I)V
    .locals 2

    const/4 v0, 0x0

    iget p0, p0, Lp2/n;->f:I

    if-ltz p1, :cond_0

    if-ge p1, p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "lineIndex("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") is out of bounds [0, "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lv2/a;->a(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
