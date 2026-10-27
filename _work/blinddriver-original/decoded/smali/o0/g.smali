.class public final Lo0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# direct methods
.method public static final a(Ljava/util/ArrayList;La6/k;Lc2/t0;Ljava/util/ArrayList;Ljava/util/ArrayList;La6/k;Ljava/util/ArrayList;La6/k;La6/k;)V
    .locals 2

    sget v0, Lo0/j;->d:F

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p1, La6/k;->m:I

    invoke-interface {p2, v0}, Lb3/c;->h0(F)I

    move-result p2

    add-int/2addr p2, v1

    iput p2, p1, La6/k;->m:I

    :cond_0
    invoke-static {p3}, Lu8/m;->B0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget p0, p5, La6/k;->m:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p4, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, p1, La6/k;->m:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p6, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget p0, p1, La6/k;->m:I

    iget p2, p5, La6/k;->m:I

    add-int/2addr p0, p2

    iput p0, p1, La6/k;->m:I

    iget p0, p7, La6/k;->m:I

    iget p1, p8, La6/k;->m:I

    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    iput p0, p7, La6/k;->m:I

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    iput v0, p8, La6/k;->m:I

    iput v0, p5, La6/k;->m:I

    return-void
.end method


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 17

    move-object/from16 v2, p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, La6/k;

    invoke-direct {v7}, La6/k;-><init>()V

    new-instance v1, La6/k;

    invoke-direct {v1}, La6/k;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, La6/k;

    invoke-direct {v8}, La6/k;-><init>()V

    new-instance v5, La6/k;

    invoke-direct {v5}, La6/k;-><init>()V

    sget v9, Lo0/j;->c:F

    sget v10, Lo0/j;->a:F

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_3

    move-object/from16 v12, p2

    invoke-interface {v12, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc2/q0;

    move-wide/from16 v14, p3

    invoke-interface {v13, v14, v15}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v13

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    if-nez v16, :cond_1

    move-object/from16 p0, v0

    iget v0, v8, La6/k;->m:I

    invoke-interface {v2, v9}, Lb3/c;->h0(F)I

    move-result v16

    add-int v16, v16, v0

    iget v0, v13, Lc2/f1;->l:I

    add-int v0, v16, v0

    move-object/from16 v16, v1

    invoke-static {v14, v15}, Lb3/a;->h(J)I

    move-result v1

    if-gt v0, v1, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    goto :goto_1

    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static/range {v0 .. v8}, Lo0/g;->a(Ljava/util/ArrayList;La6/k;Lc2/t0;Ljava/util/ArrayList;Ljava/util/ArrayList;La6/k;Ljava/util/ArrayList;La6/k;La6/k;)V

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v16

    move-object/from16 p0, v0

    if-nez v16, :cond_2

    iget v0, v8, La6/k;->m:I

    invoke-interface {v2, v9}, Lb3/c;->h0(F)I

    move-result v16

    add-int v0, v16, v0

    iput v0, v8, La6/k;->m:I

    :cond_2
    invoke-virtual {v3, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v8, La6/k;->m:I

    move/from16 v16, v0

    iget v0, v13, Lc2/f1;->l:I

    add-int v0, v16, v0

    iput v0, v8, La6/k;->m:I

    iget v0, v5, La6/k;->m:I

    iget v13, v13, Lc2/f1;->m:I

    invoke-static {v0, v13}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v5, La6/k;->m:I

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    goto :goto_0

    :cond_3
    move-wide/from16 v14, p3

    move-object/from16 p0, v0

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    sget v0, Lo0/j;->a:F

    move-object/from16 v0, p0

    invoke-static/range {v0 .. v8}, Lo0/g;->a(Ljava/util/ArrayList;La6/k;Lc2/t0;Ljava/util/ArrayList;Ljava/util/ArrayList;La6/k;Ljava/util/ArrayList;La6/k;La6/k;)V

    goto :goto_2

    :cond_4
    move-object/from16 v0, p0

    :goto_2
    iget v3, v7, La6/k;->m:I

    invoke-static {v14, v15}, Lb3/a;->j(J)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v1, v1, La6/k;->m:I

    invoke-static {v14, v15}, Lb3/a;->i(J)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    sget v4, Lo0/j;->a:F

    new-instance v4, Lb0/g1;

    invoke-direct {v4, v0, v2, v3, v6}, Lb0/g1;-><init>(Ljava/util/ArrayList;Lc2/t0;ILjava/util/ArrayList;)V

    sget-object v0, Lu8/s;->l:Lu8/s;

    invoke-interface {v2, v3, v1, v0, v4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0
.end method
