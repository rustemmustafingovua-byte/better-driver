.class public final Lgc/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Ljava/io/Serializable;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;


# direct methods
.method public static final a(Lgc/f;Lr/n2;Lr/g1;FFLa9/c;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v5, p0

    move-object/from16 v7, p1

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v2, v1, Lr/i1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lr/i1;

    iget v3, v2, Lr/i1;->q:I

    const/high16 v4, -0x80000000

    and-int v6, v3, v4

    if-eqz v6, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lr/i1;->q:I

    :goto_0
    move-object v9, v2

    goto :goto_1

    :cond_0
    new-instance v2, Lr/i1;

    invoke-direct {v2, v5, v1}, Lr/i1;-><init>(Lgc/f;La9/c;)V

    goto :goto_0

    :goto_1
    iget-object v1, v9, Lr/i1;->o:Ljava/lang/Object;

    sget-object v10, Lz8/a;->l:Lz8/a;

    iget v2, v9, Lr/i1;->q:I

    const/4 v11, 0x0

    sget-object v12, Lt8/z;->a:Lt8/z;

    const/4 v13, 0x2

    const/4 v14, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v14, :cond_2

    if-ne v2, v13, :cond_1

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    return-object v12

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, v9, Lr/i1;->n:F

    iget-object v2, v9, Lr/i1;->m:Lj9/w;

    iget-object v3, v9, Lr/i1;->l:Lr/n2;

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v3, Lj9/y;

    invoke-direct {v3}, Lj9/y;-><init>()V

    iput-object v0, v3, Lj9/y;->m:Ljava/lang/Object;

    invoke-virtual {v5, v0}, Lgc/f;->k(Lr/g1;)V

    iget-object v0, v5, Lgc/f;->f:Ljava/lang/Object;

    check-cast v0, Lw9/e;

    invoke-static {v0}, Lgc/f;->j(Lw9/e;)Lr/g1;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v5, v0}, Lgc/f;->k(Lr/g1;)V

    iget-object v1, v3, Lj9/y;->m:Ljava/lang/Object;

    check-cast v1, Lr/g1;

    invoke-virtual {v1, v0}, Lr/g1;->a(Lr/g1;)Lr/g1;

    move-result-object v0

    iput-object v0, v3, Lj9/y;->m:Ljava/lang/Object;

    :cond_4
    new-instance v1, Lj9/w;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iget-object v0, v3, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Lr/g1;

    iget-wide v13, v0, Lr/g1;->a:J

    invoke-virtual {v7, v13, v14}, Lr/n2;->e(J)J

    move-result-wide v13

    invoke-virtual {v7, v13, v14}, Lr/n2;->g(J)F

    move-result v0

    iput v0, v1, Lj9/w;->l:F

    invoke-static {v0}, Lr/f1;->a(F)Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_6

    :cond_5
    new-instance v2, Lj9/y;

    invoke-direct {v2}, Lj9/y;-><init>()V

    const/16 v0, 0x1e

    invoke-static {v11, v0}, Ln/d;->b(FI)Ln/k;

    move-result-object v0

    iput-object v0, v2, Lj9/y;->m:Ljava/lang/Object;

    new-instance v0, Lr/j1;

    const/4 v8, 0x0

    move/from16 v4, p3

    move/from16 v6, p4

    invoke-direct/range {v0 .. v8}, Lr/j1;-><init>(Lj9/w;Lj9/y;Lj9/y;FLgc/f;FLr/n2;Ly8/c;)V

    iput-object v7, v9, Lr/i1;->l:Lr/n2;

    iput-object v1, v9, Lr/i1;->m:Lj9/w;

    iput v6, v9, Lr/i1;->n:F

    const/4 v15, 0x1

    iput v15, v9, Lr/i1;->q:I

    invoke-virtual {v5, v7, v0, v9}, Lgc/f;->l(Lr/n2;Lr/j1;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_6

    goto/16 :goto_5

    :cond_6
    move-object v2, v1

    move v0, v6

    move-object v3, v7

    :goto_2
    iget-object v1, v5, Lgc/f;->h:Ljava/lang/Object;

    check-cast v1, Lk0/l;

    iget-object v4, v1, Lk0/l;->m:Ljava/lang/Object;

    check-cast v4, Lz1/d;

    const v6, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v4, v6}, Lz1/d;->b(F)F

    move-result v4

    iget-object v1, v1, Lk0/l;->n:Ljava/lang/Object;

    check-cast v1, Lz1/d;

    invoke-virtual {v1, v6}, Lz1/d;->b(F)F

    move-result v1

    invoke-static {v4, v1}, Lb6/g;->e(FF)J

    move-result-wide v6

    const-wide/16 v13, 0x0

    cmp-long v1, v6, v13

    if-nez v1, :cond_9

    iget v1, v2, Lj9/w;->l:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/16 v4, 0x64

    int-to-float v4, v4

    div-float/2addr v1, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, v2, Lj9/w;->l:F

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result v1

    invoke-virtual {v3, v1}, Lr/n2;->d(F)F

    move-result v1

    mul-float/2addr v1, v0

    const/16 v0, 0x3e8

    int-to-float v0, v0

    mul-float/2addr v1, v0

    cmpg-float v0, v1, v11

    if-nez v0, :cond_7

    move-wide v6, v13

    goto :goto_4

    :cond_7
    iget-object v0, v3, Lr/n2;->d:Lr/m1;

    sget-object v2, Lr/m1;->m:Lr/m1;

    if-ne v0, v2, :cond_8

    invoke-static {v1, v11}, Lb6/g;->e(FF)J

    move-result-wide v0

    :goto_3
    move-wide v6, v0

    goto :goto_4

    :cond_8
    invoke-static {v11, v1}, Lb6/g;->e(FF)J

    move-result-wide v0

    goto :goto_3

    :cond_9
    :goto_4
    move-wide v2, v6

    iget-object v0, v5, Lgc/f;->d:Ljava/io/Serializable;

    check-cast v0, Lr/c2;

    const/4 v4, 0x0

    iput-object v4, v9, Lr/i1;->l:Lr/n2;

    iput-object v4, v9, Lr/i1;->m:Lj9/w;

    const/4 v1, 0x2

    iput v1, v9, Lr/i1;->q:I

    iget-object v0, v0, Lj9/a;->l:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lr/g2;

    iget-object v0, v1, Lr/g2;->V:Lx1/d;

    invoke-virtual {v0}, Lx1/d;->c()Lu9/t;

    move-result-object v6

    new-instance v0, Lr/e2;

    const/4 v5, 0x1

    invoke-direct/range {v0 .. v5}, Lr/e2;-><init>(Lr/g2;JLy8/c;I)V

    const/4 v1, 0x3

    invoke-static {v6, v4, v4, v0, v1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    if-ne v12, v10, :cond_a

    :goto_5
    return-object v10

    :cond_a
    :goto_6
    return-object v12
.end method

.method public static final b(Lgc/f;Lj9/y;Lj9/w;Lr/n2;Lj9/y;JLa9/c;)Ljava/lang/Object;
    .locals 14

    move-wide/from16 v0, p5

    move-object/from16 v2, p7

    instance-of v3, v2, Lr/k1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lr/k1;

    iget v4, v3, Lr/k1;->r:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lr/k1;->r:I

    goto :goto_0

    :cond_0
    new-instance v3, Lr/k1;

    invoke-direct {v3, v2}, La9/c;-><init>(Ly8/c;)V

    :goto_0
    iget-object v2, v3, Lr/k1;->q:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lr/k1;->r:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    iget-object p0, v3, Lr/k1;->p:Lj9/y;

    iget-object v0, v3, Lr/k1;->o:Lr/n2;

    iget-object v1, v3, Lr/k1;->n:Lj9/w;

    iget-object v4, v3, Lr/k1;->m:Lj9/y;

    iget-object v3, v3, Lr/k1;->l:Lgc/f;

    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    move-object v9, p0

    move-object v8, v0

    move-object p0, v3

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    const-wide/16 v7, 0x0

    cmp-long v2, v0, v7

    if-gez v2, :cond_3

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_3
    new-instance v2, Lad/w;

    const/4 v5, 0x0

    const/16 v7, 0x12

    invoke-direct {v2, p0, v5, v7}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p0, v3, Lr/k1;->l:Lgc/f;

    iput-object p1, v3, Lr/k1;->m:Lj9/y;

    move-object/from16 v7, p2

    iput-object v7, v3, Lr/k1;->n:Lj9/w;

    move-object/from16 v8, p3

    iput-object v8, v3, Lr/k1;->o:Lr/n2;

    move-object/from16 v9, p4

    iput-object v9, v3, Lr/k1;->p:Lj9/y;

    iput v6, v3, Lr/k1;->r:I

    invoke-static {v0, v1, v2, v3}, Lu9/v;->A(JLi9/e;La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_4

    return-object v4

    :cond_4
    move-object v4, p1

    move-object v1, v7

    :goto_1
    check-cast v2, Lr/g1;

    if-eqz v2, :cond_5

    iget-object v0, v4, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Lr/g1;

    iget-boolean v0, v0, Lr/g1;->c:Z

    iget-wide v10, v2, Lr/g1;->a:J

    iget-wide v12, v2, Lr/g1;->b:J

    new-instance v3, Lr/g1;

    move/from16 p6, v0

    move-object p1, v3

    move-wide/from16 p2, v10

    move-wide/from16 p4, v12

    invoke-direct/range {p1 .. p6}, Lr/g1;-><init>(JJZ)V

    move-object v0, p1

    iput-object v0, v4, Lj9/y;->m:Ljava/lang/Object;

    invoke-virtual {v8, v10, v11}, Lr/n2;->e(J)J

    move-result-wide v3

    invoke-virtual {v8, v3, v4}, Lr/n2;->i(J)F

    move-result v0

    iput v0, v1, Lj9/w;->l:F

    const/4 v0, 0x0

    const/16 v3, 0x1e

    invoke-static {v0, v3}, Ln/d;->b(FI)Ln/k;

    move-result-object v0

    iput-object v0, v9, Lj9/y;->m:Ljava/lang/Object;

    invoke-virtual {p0, v2}, Lgc/f;->k(Lr/g1;)V

    iget p0, v1, Lj9/w;->l:F

    invoke-static {p0}, Lr/f1;->a(F)Z

    move-result p0

    xor-int/2addr p0, v6

    goto :goto_2

    :cond_5
    const/4 p0, 0x0

    :goto_2
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static j(Lw9/e;)Lr/g1;
    .locals 3

    new-instance v0, Lod/x4;

    const/16 v1, 0x9

    invoke-direct {v0, v1, p0}, Lod/x4;-><init>(ILjava/lang/Object;)V

    new-instance p0, Lb0/y1;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lb0/y1;-><init>(Ljava/lang/Object;Ly8/c;I)V

    invoke-static {p0}, Ll7/a;->r(Li9/e;)Lq9/i;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lq9/i;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lq9/i;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr/g1;

    if-nez v2, :cond_0

    :goto_1
    move-object v2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v0}, Lr/g1;->a(Lr/g1;)Lr/g1;

    move-result-object v0

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public c(Lr/l2;F)F
    .locals 3

    iget-object p0, p0, Lgc/f;->b:Ljava/lang/Object;

    check-cast p0, Lr/n2;

    invoke-virtual {p0, p2}, Lr/n2;->d(F)F

    move-result p2

    invoke-virtual {p0, p2}, Lr/n2;->h(F)J

    move-result-wide v0

    iget-object p1, p1, Lr/l2;->a:Lr/n2;

    iget-object p2, p1, Lr/n2;->k:Lr/s1;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v0, v1, v2}, Lr/n2;->c(Lr/s1;JI)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lr/n2;->e(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lr/n2;->g(J)F

    move-result p0

    return p0
.end method

.method public d(Lpb/i;)V
    .locals 2

    invoke-virtual {p1}, Lpb/i;->L()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lpb/w;

    if-eqz v0, :cond_2

    check-cast p1, Lpb/w;

    iget-object v0, p0, Lgc/f;->d:Ljava/io/Serializable;

    check-cast v0, Ljava/util/HashSet;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgc/f;->d:Ljava/io/Serializable;

    :cond_1
    iget-object p0, p0, Lgc/f;->d:Ljava/io/Serializable;

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p1}, Lpb/w;->v()Lpb/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    instance-of v0, p1, Lpb/q;

    if-eqz v0, :cond_4

    check-cast p1, Lpb/q;

    iget-object v0, p0, Lgc/f;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgc/f;->e:Ljava/lang/Object;

    :cond_3
    iget-object p0, p0, Lgc/f;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    instance-of v0, p1, Lpb/x;

    if-nez v0, :cond_7

    instance-of v0, p1, Lpb/v;

    if-eqz v0, :cond_5

    goto :goto_2

    :cond_5
    instance-of v0, p1, Lpb/j;

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lpb/i;->E()I

    move-result v1

    if-ge v0, v1, :cond_6

    invoke-virtual {p1, v0}, Lpb/i;->A(I)Lpb/i;

    move-result-object v1

    invoke-virtual {p0, v1}, Lgc/f;->d(Lpb/i;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return-void

    :cond_7
    :goto_2
    iget-object v0, p0, Lgc/f;->f:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgc/f;->f:Ljava/lang/Object;

    :cond_8
    iget-object p0, p0, Lgc/f;->f:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Lpb/a;ZLpb/i;)I
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lgc/f;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lgc/f;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpb/i;

    if-eqz p2, :cond_0

    if-ne p3, v3, :cond_0

    move v3, v4

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lgc/f;->g:Ljava/lang/Object;

    check-cast v3, [Lob/a;

    aget-object v3, v3, v1

    if-nez v3, :cond_1

    iget-object v3, p0, Lgc/f;->f:Ljava/lang/Object;

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lpb/i;

    new-instance v5, Lm2/j;

    const/16 v6, 0x16

    invoke-direct {v5, v6}, Lm2/j;-><init>(I)V

    iput-object v3, v5, Lm2/j;->m:Ljava/lang/Object;

    iget-object v3, p0, Lgc/f;->g:Ljava/lang/Object;

    check-cast v3, [Lob/a;

    aput-object v5, v3, v1

    move-object v3, v5

    :cond_1
    invoke-interface {v3, p1}, Lob/a;->c(Lpb/a;)I

    move-result v3

    :goto_1
    if-nez v3, :cond_2

    goto/16 :goto_8

    :cond_2
    if-ne v3, v4, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-ne v2, v4, :cond_5

    goto/16 :goto_7

    :cond_5
    const/4 p2, 0x2

    if-le v2, v4, :cond_13

    iget-object p3, p0, Lgc/f;->c:Ljava/lang/Object;

    check-cast p3, Lc5/o;

    if-nez p3, :cond_7

    new-instance p3, Lc5/o;

    iget-object v1, p0, Lgc/f;->b:Ljava/lang/Object;

    check-cast v1, Lpb/i;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p3, v2, v3}, Lc5/o;-><init>(IB)V

    invoke-virtual {v1}, Lpb/i;->L()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p3, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p3, v1}, Lc5/o;->e(Lpb/i;)V

    :goto_2
    iput-object p3, p0, Lgc/f;->c:Ljava/lang/Object;

    :cond_7
    iget-object p0, p0, Lgc/f;->c:Ljava/lang/Object;

    check-cast p0, Lc5/o;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lgc/c;

    invoke-direct {p3, p1}, Lgc/c;-><init>(Lpb/a;)V

    iget-object p0, p0, Lc5/o;->m:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v2, v0

    :cond_8
    if-ge v2, v1, :cond_f

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, [Lpb/a;

    move v5, v0

    :goto_3
    array-length v6, v3

    sub-int/2addr v6, v4

    if-ge v5, v6, :cond_8

    aget-object v6, v3, v5

    add-int/lit8 v7, v5, 0x1

    aget-object v8, v3, v7

    invoke-virtual {p1, v8}, Lpb/a;->i(Lpb/a;)Z

    move-result v9

    if-eqz v9, :cond_9

    goto :goto_6

    :cond_9
    invoke-virtual {p1, v6}, Lpb/a;->i(Lpb/a;)Z

    move-result v9

    if-eqz v9, :cond_b

    if-lez v5, :cond_a

    add-int/lit8 v5, v5, -0x1

    goto :goto_4

    :cond_a
    array-length v5, v3

    sub-int/2addr v5, p2

    :goto_4
    aget-object v5, v3, v5

    invoke-static {p1, v5, v8}, Lc5/o;->j(Lpb/a;Lpb/a;Lpb/a;)Lgc/b;

    move-result-object v5

    iget-object v6, p3, Lgc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_b
    invoke-static {v6, v8, p1}, Lpb/h;->e(Lpb/a;Lpb/a;Lpb/a;)Z

    move-result v5

    if-nez v5, :cond_c

    goto :goto_6

    :cond_c
    invoke-virtual {p1, v6}, Lpb/a;->i(Lpb/a;)Z

    move-result v5

    if-eqz v5, :cond_d

    goto :goto_5

    :cond_d
    invoke-static {v6, v8, p1}, Lb6/g;->v(Lpb/a;Lpb/a;Lpb/a;)I

    move-result v5

    if-nez v5, :cond_e

    :goto_5
    invoke-static {p1, v6, v8}, Lc5/o;->j(Lpb/a;Lpb/a;Lpb/a;)Lgc/b;

    move-result-object v5

    iget-object v6, p3, Lgc/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    :goto_6
    move v5, v7

    goto :goto_3

    :cond_f
    invoke-virtual {p3}, Lgc/c;->a()Lg5/l;

    move-result-object p0

    iget-object p0, p0, Lg5/l;->n:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    move p3, v0

    :cond_10
    if-ge p3, p1, :cond_12

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p3, p3, 0x1

    check-cast v1, Lgc/d;

    invoke-virtual {v1, v4, v4}, Lgc/d;->a(IZ)I

    move-result v2

    if-eq p2, v2, :cond_11

    invoke-virtual {v1, p2, v4}, Lgc/d;->a(IZ)I

    move-result v1

    if-ne p2, v1, :cond_10

    :cond_11
    :goto_7
    return v4

    :cond_12
    :goto_8
    return v0

    :cond_13
    return p2
.end method

.method public f(Lpb/a;ZLpb/i;)I
    .locals 6

    iget-boolean v0, p0, Lgc/f;->a:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/16 v0, 0x79

    if-eqz p2, :cond_2

    iget-object v2, p0, Lgc/f;->b:Ljava/lang/Object;

    check-cast v2, Lpb/i;

    instance-of v3, v2, Lpb/x;

    if-nez v3, :cond_1

    instance-of v2, v2, Lpb/v;

    if-eqz v2, :cond_2

    :cond_1
    return v0

    :cond_2
    iget-object v2, p0, Lgc/f;->f:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    invoke-virtual {p0, p1, p2, p3}, Lgc/f;->e(Lpb/a;ZLpb/i;)I

    move-result p3

    if-eq p3, v1, :cond_5

    if-eqz p3, :cond_4

    if-eq p3, v3, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    const/16 p0, 0x78

    return p0

    :cond_5
    iget-object p3, p0, Lgc/f;->e:Ljava/lang/Object;

    check-cast p3, Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-eqz p3, :cond_f

    iget-object p3, p0, Lgc/f;->h:Ljava/lang/Object;

    check-cast p3, Lad/a2;

    if-eqz p3, :cond_7

    iget-object v2, p3, Lad/a2;->n:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    move p3, v0

    goto :goto_0

    :cond_6
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object p3, p3, Lad/a2;->o:Ljava/lang/Object;

    check-cast p3, Lnb/a;

    invoke-virtual {p3, v2}, Lnb/a;->a(I)Z

    move-result p3

    :goto_0
    if-eqz p3, :cond_7

    move v4, v3

    goto :goto_2

    :cond_7
    if-eqz p2, :cond_8

    move v4, v0

    goto :goto_2

    :cond_8
    iget-object p2, p0, Lgc/f;->e:Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p3

    move v2, v0

    :cond_9
    if-ge v2, p3, :cond_c

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lpb/q;

    invoke-virtual {v4}, Lpb/i;->z()Lpb/h;

    move-result-object v5

    invoke-virtual {v5, p1}, Lpb/h;->d(Lpb/a;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    move v4, v1

    goto :goto_1

    :cond_b
    iget-object v4, v4, Lpb/q;->o:Lpb/d;

    invoke-static {p1, v4}, Lc6/o;->S(Lpb/a;Lpb/d;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v4, v0

    :goto_1
    if-eq v4, v1, :cond_9

    goto :goto_2

    :cond_c
    move v4, v1

    :goto_2
    if-eq v4, v1, :cond_f

    if-eqz v4, :cond_e

    if-eq v4, v3, :cond_d

    goto :goto_4

    :cond_d
    const/16 p0, 0x6f

    return p0

    :cond_e
    const/16 p0, 0x6e

    return p0

    :cond_f
    iget-object p0, p0, Lgc/f;->d:Ljava/io/Serializable;

    check-cast p0, Ljava/util/HashSet;

    if-eqz p0, :cond_12

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    goto :goto_3

    :cond_10
    move v0, v1

    :goto_3
    if-eq v0, v1, :cond_12

    if-eqz v0, :cond_11

    goto :goto_4

    :cond_11
    const/16 p0, 0x67

    return p0

    :cond_12
    :goto_4
    return v1
.end method

.method public g(Ly1/l;)Z
    .locals 12

    iget-object v0, p0, Lgc/f;->c:Ljava/lang/Object;

    check-cast v0, Lq3/k;

    iget-object v0, v0, Lq3/k;->m:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewConfiguration;

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledVerticalScrollFactor()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledHorizontalScrollFactor()F

    move-result v0

    neg-float v0, v0

    iget-object v2, p1, Ly1/l;->a:Ljava/lang/Object;

    new-instance v3, Ll1/b;

    const-wide/16 v4, 0x0

    invoke-direct {v3, v4, v5}, Ll1/b;-><init>(J)V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    iget-wide v7, v3, Ll1/b;->a:J

    if-ge v6, v4, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ly1/u;

    iget-wide v9, v3, Ly1/u;->j:J

    invoke-static {v7, v8, v9, v10}, Ll1/b;->e(JJ)J

    move-result-wide v7

    new-instance v3, Ll1/b;

    invoke-direct {v3, v7, v8}, Ll1/b;-><init>(J)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    const/16 v2, 0x20

    shr-long v3, v7, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    mul-float/2addr v3, v0

    const-wide v9, 0xffffffffL

    and-long v6, v7, v9

    long-to-int v0, v6

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    mul-float/2addr v0, v1

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v3, v1

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long v2, v3, v2

    and-long/2addr v0, v9

    or-long v7, v2, v0

    iget-object v0, p0, Lgc/f;->b:Ljava/lang/Object;

    check-cast v0, Lr/n2;

    invoke-virtual {v0, v7, v8}, Lr/n2;->e(J)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lr/n2;->i(J)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    iget-object v0, v0, Lr/n2;->a:Lr/h2;

    invoke-interface {v0}, Lr/h2;->d()Z

    move-result v5

    goto :goto_1

    :cond_2
    iget-object v0, v0, Lr/n2;->a:Lr/h2;

    invoke-interface {v0}, Lr/h2;->c()Z

    move-result v5

    :goto_1
    if-eqz v5, :cond_3

    iget-object p0, p0, Lgc/f;->f:Ljava/lang/Object;

    check-cast p0, Lw9/e;

    new-instance v6, Lr/g1;

    iget-object p1, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-static {p1}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ly1/u;

    iget-wide v9, p1, Ly1/u;->b:J

    const/4 v11, 0x0

    invoke-direct/range {v6 .. v11}, Lr/g1;-><init>(JJZ)V

    invoke-interface {p0, v6}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    instance-of p0, p0, Lw9/k;

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_3
    iget-boolean p0, p0, Lgc/f;->a:Z

    return p0
.end method

.method public h(Landroid/content/res/AssetManager;Ljava/lang/String;)Ljava/io/FileInputStream;
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string p2, "compressed"

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lgc/f;->c:Ljava/lang/Object;

    check-cast p0, Lj4/b;

    invoke-interface {p0}, Lj4/b;->c()V

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public i(ILjava/io/Serializable;)V
    .locals 3

    iget-object v0, p0, Lgc/f;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lb/m;

    const/4 v2, 0x2

    invoke-direct {v1, p1, v2, p0, p2}, Lb/m;-><init>(IILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public k(Lr/g1;)V
    .locals 6

    iget-object p0, p0, Lgc/f;->h:Ljava/lang/Object;

    check-cast p0, Lk0/l;

    iget-wide v0, p1, Lr/g1;->b:J

    iget-wide v2, p1, Lr/g1;->a:J

    iget-object p1, p0, Lk0/l;->m:Ljava/lang/Object;

    check-cast p1, Lz1/d;

    const/16 v4, 0x20

    shr-long v4, v2, v4

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    invoke-virtual {p1, v4, v0, v1}, Lz1/d;->a(FJ)V

    iget-object p0, p0, Lk0/l;->n:Ljava/lang/Object;

    check-cast p0, Lz1/d;

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    long-to-int p1, v2

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {p0, p1, v0, v1}, Lz1/d;->a(FJ)V

    return-void
.end method

.method public l(Lr/n2;Lr/j1;La9/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p3, Lr/l1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lr/l1;

    iget v1, v0, Lr/l1;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/l1;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/l1;

    invoke-direct {v0, p0, p3}, Lr/l1;-><init>(Lgc/f;La9/c;)V

    :goto_0
    iget-object p3, v0, Lr/l1;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/l1;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    iput-boolean v3, p0, Lgc/f;->a:Z

    new-instance p3, Lp/b;

    const/4 v2, 0x0

    const/4 v4, 0x4

    invoke-direct {p3, p1, p2, v2, v4}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    iput v3, v0, Lr/l1;->n:I

    new-instance p1, Lu9/k1;

    invoke-interface {v0}, Ly8/c;->getContext()Ly8/h;

    move-result-object p2

    const/4 v2, 0x0

    invoke-direct {p1, p2, v0, v2}, Lu9/k1;-><init>(Ly8/h;Ly8/c;I)V

    invoke-static {p1, v3, p1, p3}, Lg5/f;->N(Lz9/q;ZLz9/q;Li9/e;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-boolean p1, p0, Lgc/f;->a:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
