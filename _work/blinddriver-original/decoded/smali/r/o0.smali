.class public abstract Lr/o0;
.super Le2/k;
.source "SourceFile"

# interfaces
.implements Le2/v1;
.implements Lv1/c;
.implements Le2/i;


# instance fields
.field public B:Lr/m1;

.field public C:Li9/c;

.field public D:Z

.field public E:Ls/i;

.field public F:Lw9/e;

.field public G:Ls/b;

.field public H:Z

.field public I:Z

.field public J:Lr/o;

.field public K:Lr/r;

.field public L:Lr/q;

.field public M:Lr/p;

.field public N:Lwa/h;

.field public O:Lq3/k;

.field public P:J

.field public Q:Lr/y2;

.field public R:Lr/a1;

.field public S:J


# direct methods
.method public constructor <init>(Li9/c;ZLs/i;Lr/m1;)V
    .locals 0

    invoke-direct {p0}, Le2/k;-><init>()V

    iput-object p4, p0, Lr/o0;->B:Lr/m1;

    iput-object p1, p0, Lr/o0;->C:Li9/c;

    iput-boolean p2, p0, Lr/o0;->D:Z

    iput-object p3, p0, Lr/o0;->E:Ls/i;

    const-wide p1, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide p1, p0, Lr/o0;->P:J

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lr/o0;->S:J

    return-void
.end method

.method public static final P0(Lr/o0;La9/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lr/k0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lr/k0;

    iget v1, v0, Lr/k0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/k0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/k0;

    invoke-direct {v0, p0, p1}, Lr/k0;-><init>(Lr/o0;La9/c;)V

    :goto_0
    iget-object p1, v0, Lr/k0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/k0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/o0;->G:Ls/b;

    if-eqz p1, :cond_4

    iget-object v2, p0, Lr/o0;->E:Ls/i;

    if-eqz v2, :cond_3

    new-instance v4, Ls/a;

    invoke-direct {v4, p1}, Ls/a;-><init>(Ls/b;)V

    iput v3, v0, Lr/k0;->n:I

    invoke-virtual {v2, v4, v0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    iput-object p1, p0, Lr/o0;->G:Ls/b;

    :cond_4
    new-instance p1, Lr/v;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v2, v0, v1}, Lr/v;-><init>(ZJ)V

    invoke-virtual {p0, p1}, Lr/o0;->Z0(Lr/v;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final Q0(Lr/o0;Lr/u;La9/c;)Ljava/lang/Object;
    .locals 6

    instance-of v0, p2, Lr/l0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr/l0;

    iget v1, v0, Lr/l0;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/l0;->p:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/l0;

    invoke-direct {v0, p0, p2}, Lr/l0;-><init>(Lr/o0;La9/c;)V

    :goto_0
    iget-object p2, v0, Lr/l0;->n:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/l0;->p:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lr/l0;->m:Ls/b;

    iget-object v0, v0, Lr/l0;->l:Lr/u;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p1, v0, Lr/l0;->l:Lr/u;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lr/o0;->G:Ls/b;

    if-eqz p2, :cond_4

    iget-object v2, p0, Lr/o0;->E:Ls/i;

    if-eqz v2, :cond_4

    new-instance v5, Ls/a;

    invoke-direct {v5, p2}, Ls/a;-><init>(Ls/b;)V

    iput-object p1, v0, Lr/l0;->l:Lr/u;

    iput v4, v0, Lr/l0;->p:I

    invoke-virtual {v2, v5, v0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    new-instance p2, Ls/b;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iget-object v2, p0, Lr/o0;->E:Ls/i;

    if-eqz v2, :cond_6

    iput-object p1, v0, Lr/l0;->l:Lr/u;

    iput-object p2, v0, Lr/l0;->m:Ls/b;

    iput v3, v0, Lr/l0;->p:I

    invoke-virtual {v2, p2, v0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    :goto_2
    return-object v1

    :cond_5
    move-object v0, p1

    move-object p1, p2

    :goto_3
    move-object p2, p1

    move-object p1, v0

    :cond_6
    iput-object p2, p0, Lr/o0;->G:Ls/b;

    iget-wide p1, p1, Lr/u;->a:J

    invoke-virtual {p0, p1, p2}, Lr/o0;->Y0(J)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static final R0(Lr/o0;Lr/v;La9/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lr/m0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lr/m0;

    iget v1, v0, Lr/m0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lr/m0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lr/m0;

    invoke-direct {v0, p0, p2}, Lr/m0;-><init>(Lr/o0;La9/c;)V

    :goto_0
    iget-object p2, v0, Lr/m0;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lr/m0;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lr/m0;->l:Lr/v;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lr/o0;->G:Ls/b;

    if-eqz p2, :cond_4

    iget-object v2, p0, Lr/o0;->E:Ls/i;

    if-eqz v2, :cond_3

    new-instance v4, Ls/c;

    invoke-direct {v4, p2}, Ls/c;-><init>(Ls/b;)V

    iput-object p1, v0, Lr/m0;->l:Lr/v;

    iput v3, v0, Lr/m0;->o:I

    invoke-virtual {v2, v4, v0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const/4 p2, 0x0

    iput-object p2, p0, Lr/o0;->G:Ls/b;

    :cond_4
    invoke-virtual {p0, p1}, Lr/o0;->Z0(Lr/v;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public static W0(Lr/o0;Ly1/u;JJI)V
    .locals 3

    and-int/lit8 p6, p6, 0x4

    if-eqz p6, :cond_0

    const-wide/16 p4, 0x0

    :cond_0
    iget-object p6, p0, Lr/o0;->L:Lr/q;

    const/4 v0, 0x0

    if-nez p6, :cond_1

    new-instance p6, Lr/q;

    invoke-direct {p6}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p6, Lr/q;->a:Ly1/u;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, p6, Lr/q;->b:J

    iput-boolean v0, p6, Lr/q;->c:Z

    iput-object p6, p0, Lr/o0;->L:Lr/q;

    :cond_1
    iput-object p1, p6, Lr/q;->a:Ly1/u;

    iput-wide p2, p6, Lr/q;->b:J

    iget-object p1, p0, Lr/o0;->Q:Lr/y2;

    if-nez p1, :cond_2

    new-instance p1, Lr/y2;

    iget-object p2, p0, Lr/o0;->B:Lr/m1;

    const/4 p3, 0x2

    invoke-direct {p1, p2, p3}, Lr/y2;-><init>(Lr/m1;I)V

    iput-object p1, p0, Lr/o0;->Q:Lr/y2;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lr/o0;->B:Lr/m1;

    iput-object p2, p1, Lr/y2;->b:Ljava/lang/Object;

    iput-wide p4, p1, Lr/y2;->a:J

    :goto_0
    iput-boolean v0, p6, Lr/q;->c:Z

    iput-object p6, p0, Lr/o0;->N:Lwa/h;

    return-void
.end method


# virtual methods
.method public final E(Ld1/c0;Ly1/m;)V
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v1, Ld1/c0;->b:I

    iget-object v1, v1, Ld1/c0;->c:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    iget-boolean v4, v0, Lr/o0;->D:Z

    if-eqz v4, :cond_3c

    iget-object v4, v0, Lr/o0;->R:Lr/a1;

    if-nez v4, :cond_0

    new-instance v4, Lr/a1;

    invoke-direct {v4, v0}, Lr/a1;-><init>(Lr/o0;)V

    iput-object v4, v0, Lr/o0;->R:Lr/a1;

    :cond_0
    iget-object v5, v0, Lr/o0;->R:Lr/a1;

    if-eqz v5, :cond_3c

    iget-object v0, v5, Lr/a1;->a:Lr/o0;

    iget-object v4, v5, Lr/a1;->f:La/a;

    const/16 v11, 0xd

    const/4 v12, 0x0

    if-nez v4, :cond_2

    iget-object v4, v5, Lr/a1;->b:Lr/v0;

    if-nez v4, :cond_1

    new-instance v4, Lr/v0;

    sget-object v6, Lr/u0;->n:Lr/u0;

    invoke-direct {v4, v11}, La/a;-><init>(I)V

    iput-object v6, v4, Lr/v0;->f:Lr/u0;

    iput-boolean v12, v4, Lr/v0;->g:Z

    iput-object v4, v5, Lr/a1;->b:Lr/v0;

    :cond_1
    iput-object v4, v5, Lr/a1;->f:La/a;

    :cond_2
    iget-object v4, v5, Lr/a1;->f:La/a;

    if-eqz v4, :cond_3b

    instance-of v6, v4, Lr/v0;

    const-wide v13, 0x7fffffffffffffffL

    const/4 v7, 0x1

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_b

    check-cast v4, Lr/v0;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_16

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    :goto_0
    if-ge v12, v6, :cond_5

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lv1/b;

    iget-boolean v15, v10, Lv1/b;->h:Z

    if-nez v15, :cond_4

    iget-boolean v10, v10, Lv1/b;->d:Z

    if-eqz v10, :cond_4

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    invoke-static {v1}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lv1/b;

    iget-object v1, v4, Lr/v0;->f:Lr/u0;

    sget-object v10, Lr/z0;->a:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v10, v1

    if-ne v1, v7, :cond_7

    invoke-virtual {v0}, Lr/o0;->e1()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lr/u0;->l:Lr/u0;

    goto :goto_1

    :cond_6
    sget-object v0, Lr/u0;->m:Lr/u0;

    goto :goto_1

    :cond_7
    iget-object v0, v4, Lr/v0;->f:Lr/u0;

    :goto_1
    iput-object v0, v4, Lr/v0;->f:Lr/u0;

    sget-object v1, Ly1/m;->l:Ly1/m;

    if-ne v2, v1, :cond_8

    sget-object v1, Lr/u0;->m:Lr/u0;

    if-ne v0, v1, :cond_8

    iput-boolean v7, v6, Lv1/b;->i:Z

    iput-boolean v7, v4, Lr/v0;->g:Z

    :cond_8
    sget-object v1, Ly1/m;->m:Ly1/m;

    if-ne v2, v1, :cond_3c

    sget-object v1, Lr/u0;->l:Lr/u0;

    if-ne v0, v1, :cond_9

    iget-wide v7, v6, Lv1/b;->a:J

    const-wide/16 v9, 0x0

    const/16 v11, 0xc

    invoke-static/range {v5 .. v11}, Lr/a1;->c(Lr/a1;Lv1/b;JJI)V

    return-void

    :cond_9
    iget-boolean v0, v4, Lr/v0;->g:Z

    if-eqz v0, :cond_3c

    move-wide v0, v8

    new-instance v8, Lv1/a;

    invoke-direct {v8, v3}, Lv1/a;-><init>(I)V

    const-wide/16 v9, 0x0

    move-object v7, v6

    invoke-virtual/range {v5 .. v10}, Lr/a1;->f(Lv1/b;Lv1/b;Lv1/a;J)V

    new-instance v2, Lv1/a;

    invoke-direct {v2, v3}, Lv1/a;-><init>(I)V

    invoke-virtual {v5, v6, v2, v0, v1}, Lr/a1;->e(Lv1/b;Lv1/a;J)V

    iget-wide v0, v6, Lv1/b;->a:J

    iget-object v2, v5, Lr/a1;->c:Lr/y0;

    if-nez v2, :cond_a

    new-instance v2, Lr/y0;

    invoke-direct {v2, v11}, La/a;-><init>(I)V

    iput-wide v13, v2, Lr/y0;->f:J

    iput-object v2, v5, Lr/a1;->c:Lr/y0;

    :cond_a
    iput-wide v0, v2, Lr/y0;->f:J

    iput-object v2, v5, Lr/a1;->f:La/a;

    return-void

    :cond_b
    instance-of v6, v4, Lr/x0;

    const/4 v15, 0x0

    if-eqz v6, :cond_25

    check-cast v4, Lr/x0;

    sget-object v6, Ly1/m;->l:Ly1/m;

    if-ne v2, v6, :cond_c

    goto/16 :goto_16

    :cond_c
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v8, v12

    :goto_2
    if-ge v8, v6, :cond_e

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    const/16 p0, 0x0

    move-object v10, v9

    check-cast v10, Lv1/b;

    iget-wide v12, v10, Lv1/b;->a:J

    move v14, v8

    iget-wide v7, v4, Lr/x0;->g:J

    invoke-static {v12, v13, v7, v8}, Ly1/t;->e(JJ)Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_3

    :cond_d
    add-int/lit8 v8, v14, 0x1

    const/4 v7, 0x1

    const/4 v12, 0x0

    const-wide v13, 0x7fffffffffffffffL

    goto :goto_2

    :cond_e
    const/16 p0, 0x0

    move-object v9, v15

    :goto_3
    check-cast v9, Lv1/b;

    if-nez v9, :cond_12

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v6, :cond_10

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lv1/b;

    iget-boolean v9, v9, Lv1/b;->d:Z

    if-eqz v9, :cond_f

    goto :goto_5

    :cond_f
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_10
    move-object v8, v15

    :goto_5
    move-object v9, v8

    check-cast v9, Lv1/b;

    if-nez v9, :cond_11

    invoke-virtual {v5}, Lr/a1;->a()V

    return-void

    :cond_11
    iget-wide v6, v9, Lv1/b;->a:J

    iput-wide v6, v4, Lr/x0;->g:J

    :cond_12
    move-object v7, v9

    sget-object v6, Ly1/m;->m:Ly1/m;

    const-string v12, "AwaitTouchSlop.touchSlopDetector was not initialized"

    const-string v13, "AwaitTouchSlop.initialDown was not initialized"

    if-ne v2, v6, :cond_21

    iget-boolean v6, v7, Lv1/b;->i:Z

    if-nez v6, :cond_1e

    invoke-static {v7}, Lb6/g;->j(Lv1/b;)Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x0

    :goto_6
    if-ge v3, v0, :cond_14

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v8, v6

    check-cast v8, Lv1/b;

    iget-boolean v8, v8, Lv1/b;->d:Z

    if-eqz v8, :cond_13

    move-object v15, v6

    goto :goto_7

    :cond_13
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_14
    :goto_7
    check-cast v15, Lv1/b;

    if-nez v15, :cond_15

    invoke-virtual {v5}, Lr/a1;->a()V

    goto/16 :goto_b

    :cond_15
    iget-wide v0, v15, Lv1/b;->a:J

    iput-wide v0, v4, Lr/x0;->g:J

    goto/16 :goto_b

    :cond_16
    sget-object v1, Lf2/l1;->s:Lr0/s2;

    invoke-static {v0, v1}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf2/p2;

    sget v6, Lr/i0;->a:F

    invoke-interface {v1}, Lf2/p2;->f()F

    move-result v23

    iget-object v1, v5, Lr/a1;->i:Lr/y2;

    if-eqz v1, :cond_1d

    iget-object v6, v0, Lr/o0;->B:Lr/m1;

    new-instance v8, Lv1/a;

    invoke-direct {v8, v3}, Lv1/a;-><init>(I)V

    invoke-static {v7, v6, v8}, Lb6/g;->D(Lv1/b;Lr/m1;Lv1/a;)J

    move-result-wide v19

    iget-object v0, v0, Lr/o0;->B:Lr/m1;

    iget-wide v8, v7, Lv1/b;->g:J

    if-nez v0, :cond_18

    :cond_17
    :goto_8
    move-object/from16 v18, v1

    move-wide/from16 v21, v8

    goto :goto_a

    :cond_18
    const-wide v14, 0xffffffffL

    const/16 v6, 0x20

    const/4 v10, 0x1

    if-ne v3, v10, :cond_19

    shr-long/2addr v8, v6

    long-to-int v8, v8

    invoke-static {v8}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    move/from16 v18, v6

    goto :goto_9

    :cond_19
    move/from16 v18, v6

    const/4 v6, 0x2

    if-ne v3, v6, :cond_17

    and-long/2addr v8, v14

    long-to-int v6, v8

    invoke-static {v6}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    :goto_9
    sget-object v6, Lr/m1;->m:Lr/m1;

    if-ne v0, v6, :cond_1a

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    move-wide/from16 v21, v14

    int-to-long v14, v0

    shl-long v8, v8, v18

    and-long v14, v14, v21

    or-long/2addr v8, v14

    goto :goto_8

    :cond_1a
    move-wide/from16 v21, v14

    invoke-static/range {p0 .. p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v14, v0

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v8, v0

    shl-long v14, v14, v18

    and-long v8, v8, v21

    or-long/2addr v8, v14

    goto :goto_8

    :goto_a
    invoke-virtual/range {v18 .. v23}, Lr/y2;->a(JJF)J

    move-result-wide v0

    const-wide v8, 0x7fffffff7fffffffL

    and-long/2addr v8, v0

    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v6, v8, v14

    if-eqz v6, :cond_1c

    const/4 v10, 0x1

    iput-boolean v10, v7, Lv1/b;->i:Z

    iget-object v6, v4, Lr/x0;->f:Lv1/b;

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    new-instance v8, Lv1/a;

    invoke-direct {v8, v3}, Lv1/a;-><init>(I)V

    move-wide v9, v0

    invoke-virtual/range {v5 .. v10}, Lr/a1;->f(Lv1/b;Lv1/b;Lv1/a;J)V

    new-instance v0, Lv1/a;

    invoke-direct {v0, v3}, Lv1/a;-><init>(I)V

    invoke-virtual {v5, v7, v0, v9, v10}, Lr/a1;->e(Lv1/b;Lv1/a;J)V

    iget-wide v0, v7, Lv1/b;->a:J

    iget-object v3, v5, Lr/a1;->c:Lr/y0;

    if-nez v3, :cond_1b

    new-instance v3, Lr/y0;

    invoke-direct {v3, v11}, La/a;-><init>(I)V

    const-wide v8, 0x7fffffffffffffffL

    iput-wide v8, v3, Lr/y0;->f:J

    iput-object v3, v5, Lr/a1;->c:Lr/y0;

    :cond_1b
    iput-wide v0, v3, Lr/y0;->f:J

    iput-object v3, v5, Lr/a1;->f:La/a;

    goto :goto_b

    :cond_1c
    const/4 v10, 0x1

    iput-boolean v10, v4, Lr/x0;->h:Z

    goto :goto_b

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touch slop detector not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    iget-object v0, v4, Lr/x0;->f:Lv1/b;

    if-eqz v0, :cond_20

    iget-wide v8, v4, Lr/x0;->g:J

    iget-object v1, v5, Lr/a1;->i:Lr/y2;

    if-eqz v1, :cond_1f

    invoke-virtual {v5, v0, v8, v9, v1}, Lr/a1;->b(Lv1/b;JLr/y2;)V

    goto :goto_b

    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_b
    sget-object v0, Ly1/m;->n:Ly1/m;

    if-ne v2, v0, :cond_3c

    iget-boolean v0, v4, Lr/x0;->h:Z

    if-eqz v0, :cond_3c

    iget-boolean v0, v7, Lv1/b;->i:Z

    if-eqz v0, :cond_24

    iget-object v0, v4, Lr/x0;->f:Lv1/b;

    if-eqz v0, :cond_23

    iget-wide v1, v4, Lr/x0;->g:J

    iget-object v3, v5, Lr/a1;->i:Lr/y2;

    if-eqz v3, :cond_22

    invoke-virtual {v5, v0, v1, v2, v3}, Lr/a1;->b(Lv1/b;JLr/y2;)V

    return-void

    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_23
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    const/4 v0, 0x0

    iput-boolean v0, v4, Lr/x0;->h:Z

    return-void

    :cond_25
    const/16 p0, 0x0

    instance-of v6, v4, Lr/w0;

    if-eqz v6, :cond_2d

    check-cast v4, Lr/w0;

    sget-object v6, Ly1/m;->n:Ly1/m;

    if-eq v2, v6, :cond_26

    goto/16 :goto_16

    :cond_26
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v6, 0x0

    :goto_c
    if-ge v6, v2, :cond_28

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lv1/b;

    iget-boolean v7, v7, Lv1/b;->i:Z

    if-eqz v7, :cond_27

    const/4 v7, 0x0

    goto :goto_d

    :cond_27
    add-int/lit8 v6, v6, 0x1

    goto :goto_c

    :cond_28
    const/4 v7, 0x1

    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v12, 0x0

    :goto_e
    if-ge v12, v2, :cond_2c

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lv1/b;

    iget-boolean v6, v6, Lv1/b;->d:Z

    if-eqz v6, :cond_2b

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_29

    goto :goto_f

    :cond_29
    if-eqz v7, :cond_3c

    invoke-static {v1}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv1/b;

    iget-object v2, v0, Lr/o0;->B:Lr/m1;

    new-instance v6, Lv1/a;

    invoke-direct {v6, v3}, Lv1/a;-><init>(I)V

    invoke-static {v1, v2, v6}, Lb6/g;->D(Lv1/b;Lr/m1;Lv1/a;)J

    move-result-wide v1

    iget-object v6, v4, Lr/w0;->f:Lv1/b;

    invoke-static {v6}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-object v0, v0, Lr/o0;->B:Lr/m1;

    new-instance v7, Lv1/a;

    invoke-direct {v7, v3}, Lv1/a;-><init>(I)V

    invoke-static {v6, v0, v7}, Lb6/g;->D(Lv1/b;Lr/m1;Lv1/a;)J

    move-result-wide v6

    invoke-static {v1, v2, v6, v7}, Ll1/b;->d(JJ)J

    move-result-wide v9

    iget-object v6, v4, Lr/w0;->f:Lv1/b;

    if-eqz v6, :cond_2a

    iget-wide v7, v4, Lr/w0;->g:J

    const/16 v11, 0x8

    invoke-static/range {v5 .. v11}, Lr/a1;->c(Lr/a1;Lv1/b;JJI)V

    return-void

    :cond_2a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AwaitGesturePickup.initialDown was not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    add-int/lit8 v12, v12, 0x1

    goto :goto_e

    :cond_2c
    :goto_f
    invoke-virtual {v5}, Lr/a1;->a()V

    return-void

    :cond_2d
    instance-of v6, v4, Lr/y0;

    if-eqz v6, :cond_3a

    check-cast v4, Lr/y0;

    sget-object v6, Ly1/m;->m:Ly1/m;

    if-eq v2, v6, :cond_2e

    goto/16 :goto_16

    :cond_2e
    iget-wide v6, v4, Lr/y0;->f:J

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v11, 0x0

    :goto_10
    if-ge v11, v2, :cond_30

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Lv1/b;

    iget-wide v13, v13, Lv1/b;->a:J

    invoke-static {v13, v14, v6, v7}, Ly1/t;->e(JJ)Z

    move-result v13

    if-eqz v13, :cond_2f

    goto :goto_11

    :cond_2f
    add-int/lit8 v11, v11, 0x1

    goto :goto_10

    :cond_30
    move-object v12, v15

    :goto_11
    check-cast v12, Lv1/b;

    if-nez v12, :cond_31

    goto/16 :goto_16

    :cond_31
    invoke-static {v12}, Lb6/g;->j(Lv1/b;)Z

    move-result v2

    sget-object v6, Lr/s;->a:Lr/s;

    if-eqz v2, :cond_36

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v2, :cond_33

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    move-object v13, v11

    check-cast v13, Lv1/b;

    iget-boolean v13, v13, Lv1/b;->d:Z

    if-eqz v13, :cond_32

    goto :goto_13

    :cond_32
    add-int/lit8 v7, v7, 0x1

    goto :goto_12

    :cond_33
    move-object v11, v15

    :goto_13
    check-cast v11, Lv1/b;

    if-nez v11, :cond_35

    iget-boolean v1, v12, Lv1/b;->i:Z

    if-nez v1, :cond_34

    invoke-static {v12}, Lb6/g;->j(Lv1/b;)Z

    move-result v1

    if-eqz v1, :cond_34

    new-instance v1, Lv1/a;

    invoke-direct {v1, v3}, Lv1/a;-><init>(I)V

    invoke-virtual {v5}, Lr/a1;->d()Lq3/k;

    move-result-object v16

    iget-object v2, v0, Lr/o0;->B:Lr/m1;

    iget-object v3, v5, Lr/a1;->j:Lpa/x;

    iget-wide v6, v5, Lr/a1;->l:J

    move-object/from16 v19, v1

    move-object/from16 v18, v2

    move-object/from16 v20, v3

    move-wide/from16 v21, v6

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v22}, Lb6/g;->i(Lq3/k;Lv1/b;Lr/m1;Lv1/a;Lpa/x;J)V

    sget-object v1, Lf2/l1;->s:Lr0/s2;

    invoke-static {v0, v1}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf2/p2;

    invoke-interface {v1}, Lf2/p2;->e()F

    move-result v1

    invoke-virtual {v5}, Lr/a1;->d()Lq3/k;

    move-result-object v2

    invoke-static {v1, v1}, Lb6/g;->e(FF)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lq3/k;->b(J)J

    move-result-wide v1

    invoke-virtual {v5}, Lr/a1;->d()Lq3/k;

    move-result-object v3

    iget-object v3, v3, Lq3/k;->m:Ljava/lang/Object;

    check-cast v3, Lz1/b;

    iget-object v4, v3, Lz1/b;->a:Lz1/d;

    iget-object v6, v4, Lz1/d;->d:[Lz1/a;

    invoke-static {v6, v15}, Lu8/l;->r0([Ljava/lang/Object;Lmb/s2;)V

    const/4 v6, 0x0

    iput v6, v4, Lz1/d;->e:I

    iget-object v4, v3, Lz1/b;->b:Lz1/d;

    iget-object v7, v4, Lz1/d;->d:[Lz1/a;

    invoke-static {v7, v15}, Lu8/l;->r0([Ljava/lang/Object;Lmb/s2;)V

    iput v6, v4, Lz1/d;->e:I

    iput-wide v8, v3, Lz1/b;->c:J

    new-instance v3, Lr/v;

    invoke-static {v1, v2}, Lr/r0;->a(J)J

    move-result-wide v1

    const/4 v10, 0x1

    invoke-direct {v3, v10, v1, v2}, Lr/v;-><init>(ZJ)V

    invoke-virtual {v0, v3}, Lr/o0;->X0(Lr/w;)V

    goto :goto_14

    :cond_34
    invoke-virtual {v0, v6}, Lr/o0;->X0(Lr/w;)V

    :goto_14
    invoke-virtual {v5}, Lr/a1;->a()V

    return-void

    :cond_35
    iget-wide v0, v11, Lv1/b;->a:J

    iput-wide v0, v4, Lr/y0;->f:J

    return-void

    :cond_36
    iget-boolean v1, v12, Lv1/b;->i:Z

    if-eqz v1, :cond_37

    invoke-virtual {v0, v6}, Lr/o0;->X0(Lr/w;)V

    return-void

    :cond_37
    iget-object v1, v0, Lr/o0;->B:Lr/m1;

    new-instance v2, Lv1/a;

    invoke-direct {v2, v3}, Lv1/a;-><init>(I)V

    invoke-static {v12, v1, v2}, Lb6/g;->E(Lv1/b;Lr/m1;Lv1/a;)J

    move-result-wide v6

    invoke-static {v12, v1, v2}, Lb6/g;->D(Lv1/b;Lr/m1;Lv1/a;)J

    move-result-wide v1

    invoke-static {v1, v2, v6, v7}, Ll1/b;->d(JJ)J

    move-result-wide v1

    invoke-static {v1, v2}, Ll1/b;->c(J)F

    move-result v1

    cmpg-float v1, v1, p0

    if-nez v1, :cond_38

    goto :goto_16

    :cond_38
    iget-object v0, v0, Lr/o0;->B:Lr/m1;

    new-instance v1, Lv1/a;

    invoke-direct {v1, v3}, Lv1/a;-><init>(I)V

    invoke-static {v12, v0, v1}, Lb6/g;->E(Lv1/b;Lr/m1;Lv1/a;)J

    move-result-wide v6

    invoke-static {v12, v0, v1}, Lb6/g;->D(Lv1/b;Lr/m1;Lv1/a;)J

    move-result-wide v0

    invoke-static {v0, v1, v6, v7}, Ll1/b;->d(JJ)J

    move-result-wide v0

    iget-boolean v2, v12, Lv1/b;->i:Z

    if-eqz v2, :cond_39

    goto :goto_15

    :cond_39
    move-wide v8, v0

    :goto_15
    new-instance v0, Lv1/a;

    invoke-direct {v0, v3}, Lv1/a;-><init>(I)V

    invoke-virtual {v5, v12, v0, v8, v9}, Lr/a1;->e(Lv1/b;Lv1/a;J)V

    const/4 v10, 0x1

    iput-boolean v10, v12, Lv1/b;->i:Z

    return-void

    :cond_3a
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "currentDragState should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    :goto_16
    return-void
.end method

.method public final F()V
    .locals 2

    iget-boolean v0, p0, Lr/o0;->I:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lr/o0;->U0()V

    iget-boolean v0, p0, Lr/o0;->H:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lr/o0;->a1()Lw9/i;

    move-result-object v0

    sget-object v1, Lr/s;->a:Lr/s;

    invoke-interface {v0, v1}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr/o0;->O:Lq3/k;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/o0;->I:Z

    return-void
.end method

.method public final F0()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lr/o0;->H:Z

    invoke-virtual {p0}, Lr/o0;->S0()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lr/o0;->S:J

    return-void
.end method

.method public final S0()V
    .locals 3

    iget-object v0, p0, Lr/o0;->G:Ls/b;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lr/o0;->E:Ls/i;

    if-eqz v1, :cond_0

    new-instance v2, Ls/a;

    invoke-direct {v2, v0}, Ls/a;-><init>(Ls/b;)V

    invoke-virtual {v1, v2}, Ls/i;->b(Ls/h;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr/o0;->G:Ls/b;

    :cond_1
    return-void
.end method

.method public abstract T0(Lr/n0;Lr/n0;)Ljava/lang/Object;
.end method

.method public final U0()V
    .locals 3

    iget-object v0, p0, Lr/o0;->J:Lr/o;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lr/o;

    sget-object v2, Lr/n;->n:Lr/n;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lr/o;->a:Lr/n;

    iput-boolean v1, v0, Lr/o;->b:Z

    iput-object v0, p0, Lr/o0;->J:Lr/o;

    :cond_0
    sget-object v2, Lr/n;->n:Lr/n;

    iput-object v2, v0, Lr/o;->a:Lr/n;

    iput-boolean v1, v0, Lr/o;->b:Z

    iput-object v0, p0, Lr/o0;->N:Lwa/h;

    return-void
.end method

.method public final V0(Ly1/u;JLr/y2;)V
    .locals 3

    iget-object v0, p0, Lr/o0;->M:Lr/p;

    if-nez v0, :cond_0

    new-instance v0, Lr/p;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, v0, Lr/p;->a:Ly1/u;

    const-wide v1, 0x7fffffffffffffffL

    iput-wide v1, v0, Lr/p;->b:J

    iput-object v0, p0, Lr/o0;->M:Lr/p;

    :cond_0
    iput-object p1, v0, Lr/p;->a:Ly1/u;

    iput-wide p2, v0, Lr/p;->b:J

    const-wide/16 p1, 0x0

    iput-wide p1, p4, Lr/y2;->a:J

    iput-object v0, p0, Lr/o0;->N:Lwa/h;

    return-void
.end method

.method public final W()V
    .locals 2

    iget-object p0, p0, Lr/o0;->R:Lr/a1;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lr/a1;->a()V

    iget-object v0, p0, Lr/a1;->a:Lr/o0;

    iget-boolean v1, v0, Lr/o0;->H:Z

    if-eqz v1, :cond_0

    sget-object v1, Lr/s;->a:Lr/s;

    invoke-virtual {v0, v1}, Lr/o0;->X0(Lr/w;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lr/a1;->g:Lq3/k;

    iget-object p0, p0, Lr/a1;->k:Lpa/x;

    const/4 v0, 0x0

    iput v0, p0, Lpa/x;->a:I

    iget-object p0, p0, Lpa/x;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method

.method public final X0(Lr/w;)V
    .locals 1

    instance-of v0, p1, Lr/u;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lr/o0;->H:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/o0;->H:Z

    invoke-virtual {p0}, Lr/o0;->f1()V

    :cond_0
    invoke-virtual {p0}, Lr/o0;->a1()Lw9/i;

    move-result-object p0

    invoke-interface {p0, p1}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public abstract Y0(J)V
.end method

.method public abstract Z0(Lr/v;)V
.end method

.method public final a1()Lw9/i;
    .locals 1

    iget-object p0, p0, Lr/o0;->F:Lw9/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Events channel not initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b1()Lq3/k;
    .locals 1

    iget-object p0, p0, Lr/o0;->O:Lq3/k;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Velocity Tracker not initialized."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final c1(Ly1/u;J)V
    .locals 6

    iget-object v0, p0, Lf1/q;->l:Lf1/q;

    invoke-static {v0}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Le2/h1;->A(J)J

    move-result-wide v0

    iget-wide v2, p0, Lr/o0;->P:J

    const-wide v4, 0x7fc000007fc00000L    # 2.247117487993712E307

    invoke-static {v2, v3, v4, v5}, Ll1/b;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lr/o0;->P:J

    invoke-static {v0, v1, v2, v3}, Ll1/b;->b(JJ)Z

    move-result v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lr/o0;->P:J

    invoke-static {v0, v1, v2, v3}, Ll1/b;->d(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lr/o0;->S:J

    invoke-static {v4, v5, v2, v3}, Ll1/b;->e(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lr/o0;->S:J

    :cond_0
    iput-wide v0, p0, Lr/o0;->P:J

    invoke-virtual {p0}, Lr/o0;->b1()Lq3/k;

    move-result-object v0

    iget-wide v1, p0, Lr/o0;->S:J

    invoke-static {v0, p1, v1, v2}, Lg5/f;->k(Lq3/k;Ly1/u;J)V

    invoke-virtual {p0}, Lr/o0;->a1()Lw9/i;

    move-result-object p0

    new-instance p1, Lr/t;

    const/4 v0, 0x0

    invoke-direct {p1, v0, p2, p3}, Lr/t;-><init>(ZJ)V

    invoke-interface {p0, p1}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final d1(Ly1/u;Ly1/u;J)V
    .locals 5

    iget-object v0, p0, Lr/o0;->O:Lq3/k;

    if-nez v0, :cond_0

    new-instance v0, Lq3/k;

    const/16 v1, 0x12

    invoke-direct {v0, v1}, Lq3/k;-><init>(I)V

    iput-object v0, p0, Lr/o0;->O:Lq3/k;

    :cond_0
    invoke-virtual {p0}, Lr/o0;->b1()Lq3/k;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Lg5/f;->k(Lq3/k;Ly1/u;J)V

    iget-wide v3, p2, Ly1/u;->c:J

    invoke-static {v3, v4, p3, p4}, Ll1/b;->d(JJ)J

    move-result-wide p2

    iput-wide v1, p0, Lr/o0;->S:J

    iget-object p4, p0, Lr/o0;->C:Li9/c;

    iget p1, p1, Ly1/u;->i:I

    new-instance v0, Ly1/c0;

    invoke-direct {v0, p1}, Ly1/c0;-><init>(I)V

    invoke-interface {p4, v0}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lr/o0;->H:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lr/o0;->F:Lw9/e;

    if-nez p1, :cond_1

    const p1, 0x7fffffff

    const/4 p4, 0x6

    const/4 v0, 0x0

    invoke-static {p1, p4, v0}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object p1

    iput-object p1, p0, Lr/o0;->F:Lw9/e;

    :cond_1
    invoke-virtual {p0}, Lr/o0;->f1()V

    :cond_2
    invoke-static {p0}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Le2/h1;->A(J)J

    move-result-wide v0

    iput-wide v0, p0, Lr/o0;->P:J

    invoke-virtual {p0}, Lr/o0;->a1()Lw9/i;

    move-result-object p0

    new-instance p1, Lr/u;

    invoke-direct {p1, p2, p3}, Lr/u;-><init>(J)V

    invoke-interface {p0, p1}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public abstract e1()Z
.end method

.method public final f1()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lr/o0;->H:Z

    iget-object v0, p0, Lr/o0;->F:Lw9/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const v0, 0x7fffffff

    const/4 v2, 0x6

    invoke-static {v0, v2, v1}, Lpc/h;->a(IILw9/a;)Lw9/e;

    move-result-object v0

    iput-object v0, p0, Lr/o0;->F:Lw9/e;

    :cond_0
    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v0

    new-instance v2, Lr/n0;

    invoke-direct {v2, p0, v1}, Lr/n0;-><init>(Lr/o0;Ly8/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v1, v1, v2, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final g1(Li9/c;ZLs/i;Lr/m1;Z)V
    .locals 2

    iput-object p1, p0, Lr/o0;->C:Li9/c;

    iget-boolean p1, p0, Lr/o0;->D:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eq p1, p2, :cond_1

    iput-boolean p2, p0, Lr/o0;->D:Z

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lr/o0;->S0()V

    iput-object v1, p0, Lr/o0;->R:Lr/a1;

    :cond_0
    move p5, v0

    :cond_1
    iget-object p1, p0, Lr/o0;->E:Ls/i;

    invoke-static {p1, p3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lr/o0;->S0()V

    iput-object p3, p0, Lr/o0;->E:Ls/i;

    :cond_2
    iget-object p1, p0, Lr/o0;->B:Lr/m1;

    if-eq p1, p4, :cond_3

    iput-object p4, p0, Lr/o0;->B:Lr/m1;

    goto :goto_0

    :cond_3
    move v0, p5

    :goto_0
    if-eqz v0, :cond_7

    iget-boolean p1, p0, Lr/o0;->I:Z

    sget-object p2, Lr/s;->a:Lr/s;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lr/o0;->U0()V

    iget-boolean p1, p0, Lr/o0;->H:Z

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lr/o0;->a1()Lw9/i;

    move-result-object p1

    invoke-interface {p1, p2}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iput-object v1, p0, Lr/o0;->O:Lq3/k;

    :cond_5
    iget-object p0, p0, Lr/o0;->R:Lr/a1;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lr/a1;->a()V

    iget-object p1, p0, Lr/a1;->a:Lr/o0;

    iget-boolean p3, p1, Lr/o0;->H:Z

    if-eqz p3, :cond_6

    invoke-virtual {p1, p2}, Lr/o0;->X0(Lr/w;)V

    :cond_6
    iput-object v1, p0, Lr/a1;->g:Lq3/k;

    iget-object p0, p0, Lr/a1;->k:Lpa/x;

    const/4 p1, 0x0

    iput p1, p0, Lpa/x;->a:I

    iget-object p0, p0, Lpa/x;->b:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    :cond_7
    return-void
.end method

.method public w0(Ly1/l;Ly1/m;J)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    iput-boolean v3, v0, Lr/o0;->I:Z

    iget-boolean v4, v0, Lr/o0;->D:Z

    if-eqz v4, :cond_35

    iget-object v4, v0, Lr/o0;->N:Lwa/h;

    const/4 v5, 0x0

    if-nez v4, :cond_1

    iget-object v4, v0, Lr/o0;->J:Lr/o;

    if-nez v4, :cond_0

    new-instance v4, Lr/o;

    sget-object v6, Lr/n;->n:Lr/n;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v6, v4, Lr/o;->a:Lr/n;

    iput-boolean v5, v4, Lr/o;->b:Z

    iput-object v4, v0, Lr/o0;->J:Lr/o;

    :cond_0
    iput-object v4, v0, Lr/o0;->N:Lwa/h;

    :cond_1
    iget-object v4, v0, Lr/o0;->N:Lwa/h;

    if-eqz v4, :cond_34

    instance-of v6, v4, Lr/o;

    const-wide v7, 0x7fffffffffffffffL

    const-wide/16 v9, 0x0

    if-eqz v6, :cond_9

    check-cast v4, Lr/o;

    iget-object v6, v1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_11

    :cond_2
    invoke-static {v1, v5, v5}, Lr/x2;->f(Ly1/l;ZZ)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_11

    :cond_3
    iget-object v1, v1, Ly1/l;->a:Ljava/lang/Object;

    invoke-static {v1}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/u;

    iget-object v5, v4, Lr/o;->a:Lr/n;

    sget-object v6, Lr/j0;->a:[I

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v5, v6, v5

    if-ne v5, v3, :cond_5

    invoke-virtual {v0}, Lr/o0;->e1()Z

    move-result v5

    if-nez v5, :cond_4

    sget-object v5, Lr/n;->l:Lr/n;

    goto :goto_0

    :cond_4
    sget-object v5, Lr/n;->m:Lr/n;

    goto :goto_0

    :cond_5
    iget-object v5, v4, Lr/o;->a:Lr/n;

    :goto_0
    iput-object v5, v4, Lr/o;->a:Lr/n;

    sget-object v6, Ly1/m;->l:Ly1/m;

    if-ne v2, v6, :cond_6

    sget-object v6, Lr/n;->m:Lr/n;

    if-ne v5, v6, :cond_6

    invoke-virtual {v1}, Ly1/u;->a()V

    iput-boolean v3, v4, Lr/o;->b:Z

    :cond_6
    sget-object v3, Ly1/m;->m:Ly1/m;

    if-ne v2, v3, :cond_35

    sget-object v2, Lr/n;->l:Lr/n;

    if-ne v5, v2, :cond_7

    iget-wide v2, v1, Ly1/u;->a:J

    const-wide/16 v4, 0x0

    const/16 v6, 0xc

    invoke-static/range {v0 .. v6}, Lr/o0;->W0(Lr/o0;Ly1/u;JJI)V

    return-void

    :cond_7
    iget-boolean v2, v4, Lr/o;->b:Z

    if-eqz v2, :cond_35

    invoke-virtual {v0, v1, v1, v9, v10}, Lr/o0;->d1(Ly1/u;Ly1/u;J)V

    invoke-virtual {v0, v1, v9, v10}, Lr/o0;->c1(Ly1/u;J)V

    iget-wide v1, v1, Ly1/u;->a:J

    iget-object v3, v0, Lr/o0;->K:Lr/r;

    if-nez v3, :cond_8

    new-instance v3, Lr/r;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-wide v7, v3, Lr/r;->a:J

    iput-object v3, v0, Lr/o0;->K:Lr/r;

    :cond_8
    iput-wide v1, v3, Lr/r;->a:J

    iput-object v3, v0, Lr/o0;->N:Lwa/h;

    return-void

    :cond_9
    instance-of v6, v4, Lr/q;

    const/4 v11, 0x0

    if-eqz v6, :cond_1f

    check-cast v4, Lr/q;

    sget-object v6, Ly1/m;->l:Ly1/m;

    if-ne v2, v6, :cond_a

    goto/16 :goto_11

    :cond_a
    iget-object v1, v1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    move v9, v5

    :goto_1
    if-ge v9, v6, :cond_c

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ly1/u;

    iget-wide v12, v12, Ly1/u;->a:J

    iget-wide v14, v4, Lr/q;->b:J

    invoke-static {v12, v13, v14, v15}, Ly1/t;->e(JJ)Z

    move-result v12

    if-eqz v12, :cond_b

    goto :goto_2

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_c
    move-object v10, v11

    :goto_2
    check-cast v10, Ly1/u;

    if-nez v10, :cond_10

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v6

    move v9, v5

    :goto_3
    if-ge v9, v6, :cond_e

    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ly1/u;

    iget-boolean v12, v12, Ly1/u;->d:Z

    if-eqz v12, :cond_d

    goto :goto_4

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_e
    move-object v10, v11

    :goto_4
    check-cast v10, Ly1/u;

    if-nez v10, :cond_f

    invoke-virtual {v0}, Lr/o0;->U0()V

    return-void

    :cond_f
    iget-wide v12, v10, Ly1/u;->a:J

    iput-wide v12, v4, Lr/q;->b:J

    :cond_10
    sget-object v6, Ly1/m;->m:Ly1/m;

    const-string v9, "AwaitTouchSlop.touchSlopDetector was not initialized"

    const-string v12, "AwaitTouchSlop.initialDown was not initialized"

    if-ne v2, v6, :cond_1b

    invoke-virtual {v10}, Ly1/u;->b()Z

    move-result v6

    if-nez v6, :cond_18

    invoke-static {v10}, Ly1/t;->d(Ly1/u;)Z

    move-result v6

    if-eqz v6, :cond_14

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    move v6, v5

    :goto_5
    if-ge v6, v3, :cond_12

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Ly1/u;

    iget-boolean v8, v8, Ly1/u;->d:Z

    if-eqz v8, :cond_11

    move-object v11, v7

    goto :goto_6

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_12
    :goto_6
    check-cast v11, Ly1/u;

    if-nez v11, :cond_13

    invoke-virtual {v0}, Lr/o0;->U0()V

    goto/16 :goto_7

    :cond_13
    iget-wide v6, v11, Ly1/u;->a:J

    iput-wide v6, v4, Lr/q;->b:J

    goto/16 :goto_7

    :cond_14
    sget-object v1, Lf2/l1;->s:Lr0/s2;

    invoke-static {v0, v1}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf2/p2;

    iget v6, v10, Ly1/u;->i:I

    invoke-static {v1, v6}, Lr/i0;->j(Lf2/p2;I)F

    move-result v18

    iget-object v13, v0, Lr/o0;->Q:Lr/y2;

    if-eqz v13, :cond_17

    iget-wide v14, v10, Ly1/u;->c:J

    iget-wide v5, v10, Ly1/u;->g:J

    move-wide/from16 v16, v5

    invoke-virtual/range {v13 .. v18}, Lr/y2;->a(JJF)J

    move-result-wide v5

    const-wide v13, 0x7fffffff7fffffffL

    and-long/2addr v13, v5

    const-wide v15, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v1, v13, v15

    if-eqz v1, :cond_16

    invoke-virtual {v10}, Ly1/u;->a()V

    iget-object v1, v4, Lr/q;->a:Ly1/u;

    invoke-static {v1}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v10, v5, v6}, Lr/o0;->d1(Ly1/u;Ly1/u;J)V

    invoke-virtual {v0, v10, v5, v6}, Lr/o0;->c1(Ly1/u;J)V

    iget-wide v5, v10, Ly1/u;->a:J

    iget-object v1, v0, Lr/o0;->K:Lr/r;

    if-nez v1, :cond_15

    new-instance v1, Lr/r;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-wide v7, v1, Lr/r;->a:J

    iput-object v1, v0, Lr/o0;->K:Lr/r;

    :cond_15
    iput-wide v5, v1, Lr/r;->a:J

    iput-object v1, v0, Lr/o0;->N:Lwa/h;

    goto :goto_7

    :cond_16
    iput-boolean v3, v4, Lr/q;->c:Z

    goto :goto_7

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Touch slop detector not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    iget-object v1, v4, Lr/q;->a:Ly1/u;

    if-eqz v1, :cond_1a

    iget-wide v5, v4, Lr/q;->b:J

    iget-object v3, v0, Lr/o0;->Q:Lr/y2;

    if-eqz v3, :cond_19

    invoke-virtual {v0, v1, v5, v6, v3}, Lr/o0;->V0(Ly1/u;JLr/y2;)V

    goto :goto_7

    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    :goto_7
    sget-object v1, Ly1/m;->n:Ly1/m;

    if-ne v2, v1, :cond_35

    iget-boolean v1, v4, Lr/q;->c:Z

    if-eqz v1, :cond_35

    invoke-virtual {v10}, Ly1/u;->b()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, v4, Lr/q;->a:Ly1/u;

    if-eqz v1, :cond_1d

    iget-wide v2, v4, Lr/q;->b:J

    iget-object v4, v0, Lr/o0;->Q:Lr/y2;

    if-eqz v4, :cond_1c

    invoke-virtual {v0, v1, v2, v3, v4}, Lr/o0;->V0(Ly1/u;JLr/y2;)V

    return-void

    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1e
    const/4 v0, 0x0

    iput-boolean v0, v4, Lr/q;->c:Z

    return-void

    :cond_1f
    instance-of v5, v4, Lr/p;

    if-eqz v5, :cond_27

    check-cast v4, Lr/p;

    sget-object v5, Ly1/m;->n:Ly1/m;

    if-eq v2, v5, :cond_20

    goto/16 :goto_11

    :cond_20
    iget-object v1, v1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v2, :cond_22

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly1/u;

    invoke-virtual {v6}, Ly1/u;->b()Z

    move-result v6

    if-eqz v6, :cond_21

    const/4 v3, 0x0

    goto :goto_9

    :cond_21
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_22
    :goto_9
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v2, :cond_26

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ly1/u;

    iget-boolean v6, v6, Ly1/u;->d:Z

    if-eqz v6, :cond_25

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_b

    :cond_23
    if-eqz v3, :cond_35

    invoke-static {v1}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/u;

    iget-wide v1, v1, Ly1/u;->c:J

    iget-object v3, v4, Lr/p;->a:Ly1/u;

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    iget-wide v5, v3, Ly1/u;->c:J

    invoke-static {v1, v2, v5, v6}, Ll1/b;->d(JJ)J

    move-result-wide v1

    move-wide v2, v1

    iget-object v1, v4, Lr/p;->a:Ly1/u;

    if-eqz v1, :cond_24

    move-wide v5, v2

    iget-wide v2, v4, Lr/p;->b:J

    move-wide v4, v5

    const/16 v6, 0x8

    invoke-static/range {v0 .. v6}, Lr/o0;->W0(Lr/o0;Ly1/u;JJI)V

    return-void

    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "AwaitGesturePickup.initialDown was not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_25
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_26
    :goto_b
    invoke-virtual {v0}, Lr/o0;->U0()V

    return-void

    :cond_27
    instance-of v5, v4, Lr/r;

    if-eqz v5, :cond_33

    check-cast v4, Lr/r;

    sget-object v5, Ly1/m;->m:Ly1/m;

    if-eq v2, v5, :cond_28

    goto/16 :goto_11

    :cond_28
    iget-wide v5, v4, Lr/r;->a:J

    iget-object v2, v1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v7

    const/4 v8, 0x0

    :goto_c
    if-ge v8, v7, :cond_2a

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v13, v12

    check-cast v13, Ly1/u;

    iget-wide v13, v13, Ly1/u;->a:J

    invoke-static {v13, v14, v5, v6}, Ly1/t;->e(JJ)Z

    move-result v13

    if-eqz v13, :cond_29

    goto :goto_d

    :cond_29
    add-int/lit8 v8, v8, 0x1

    goto :goto_c

    :cond_2a
    move-object v12, v11

    :goto_d
    check-cast v12, Ly1/u;

    if-nez v12, :cond_2b

    goto/16 :goto_11

    :cond_2b
    invoke-static {v12}, Ly1/t;->d(Ly1/u;)Z

    move-result v2

    sget-object v5, Lr/s;->a:Lr/s;

    if-eqz v2, :cond_30

    iget-object v1, v1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v2, :cond_2d

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Ly1/u;

    iget-boolean v7, v7, Ly1/u;->d:Z

    if-eqz v7, :cond_2c

    goto :goto_f

    :cond_2c
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2d
    move-object v6, v11

    :goto_f
    check-cast v6, Ly1/u;

    if-nez v6, :cond_2f

    invoke-virtual {v12}, Ly1/u;->b()Z

    move-result v1

    if-nez v1, :cond_2e

    invoke-static {v12}, Ly1/t;->d(Ly1/u;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {v0}, Lr/o0;->b1()Lq3/k;

    move-result-object v1

    invoke-static {v1, v12, v9, v10}, Lg5/f;->k(Lq3/k;Ly1/u;J)V

    sget-object v1, Lf2/l1;->s:Lr0/s2;

    invoke-static {v0, v1}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lf2/p2;

    invoke-interface {v1}, Lf2/p2;->e()F

    move-result v1

    invoke-virtual {v0}, Lr/o0;->b1()Lq3/k;

    move-result-object v2

    invoke-static {v1, v1}, Lb6/g;->e(FF)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lq3/k;->b(J)J

    move-result-wide v1

    invoke-virtual {v0}, Lr/o0;->b1()Lq3/k;

    move-result-object v3

    iget-object v3, v3, Lq3/k;->m:Ljava/lang/Object;

    check-cast v3, Lz1/b;

    iget-object v4, v3, Lz1/b;->a:Lz1/d;

    iget-object v5, v4, Lz1/d;->d:[Lz1/a;

    invoke-static {v5, v11}, Lu8/l;->r0([Ljava/lang/Object;Lmb/s2;)V

    const/4 v5, 0x0

    iput v5, v4, Lz1/d;->e:I

    iget-object v4, v3, Lz1/b;->b:Lz1/d;

    iget-object v6, v4, Lz1/d;->d:[Lz1/a;

    invoke-static {v6, v11}, Lu8/l;->r0([Ljava/lang/Object;Lmb/s2;)V

    iput v5, v4, Lz1/d;->e:I

    iput-wide v9, v3, Lz1/b;->c:J

    invoke-virtual {v0}, Lr/o0;->a1()Lw9/i;

    move-result-object v3

    new-instance v4, Lr/v;

    invoke-static {v1, v2}, Lr/r0;->a(J)J

    move-result-wide v1

    invoke-direct {v4, v5, v1, v2}, Lr/v;-><init>(ZJ)V

    invoke-interface {v3, v4}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    iput-boolean v5, v0, Lr/o0;->I:Z

    goto :goto_10

    :cond_2e
    invoke-virtual {v0}, Lr/o0;->a1()Lw9/i;

    move-result-object v1

    invoke-interface {v1, v5}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    invoke-virtual {v0}, Lr/o0;->U0()V

    return-void

    :cond_2f
    iget-wide v0, v6, Ly1/u;->a:J

    iput-wide v0, v4, Lr/r;->a:J

    return-void

    :cond_30
    invoke-virtual {v12}, Ly1/u;->b()Z

    move-result v1

    if-eqz v1, :cond_31

    invoke-virtual {v0}, Lr/o0;->a1()Lw9/i;

    move-result-object v0

    invoke-interface {v0, v5}, Lw9/u;->l(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_31
    invoke-static {v12, v3}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v1

    invoke-static {v1, v2}, Ll1/b;->c(J)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-nez v1, :cond_32

    goto :goto_11

    :cond_32
    const/4 v5, 0x0

    invoke-static {v12, v5}, Ly1/t;->h(Ly1/u;Z)J

    move-result-wide v1

    invoke-virtual {v0, v12, v1, v2}, Lr/o0;->c1(Ly1/u;J)V

    invoke-virtual {v12}, Ly1/u;->a()V

    return-void

    :cond_33
    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "currentDragState should not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    :goto_11
    return-void
.end method
