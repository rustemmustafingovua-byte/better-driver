.class public final Le2/s;
.super Le2/h1;
.source "SourceFile"


# static fields
.field public static final e0:Lf6/v;


# instance fields
.field public final c0:Le2/b2;

.field public d0:Le2/r;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lm1/v;->g()Lf6/v;

    move-result-object v0

    sget-wide v1, Lm1/p;->d:J

    invoke-virtual {v0, v1, v2}, Lf6/v;->p(J)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lf6/v;->v(F)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lf6/v;->w(I)V

    sput-object v0, Le2/s;->e0:Lf6/v;

    return-void
.end method

.method public constructor <init>(Le2/g0;)V
    .locals 2

    invoke-direct {p0, p1}, Le2/h1;-><init>(Le2/g0;)V

    new-instance v0, Le2/b2;

    invoke-direct {v0}, Lf1/q;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lf1/q;->o:I

    iput-object v0, p0, Le2/s;->c0:Le2/b2;

    iput-object p0, v0, Lf1/q;->s:Le2/h1;

    iget-object p1, p1, Le2/g0;->t:Le2/g0;

    if-eqz p1, :cond_0

    new-instance p1, Le2/r;

    invoke-direct {p1, p0}, Le2/q0;-><init>(Le2/h1;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Le2/s;->d0:Le2/r;

    return-void
.end method


# virtual methods
.method public final C(J)Lc2/f1;
    .locals 6

    invoke-virtual {p0, p1, p2}, Lc2/f1;->r0(J)V

    iget-object v0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {v0}, Le2/g0;->z()Lt0/b;

    move-result-object v1

    iget-object v2, v1, Lt0/b;->l:[Ljava/lang/Object;

    iget v1, v1, Lt0/b;->n:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v2, v3

    check-cast v4, Le2/g0;

    iget-object v4, v4, Le2/g0;->S:Le2/l0;

    iget-object v4, v4, Le2/l0;->p:Le2/x0;

    sget-object v5, Le2/e0;->n:Le2/e0;

    iput-object v5, v4, Le2/x0;->w:Le2/e0;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Le2/g0;->I:Lc2/r0;

    invoke-virtual {v0}, Le2/g0;->m()Ljava/util/List;

    move-result-object v0

    invoke-interface {v1, p0, v0, p1, p2}, Lc2/r0;->j(Lc2/t0;Ljava/util/List;J)Lc2/s0;

    move-result-object p1

    invoke-virtual {p0, p1}, Le2/h1;->n1(Lc2/s0;)V

    invoke-virtual {p0}, Le2/h1;->e1()V

    return-object p0
.end method

.method public final P0()V
    .locals 1

    iget-object v0, p0, Le2/s;->d0:Le2/r;

    if-nez v0, :cond_0

    new-instance v0, Le2/r;

    invoke-direct {v0, p0}, Le2/q0;-><init>(Le2/h1;)V

    iput-object v0, p0, Le2/s;->d0:Le2/r;

    :cond_0
    return-void
.end method

.method public final S0()Le2/q0;
    .locals 0

    iget-object p0, p0, Le2/s;->d0:Le2/r;

    return-object p0
.end method

.method public final U0()Lf1/q;
    .locals 0

    iget-object p0, p0, Le2/s;->c0:Le2/b2;

    return-object p0
.end method

.method public final a1(Le2/d1;JLe2/q;IZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v3, p2

    move-object/from16 v9, p4

    iget v2, v1, Le2/d1;->a:I

    const/4 v12, 0x1

    const/4 v13, 0x0

    iget-object v5, v0, Le2/h1;->z:Le2/g0;

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v5}, Le2/g0;->x()Lm2/m;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lm2/m;->o:Z

    if-ne v2, v12, :cond_0

    move v2, v12

    goto :goto_0

    :cond_0
    move v2, v13

    :goto_0
    xor-int/2addr v2, v12

    goto :goto_1

    :pswitch_0
    move v2, v12

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v0, v3, v4}, Le2/h1;->u1(J)Z

    move-result v2

    if-eqz v2, :cond_1

    move/from16 v2, p5

    move/from16 v11, p6

    move v0, v12

    goto :goto_2

    :cond_1
    move/from16 v2, p5

    if-ne v2, v12, :cond_3

    invoke-virtual {v0}, Le2/h1;->T0()J

    move-result-wide v6

    invoke-virtual {v0, v3, v4, v6, v7}, Le2/h1;->M0(JJ)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    const v6, 0x7fffffff

    and-int/2addr v0, v6

    const/high16 v6, 0x7f800000    # Float.POSITIVE_INFINITY

    if-ge v0, v6, :cond_3

    move v0, v12

    move v11, v13

    goto :goto_2

    :cond_2
    move/from16 v2, p5

    :cond_3
    move/from16 v11, p6

    move v0, v13

    :goto_2
    if-eqz v0, :cond_10

    iget v0, v9, Le2/q;->n:I

    invoke-virtual {v5}, Le2/g0;->y()Lt0/b;

    move-result-object v5

    iget-object v14, v5, Lt0/b;->l:[Ljava/lang/Object;

    iget v5, v5, Lt0/b;->n:I

    sub-int/2addr v5, v12

    move v15, v5

    :goto_3
    if-ltz v15, :cond_f

    aget-object v5, v14, v15

    check-cast v5, Le2/g0;

    invoke-virtual {v5}, Le2/g0;->I()Z

    move-result v6

    if-eqz v6, :cond_e

    iget v6, v1, Le2/d1;->a:I

    packed-switch v6, :pswitch_data_1

    iget-object v6, v5, Le2/g0;->R:Le2/c1;

    iget-object v7, v6, Le2/c1;->d:Le2/h1;

    invoke-virtual {v7, v3, v4}, Le2/h1;->R0(J)J

    move-result-wide v7

    iget-object v6, v6, Le2/c1;->d:Le2/h1;

    move-object v10, v5

    move-object v5, v6

    sget-object v6, Le2/h1;->b0:Le2/d1;

    move-object/from16 v16, v10

    const/4 v10, 0x1

    invoke-virtual/range {v5 .. v11}, Le2/h1;->Z0(Le2/d1;JLe2/q;IZ)V

    move-object/from16 v9, p4

    move-object/from16 v10, v16

    goto :goto_4

    :pswitch_1
    move v6, v2

    move-object v2, v5

    move-object v5, v9

    move v7, v11

    invoke-virtual/range {v2 .. v7}, Le2/g0;->A(JLe2/q;IZ)V

    move-object v10, v2

    :goto_4
    invoke-virtual {v9}, Le2/q;->a()J

    move-result-wide v2

    invoke-static {v2, v3}, Le2/l;->j(J)F

    move-result v4

    const/4 v5, 0x0

    cmpg-float v4, v4, v5

    if-gez v4, :cond_e

    invoke-static {v2, v3}, Le2/l;->o(J)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v2, v3}, Le2/l;->n(J)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, v10, Le2/g0;->R:Le2/c1;

    iget-object v2, v2, Le2/c1;->d:Le2/h1;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v3, 0x10

    invoke-static {v3}, Le2/i1;->g(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Le2/h1;->W0(Z)Lf1/q;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_a

    :cond_4
    iget-boolean v4, v2, Lf1/q;->y:Z

    if-eqz v4, :cond_f

    iget-object v4, v2, Lf1/q;->l:Lf1/q;

    iget-boolean v4, v4, Lf1/q;->y:Z

    if-nez v4, :cond_5

    const-string v4, "visitLocalDescendants called on an unattached node"

    invoke-static {v4}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_5
    iget-object v2, v2, Lf1/q;->l:Lf1/q;

    iget v4, v2, Lf1/q;->o:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_f

    :goto_5
    if-eqz v2, :cond_f

    iget v4, v2, Lf1/q;->n:I

    and-int/2addr v4, v3

    if-eqz v4, :cond_d

    const/4 v4, 0x0

    move-object v5, v2

    move-object v6, v4

    :goto_6
    if-eqz v5, :cond_d

    instance-of v7, v5, Le2/v1;

    if-eqz v7, :cond_6

    check-cast v5, Le2/v1;

    invoke-interface {v5}, Le2/v1;->k0()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v2, v9, Le2/q;->l:Lk/h0;

    iget v2, v2, Lk/h0;->b:I

    sub-int/2addr v2, v12

    iput v2, v9, Le2/q;->n:I

    goto :goto_9

    :cond_6
    iget v7, v5, Lf1/q;->n:I

    and-int/2addr v7, v3

    if-eqz v7, :cond_c

    instance-of v7, v5, Le2/k;

    if-eqz v7, :cond_c

    move-object v7, v5

    check-cast v7, Le2/k;

    iget-object v7, v7, Le2/k;->A:Lf1/q;

    move v8, v13

    :goto_7
    if-eqz v7, :cond_b

    iget v10, v7, Lf1/q;->n:I

    and-int/2addr v10, v3

    if-eqz v10, :cond_a

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v12, :cond_7

    move-object v5, v7

    goto :goto_8

    :cond_7
    if-nez v6, :cond_8

    new-instance v6, Lt0/b;

    new-array v10, v3, [Lf1/q;

    invoke-direct {v6, v10}, Lt0/b;-><init>([Ljava/lang/Object;)V

    :cond_8
    if-eqz v5, :cond_9

    invoke-virtual {v6, v5}, Lt0/b;->b(Ljava/lang/Object;)V

    move-object v5, v4

    :cond_9
    invoke-virtual {v6, v7}, Lt0/b;->b(Ljava/lang/Object;)V

    :cond_a
    :goto_8
    iget-object v7, v7, Lf1/q;->q:Lf1/q;

    goto :goto_7

    :cond_b
    if-ne v8, v12, :cond_c

    goto :goto_6

    :cond_c
    invoke-static {v6}, Le2/l;->e(Lt0/b;)Lf1/q;

    move-result-object v5

    goto :goto_6

    :cond_d
    iget-object v2, v2, Lf1/q;->q:Lf1/q;

    goto :goto_5

    :cond_e
    :goto_9
    add-int/lit8 v15, v15, -0x1

    move-wide/from16 v3, p2

    move/from16 v2, p5

    goto/16 :goto_3

    :cond_f
    :goto_a
    iput v0, v9, Le2/q;->n:I

    :cond_10
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final b0(I)I
    .locals 2

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->u()Lg5/e;

    move-result-object p0

    invoke-virtual {p0}, Lg5/e;->m()Lc2/r0;

    move-result-object v0

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->d:Le2/h1;

    invoke-virtual {p0}, Le2/g0;->m()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lc2/r0;->g(Lc2/p;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public final c(I)I
    .locals 2

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->u()Lg5/e;

    move-result-object p0

    invoke-virtual {p0}, Lg5/e;->m()Lc2/r0;

    move-result-object v0

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->d:Le2/h1;

    invoke-virtual {p0}, Le2/g0;->m()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lc2/r0;->h(Lc2/p;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public final j1(Lm1/o;Lp1/b;)V
    .locals 8

    iget-object v0, p0, Le2/h1;->z:Le2/g0;

    invoke-static {v0}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v1

    invoke-virtual {v0}, Le2/g0;->y()Lt0/b;

    move-result-object v0

    iget-object v2, v0, Lt0/b;->l:[Ljava/lang/Object;

    iget v0, v0, Lt0/b;->n:I

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, v2, v3

    check-cast v4, Le2/g0;

    invoke-virtual {v4}, Le2/g0;->I()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, p1, p2}, Le2/g0;->i(Lm1/o;Lp1/b;)V

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getShowLayoutBounds()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-wide v0, p0, Lc2/f1;->n:J

    const/16 p0, 0x20

    shr-long v2, v0, p0

    long-to-int p0, v2

    int-to-float p0, p0

    const/high16 p2, 0x3f000000    # 0.5f

    sub-float v5, p0, p2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int p0, v0

    int-to-float p0, p0

    sub-float v6, p0, p2

    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v4, 0x3f000000    # 0.5f

    sget-object v7, Le2/s;->e0:Lf6/v;

    move-object v2, p1

    invoke-interface/range {v2 .. v7}, Lm1/o;->j(FFFFLf6/v;)V

    :cond_2
    return-void
.end method

.method public final o0(JFLi9/c;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Le2/h1;->k1(JFLi9/c;)V

    iget-boolean p1, p0, Le2/p0;->u:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    invoke-virtual {p0}, Le2/x0;->z0()V

    return-void
.end method

.method public final t0(Lc2/a;)I
    .locals 4

    iget-object v0, p0, Le2/s;->d0:Le2/r;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Le2/r;->t0(Lc2/a;)I

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->p:Le2/x0;

    iget-object v0, p0, Le2/x0;->I:Le2/h0;

    iget-boolean v1, p0, Le2/x0;->x:Z

    const/4 v2, 0x1

    if-nez v1, :cond_2

    iget-object v1, p0, Le2/x0;->q:Le2/l0;

    iget-object v1, v1, Le2/l0;->d:Le2/c0;

    sget-object v3, Le2/c0;->l:Le2/c0;

    if-ne v1, v3, :cond_1

    iput-boolean v2, v0, Le2/h0;->f:Z

    iget-boolean v1, v0, Le2/h0;->b:Z

    if-eqz v1, :cond_2

    iput-boolean v2, p0, Le2/x0;->G:Z

    iput-boolean v2, p0, Le2/x0;->H:Z

    goto :goto_0

    :cond_1
    iput-boolean v2, v0, Le2/h0;->g:Z

    :cond_2
    :goto_0
    invoke-virtual {p0}, Le2/x0;->f()Le2/s;

    move-result-object v1

    iget-boolean v3, v1, Le2/p0;->v:Z

    iput-boolean v2, v1, Le2/p0;->v:Z

    invoke-virtual {p0}, Le2/x0;->N()V

    iput-boolean v3, v1, Le2/p0;->v:Z

    iget-object p0, v0, Le2/h0;->i:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_3
    const/high16 p0, -0x80000000

    return p0
.end method

.method public final u(I)I
    .locals 2

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->u()Lg5/e;

    move-result-object p0

    invoke-virtual {p0}, Lg5/e;->m()Lc2/r0;

    move-result-object v0

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->d:Le2/h1;

    invoke-virtual {p0}, Le2/g0;->m()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lc2/r0;->e(Lc2/p;Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method public final z(I)I
    .locals 2

    iget-object p0, p0, Le2/h1;->z:Le2/g0;

    invoke-virtual {p0}, Le2/g0;->u()Lg5/e;

    move-result-object p0

    invoke-virtual {p0}, Lg5/e;->m()Lc2/r0;

    move-result-object v0

    iget-object p0, p0, Lg5/e;->m:Ljava/lang/Object;

    check-cast p0, Le2/g0;

    iget-object v1, p0, Le2/g0;->R:Le2/c1;

    iget-object v1, v1, Le2/c1;->d:Le2/h1;

    invoke-virtual {p0}, Le2/g0;->m()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, v1, p0, p1}, Lc2/r0;->f(Lc2/p;Ljava/util/List;I)I

    move-result p0

    return p0
.end method
