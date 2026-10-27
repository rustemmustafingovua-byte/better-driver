.class public final Ly1/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc2/u;

.field public b:Z

.field public c:Z

.field public d:Z

.field public e:Z

.field public final f:Lk/h0;

.field public final g:Ly1/k;

.field public final h:Lk/b0;


# direct methods
.method public constructor <init>(Lc2/u;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ly1/d;->a:Lc2/u;

    new-instance p1, Lk/h0;

    invoke-direct {p1}, Lk/h0;-><init>()V

    iput-object p1, p0, Ly1/d;->f:Lk/h0;

    new-instance p1, Ly1/k;

    invoke-direct {p1}, Ly1/k;-><init>()V

    iput-object p1, p0, Ly1/d;->g:Ly1/k;

    new-instance p1, Lk/b0;

    const/16 v0, 0xa

    invoke-direct {p1, v0}, Lk/b0;-><init>(I)V

    iput-object p1, p0, Ly1/d;->h:Lk/b0;

    return-void
.end method


# virtual methods
.method public final a(JLjava/util/List;Z)V
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-interface/range {p3 .. p3}, Ljava/util/Collection;->size()I

    move-result v3

    iget-object v4, v0, Ly1/d;->g:Ly1/k;

    const/4 v5, 0x1

    move-object v9, v4

    move v8, v5

    const/4 v7, 0x0

    :goto_0
    iget-object v10, v0, Ly1/d;->h:Lk/b0;

    if-ge v7, v3, :cond_9

    move-object/from16 v11, p3

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lf1/q;

    iget-boolean v13, v12, Lf1/q;->y:Z

    if-eqz v13, :cond_8

    new-instance v13, Ld5/a;

    const/16 v14, 0xb

    invoke-direct {v13, v14, v0, v12}, Ld5/a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v13, v12, Lf1/q;->x:Ld5/a;

    if-eqz v8, :cond_5

    iget-object v13, v9, Ly1/k;->a:Lt0/b;

    iget-object v14, v13, Lt0/b;->l:[Ljava/lang/Object;

    iget v13, v13, Lt0/b;->n:I

    const/4 v15, 0x0

    :goto_1
    if-ge v15, v13, :cond_1

    aget-object v16, v14, v15

    move-object/from16 v6, v16

    check-cast v6, Ly1/j;

    iget-object v6, v6, Ly1/j;->c:Lf1/q;

    invoke-static {v6, v12}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_2

    :cond_0
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_1
    const/16 v16, 0x0

    :goto_2
    move-object/from16 v6, v16

    check-cast v6, Ly1/j;

    if-eqz v6, :cond_4

    iput-boolean v5, v6, Ly1/j;->i:Z

    iget-object v9, v6, Ly1/j;->d:Lf7/c0;

    invoke-virtual {v9, v1, v2}, Lf7/c0;->a(J)V

    if-eqz p4, :cond_3

    invoke-virtual {v10, v1, v2}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_2

    new-instance v9, Lk/h0;

    invoke-direct {v9}, Lk/h0;-><init>()V

    invoke-virtual {v10, v1, v2, v9}, Lk/b0;->h(JLjava/lang/Object;)V

    :cond_2
    check-cast v9, Lk/h0;

    invoke-virtual {v9, v6}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_3
    :goto_3
    move-object v9, v6

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :cond_5
    new-instance v6, Ly1/j;

    invoke-direct {v6, v12}, Ly1/j;-><init>(Lf1/q;)V

    iget-object v12, v6, Ly1/j;->d:Lf7/c0;

    invoke-virtual {v12, v1, v2}, Lf7/c0;->a(J)V

    if-eqz p4, :cond_7

    invoke-virtual {v10, v1, v2}, Lk/b0;->e(J)Ljava/lang/Object;

    move-result-object v12

    if-nez v12, :cond_6

    new-instance v12, Lk/h0;

    invoke-direct {v12}, Lk/h0;-><init>()V

    invoke-virtual {v10, v1, v2, v12}, Lk/b0;->h(JLjava/lang/Object;)V

    :cond_6
    check-cast v12, Lk/h0;

    invoke-virtual {v12, v6}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_7
    iget-object v9, v9, Ly1/k;->a:Lt0/b;

    invoke-virtual {v9, v6}, Lt0/b;->b(Ljava/lang/Object;)V

    goto :goto_3

    :cond_8
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_9
    if-eqz p4, :cond_e

    iget-object v0, v10, Lk/b0;->b:[J

    iget-object v1, v10, Lk/b0;->c:[Ljava/lang/Object;

    iget-object v2, v10, Lk/b0;->a:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_e

    const/4 v5, 0x0

    :goto_5
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v11, 0x7

    shl-long/2addr v8, v11

    and-long/2addr v8, v6

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v11

    cmp-long v8, v8, v11

    if-eqz v8, :cond_d

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v8, :cond_c

    const-wide/16 v12, 0xff

    and-long/2addr v12, v6

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_a

    shl-int/lit8 v12, v5, 0x3

    add-int/2addr v12, v11

    aget-wide v13, v0, v12

    aget-object v12, v1, v12

    check-cast v12, Lk/h0;

    iget-object v15, v4, Ly1/k;->a:Lt0/b;

    move/from16 p0, v9

    iget-object v9, v15, Lt0/b;->l:[Ljava/lang/Object;

    iget v15, v15, Lt0/b;->n:I

    move-object/from16 v16, v0

    const/4 v0, 0x0

    :goto_7
    if-ge v0, v15, :cond_b

    aget-object v17, v9, v0

    move/from16 p1, v0

    move-object/from16 v0, v17

    check-cast v0, Ly1/j;

    invoke-virtual {v0, v13, v14, v12}, Ly1/j;->f(JLk/h0;)V

    add-int/lit8 v0, p1, 0x1

    goto :goto_7

    :cond_a
    move-object/from16 v16, v0

    move/from16 p0, v9

    :cond_b
    shr-long v6, v6, p0

    add-int/lit8 v11, v11, 0x1

    move/from16 v9, p0

    move-object/from16 v0, v16

    goto :goto_6

    :cond_c
    move-object/from16 v16, v0

    move v0, v9

    if-ne v8, v0, :cond_e

    goto :goto_8

    :cond_d
    move-object/from16 v16, v0

    :goto_8
    if-eq v5, v3, :cond_e

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto :goto_5

    :cond_e
    invoke-virtual {v10}, Lk/b0;->a()V

    return-void
.end method

.method public final b(Lad/a2;Z)Z
    .locals 9

    iget-object v0, p1, Lad/a2;->n:Ljava/lang/Object;

    check-cast v0, Lk/q;

    iget-object v1, p0, Ly1/d;->a:Lc2/u;

    iget-object v2, p0, Ly1/d;->g:Ly1/k;

    invoke-virtual {v2, v0, v1, p1, p2}, Ly1/k;->a(Lk/q;Lc2/u;Lad/a2;Z)Z

    move-result v0

    iget-object v1, v2, Ly1/k;->a:Lt0/b;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ly1/d;->b:Z

    iget-object v4, v1, Lt0/b;->l:[Ljava/lang/Object;

    iget v5, v1, Lt0/b;->n:I

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_3

    aget-object v8, v4, v6

    check-cast v8, Ly1/j;

    invoke-virtual {v8, p1, p2}, Ly1/j;->e(Lad/a2;Z)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v7, :cond_1

    goto :goto_1

    :cond_1
    move v7, v3

    goto :goto_2

    :cond_2
    :goto_1
    move v7, v0

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    iget-object p2, v1, Lt0/b;->l:[Ljava/lang/Object;

    iget v1, v1, Lt0/b;->n:I

    move v4, v3

    move v5, v4

    :goto_3
    if-ge v4, v1, :cond_6

    aget-object v6, p2, v4

    check-cast v6, Ly1/j;

    invoke-virtual {v6, p1}, Ly1/j;->d(Lad/a2;)Z

    move-result v6

    if-nez v6, :cond_5

    if-eqz v5, :cond_4

    goto :goto_4

    :cond_4
    move v5, v3

    goto :goto_5

    :cond_5
    :goto_4
    move v5, v0

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    invoke-virtual {v2, p1}, Ly1/k;->b(Lad/a2;)V

    if-nez v5, :cond_8

    if-eqz v7, :cond_7

    goto :goto_6

    :cond_7
    move v0, v3

    :cond_8
    :goto_6
    iput-boolean v3, p0, Ly1/d;->b:Z

    iget-boolean p1, p0, Ly1/d;->e:Z

    if-eqz p1, :cond_a

    iput-boolean v3, p0, Ly1/d;->e:Z

    iget-object p1, p0, Ly1/d;->f:Lk/h0;

    iget p2, p1, Lk/h0;->b:I

    move v1, v3

    :goto_7
    if-ge v1, p2, :cond_9

    invoke-virtual {p1, v1}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lf1/q;

    invoke-virtual {p0, v4}, Ly1/d;->d(Lf1/q;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    invoke-virtual {p1}, Lk/h0;->d()V

    :cond_a
    iget-boolean p1, p0, Ly1/d;->c:Z

    if-eqz p1, :cond_b

    iput-boolean v3, p0, Ly1/d;->c:Z

    invoke-virtual {p0}, Ly1/d;->c()V

    :cond_b
    iget-boolean p1, p0, Ly1/d;->d:Z

    if-eqz p1, :cond_c

    iput-boolean v3, p0, Ly1/d;->d:Z

    iget-object p0, v2, Ly1/k;->a:Lt0/b;

    invoke-virtual {p0}, Lt0/b;->g()V

    :cond_c
    return v0
.end method

.method public final c()V
    .locals 6

    iget-boolean v0, p0, Ly1/d;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ly1/d;->c:Z

    return-void

    :cond_0
    iget-object v0, p0, Ly1/d;->g:Ly1/k;

    iget-object v2, v0, Ly1/k;->a:Lt0/b;

    iget-object v3, v2, Lt0/b;->l:[Ljava/lang/Object;

    iget v2, v2, Lt0/b;->n:I

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v3, v4

    check-cast v5, Ly1/j;

    invoke-virtual {v5}, Ly1/j;->c()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v2, p0, Ly1/d;->d:Z

    if-eqz v2, :cond_2

    iput-boolean v1, p0, Ly1/d;->d:Z

    return-void

    :cond_2
    iget-object p0, v0, Ly1/k;->a:Lt0/b;

    invoke-virtual {p0}, Lt0/b;->g()V

    return-void
.end method

.method public final d(Lf1/q;)V
    .locals 5

    iget-boolean v0, p0, Ly1/d;->b:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Ly1/d;->e:Z

    iget-object p0, p0, Ly1/d;->f:Lk/h0;

    invoke-virtual {p0, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p0, p0, Ly1/d;->g:Ly1/k;

    iget-object v0, p0, Ly1/k;->b:Lk/h0;

    invoke-virtual {v0}, Lk/h0;->d()V

    invoke-virtual {v0, p0}, Lk/h0;->a(Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lk/h0;->i()Z

    move-result p0

    if-eqz p0, :cond_3

    iget p0, v0, Lk/h0;->b:I

    sub-int/2addr p0, v1

    invoke-virtual {v0, p0}, Lk/h0;->k(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ly1/k;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Ly1/k;->a:Lt0/b;

    iget v4, v3, Lt0/b;->n:I

    if-ge v2, v4, :cond_1

    iget-object v3, v3, Lt0/b;->l:[Ljava/lang/Object;

    aget-object v3, v3, v2

    check-cast v3, Ly1/j;

    iget-object v4, v3, Ly1/j;->c:Lf1/q;

    invoke-static {v4, p1}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Ly1/k;->a:Lt0/b;

    invoke-virtual {v4, v3}, Lt0/b;->j(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Ly1/j;->c()V

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Lk/h0;->a(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
