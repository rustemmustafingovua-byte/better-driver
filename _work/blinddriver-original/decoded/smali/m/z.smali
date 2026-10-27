.class public final Lm/z;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/x;


# instance fields
.field public A:Ln/b1;

.field public B:Ln/b1;

.field public C:Lm/a0;

.field public D:Lm/b0;

.field public E:Li9/a;

.field public F:Lm/r;

.field public G:J

.field public H:Lf1/e;

.field public final I:Lm/y;

.field public z:Ln/h1;


# direct methods
.method public constructor <init>(Ln/h1;Ln/b1;Ln/b1;Lm/a0;Lm/b0;Li9/a;Lm/r;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p1, p0, Lm/z;->z:Ln/h1;

    iput-object p2, p0, Lm/z;->A:Ln/b1;

    iput-object p3, p0, Lm/z;->B:Ln/b1;

    iput-object p4, p0, Lm/z;->C:Lm/a0;

    iput-object p5, p0, Lm/z;->D:Lm/b0;

    iput-object p6, p0, Lm/z;->E:Li9/a;

    iput-object p7, p0, Lm/z;->F:Lm/r;

    sget-wide p1, Lm/n;->a:J

    iput-wide p1, p0, Lm/z;->G:J

    const/4 p1, 0x0

    const/16 p2, 0xf

    invoke-static {p1, p1, p2}, Lb3/b;->b(III)J

    new-instance p1, Lm/y;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lm/y;-><init>(Lm/z;I)V

    iput-object p1, p0, Lm/z;->I:Lm/y;

    new-instance p1, Lm/y;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lm/y;-><init>(Lm/z;I)V

    return-void
.end method


# virtual methods
.method public final E0()V
    .locals 2

    sget-wide v0, Lm/n;->a:J

    iput-wide v0, p0, Lm/z;->G:J

    return-void
.end method

.method public final I(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->b0(I)I

    move-result p0

    return p0
.end method

.method public final M0()Lf1/e;
    .locals 3

    iget-object v0, p0, Lm/z;->z:Ln/h1;

    invoke-virtual {v0}, Ln/h1;->f()Ln/c1;

    move-result-object v0

    sget-object v1, Lm/p;->l:Lm/p;

    sget-object v2, Lm/p;->m:Lm/p;

    invoke-virtual {v0, v1, v2}, Ln/c1;->a(Ljava/lang/Enum;Ljava/lang/Enum;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lm/z;->C:Lm/a0;

    iget-object v0, v0, Lm/a0;->a:Lm/j0;

    iget-object v0, v0, Lm/j0;->b:Lm/o;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lm/o;->a:Lf1/e;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    :goto_0
    iget-object p0, p0, Lm/z;->D:Lm/b0;

    iget-object p0, p0, Lm/b0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->b:Lm/o;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lm/o;->a:Lf1/e;

    return-object p0

    :cond_2
    iget-object v0, p0, Lm/z;->D:Lm/b0;

    iget-object v0, v0, Lm/b0;->a:Lm/j0;

    iget-object v0, v0, Lm/j0;->b:Lm/o;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lm/o;->a:Lf1/e;

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    iget-object p0, p0, Lm/z;->C:Lm/a0;

    iget-object p0, p0, Lm/a0;->a:Lm/j0;

    iget-object p0, p0, Lm/j0;->b:Lm/o;

    if-eqz p0, :cond_5

    iget-object p0, p0, Lm/o;->a:Lf1/e;

    return-object p0

    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method public final b(Lc2/t0;Lc2/q0;J)Lc2/s0;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lm/z;->z:Ln/h1;

    invoke-virtual {v2}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v0, Lm/z;->z:Ln/h1;

    iget-object v3, v3, Ln/h1;->d:Lr0/e1;

    invoke-virtual {v3}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    iput-object v4, v0, Lm/z;->H:Lf1/e;

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lm/z;->H:Lf1/e;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Lm/z;->M0()Lf1/e;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lf1/c;->l:Lf1/j;

    :cond_1
    iput-object v2, v0, Lm/z;->H:Lf1/e;

    :cond_2
    :goto_0
    invoke-interface {v1}, Lc2/p;->T()Z

    move-result v2

    sget-object v3, Lu8/s;->l:Lu8/s;

    const-wide v5, 0xffffffffL

    const/16 v7, 0x20

    if-eqz v2, :cond_3

    invoke-interface/range {p2 .. p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v2

    iget v4, v2, Lc2/f1;->l:I

    iget v8, v2, Lc2/f1;->m:I

    int-to-long v9, v4

    shl-long/2addr v9, v7

    int-to-long v11, v8

    and-long/2addr v11, v5

    or-long v8, v9, v11

    iput-wide v8, v0, Lm/z;->G:J

    shr-long v10, v8, v7

    long-to-int v0, v10

    and-long v4, v8, v5

    long-to-int v4, v4

    new-instance v5, Lc2/i1;

    const/4 v6, 0x5

    invoke-direct {v5, v2, v6}, Lc2/i1;-><init>(Lc2/f1;I)V

    invoke-interface {v1, v0, v4, v3, v5}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v2, v0, Lm/z;->E:Li9/a;

    invoke-interface {v2}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v0, Lm/z;->F:Lm/r;

    iget-object v8, v2, Lm/r;->a:Ln/b1;

    iget-object v9, v2, Lm/r;->b:Ln/b1;

    iget-object v10, v2, Lm/r;->c:Ln/h1;

    iget-object v11, v2, Lm/r;->d:Lm/a0;

    iget-object v12, v11, Lm/a0;->a:Lm/j0;

    iget-object v13, v2, Lm/r;->e:Lm/b0;

    iget-object v2, v2, Lm/r;->f:Ln/b1;

    if-eqz v8, :cond_4

    new-instance v14, Lm/s;

    const/4 v15, 0x0

    invoke-direct {v14, v11, v13, v15}, Lm/s;-><init>(Lm/a0;Lm/b0;I)V

    new-instance v15, Lm/s;

    const/4 v4, 0x1

    invoke-direct {v15, v11, v13, v4}, Lm/s;-><init>(Lm/a0;Lm/b0;I)V

    invoke-virtual {v8, v14, v15}, Ln/b1;->a(Li9/c;Li9/c;)Ln/a1;

    move-result-object v4

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    :goto_1
    if-eqz v9, :cond_5

    new-instance v8, Lm/s;

    const/4 v14, 0x2

    invoke-direct {v8, v11, v13, v14}, Lm/s;-><init>(Lm/a0;Lm/b0;I)V

    new-instance v14, Lm/s;

    const/4 v15, 0x3

    invoke-direct {v14, v11, v13, v15}, Lm/s;-><init>(Lm/a0;Lm/b0;I)V

    invoke-virtual {v9, v8, v14}, Ln/b1;->a(Li9/c;Li9/c;)Ln/a1;

    move-result-object v8

    goto :goto_2

    :cond_5
    const/4 v8, 0x0

    :goto_2
    invoke-virtual {v10}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Lm/p;->l:Lm/p;

    if-ne v9, v10, :cond_8

    iget-object v9, v12, Lm/j0;->c:Lm/g0;

    if-eqz v9, :cond_6

    iget-wide v9, v9, Lm/g0;->a:J

    new-instance v12, Lm1/k0;

    invoke-direct {v12, v9, v10}, Lm1/k0;-><init>(J)V

    goto :goto_3

    :cond_6
    iget-object v9, v13, Lm/b0;->a:Lm/j0;

    iget-object v9, v9, Lm/j0;->c:Lm/g0;

    if-eqz v9, :cond_7

    iget-wide v9, v9, Lm/g0;->a:J

    new-instance v12, Lm1/k0;

    invoke-direct {v12, v9, v10}, Lm1/k0;-><init>(J)V

    goto :goto_3

    :cond_7
    const/4 v12, 0x0

    goto :goto_3

    :cond_8
    iget-object v9, v13, Lm/b0;->a:Lm/j0;

    iget-object v9, v9, Lm/j0;->c:Lm/g0;

    if-eqz v9, :cond_9

    iget-wide v9, v9, Lm/g0;->a:J

    new-instance v12, Lm1/k0;

    invoke-direct {v12, v9, v10}, Lm1/k0;-><init>(J)V

    goto :goto_3

    :cond_9
    iget-object v9, v12, Lm/j0;->c:Lm/g0;

    if-eqz v9, :cond_7

    iget-wide v9, v9, Lm/g0;->a:J

    new-instance v12, Lm1/k0;

    invoke-direct {v12, v9, v10}, Lm1/k0;-><init>(J)V

    :goto_3
    if-eqz v2, :cond_a

    sget-object v9, Lm/g;->q:Lm/g;

    new-instance v10, Le2/i0;

    const/4 v14, 0x5

    invoke-direct {v10, v12, v11, v13, v14}, Le2/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v9, v10}, Ln/b1;->a(Li9/c;Li9/c;)Ln/a1;

    move-result-object v2

    goto :goto_4

    :cond_a
    const/4 v2, 0x0

    :goto_4
    new-instance v15, Le2/i0;

    const/4 v9, 0x4

    invoke-direct {v15, v4, v8, v2, v9}, Le2/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface/range {p2 .. p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v10

    iget v2, v10, Lc2/f1;->l:I

    iget v4, v10, Lc2/f1;->m:I

    int-to-long v8, v2

    shl-long/2addr v8, v7

    int-to-long v11, v4

    and-long/2addr v11, v5

    or-long/2addr v8, v11

    iget-wide v11, v0, Lm/z;->G:J

    sget-wide v13, Lm/n;->a:J

    invoke-static {v11, v12, v13, v14}, Lb3/l;->a(JJ)Z

    move-result v2

    if-nez v2, :cond_b

    iget-wide v11, v0, Lm/z;->G:J

    goto :goto_5

    :cond_b
    move-wide v11, v8

    :goto_5
    iget-object v2, v0, Lm/z;->A:Ln/b1;

    if-eqz v2, :cond_c

    new-instance v4, Lm/x;

    const/4 v13, 0x0

    invoke-direct {v4, v0, v11, v12, v13}, Lm/x;-><init>(Lm/z;JI)V

    iget-object v13, v0, Lm/z;->I:Lm/y;

    invoke-virtual {v2, v13, v4}, Ln/b1;->a(Li9/c;Li9/c;)Ln/a1;

    move-result-object v4

    goto :goto_6

    :cond_c
    const/4 v4, 0x0

    :goto_6
    if-eqz v4, :cond_d

    invoke-virtual {v4}, Ln/a1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/l;

    iget-wide v8, v2, Lb3/l;->a:J

    :cond_d
    move-wide/from16 v13, p3

    invoke-static {v13, v14, v8, v9}, Lb3/b;->d(JJ)J

    move-result-wide v19

    iget-object v2, v0, Lm/z;->B:Ln/b1;

    const-wide/16 v8, 0x0

    if-eqz v2, :cond_e

    sget-object v4, Lm/g;->r:Lm/g;

    new-instance v13, Lm/x;

    const/4 v14, 0x1

    invoke-direct {v13, v0, v11, v12, v14}, Lm/x;-><init>(Lm/z;JI)V

    invoke-virtual {v2, v4, v13}, Ln/b1;->a(Li9/c;Li9/c;)Ln/a1;

    move-result-object v2

    invoke-virtual {v2}, Ln/a1;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb3/j;

    iget-wide v13, v2, Lb3/j;->a:J

    goto :goto_7

    :cond_e
    move-wide v13, v8

    :goto_7
    iget-object v0, v0, Lm/z;->H:Lf1/e;

    if-eqz v0, :cond_f

    sget-object v21, Lb3/m;->l:Lb3/m;

    move-object/from16 v16, v0

    move-wide/from16 v17, v11

    invoke-interface/range {v16 .. v21}, Lf1/e;->a(JJLb3/m;)J

    move-result-wide v11

    goto :goto_8

    :cond_f
    move-wide v11, v8

    :goto_8
    invoke-static {v11, v12, v8, v9}, Lb3/j;->c(JJ)J

    move-result-wide v11

    shr-long v7, v19, v7

    long-to-int v0, v7

    and-long v4, v19, v5

    long-to-int v2, v4

    new-instance v9, Lm/w;

    invoke-direct/range {v9 .. v15}, Lm/w;-><init>(Lc2/f1;JJLe2/i0;)V

    invoke-interface {v1, v0, v2, v3, v9}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0

    :cond_10
    move-wide/from16 v13, p3

    invoke-interface/range {p2 .. p4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v0

    iget v2, v0, Lc2/f1;->l:I

    iget v4, v0, Lc2/f1;->m:I

    new-instance v5, Lc2/i1;

    const/4 v6, 0x6

    invoke-direct {v5, v0, v6}, Lc2/i1;-><init>(Lc2/f1;I)V

    invoke-interface {v1, v2, v4, v3, v5}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0
.end method

.method public final b0(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->c(I)I

    move-result p0

    return p0
.end method

.method public final o(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->z(I)I

    move-result p0

    return p0
.end method

.method public final x0(Le2/p0;Lc2/q0;I)I
    .locals 0

    invoke-interface {p2, p3}, Lc2/q0;->u(I)I

    move-result p0

    return p0
.end method
