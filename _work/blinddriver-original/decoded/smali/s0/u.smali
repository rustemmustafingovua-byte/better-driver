.class public final Ls0/u;
.super Ls0/j0;
.source "SourceFile"


# static fields
.field public static final c:Ls0/u;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ls0/u;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Ls0/j0;-><init>(III)V

    sput-object v0, Ls0/u;->c:Ls0/u;

    return-void
.end method


# virtual methods
.method public final a(Ls0/l0;Lr0/c;Lr0/h2;Lmb/x4;Ls0/k0;)V
    .locals 17

    move-object/from16 v0, p3

    const/4 v1, 0x0

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Ls0/l0;->b(I)I

    move-result v2

    iget v3, v0, Lr0/h2;->n:I

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "Cannot move a group while inserting"

    invoke-static {v3}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_0
    const-string v3, "Parameter offset is out of bounds"

    if-ltz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v3}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_1
    if-nez v2, :cond_2

    goto/16 :goto_9

    :cond_2
    iget v4, v0, Lr0/h2;->t:I

    iget v5, v0, Lr0/h2;->v:I

    iget v6, v0, Lr0/h2;->u:I

    move v7, v4

    :goto_2
    if-lez v2, :cond_4

    iget-object v8, v0, Lr0/h2;->b:[I

    invoke-virtual {v0, v7}, Lr0/h2;->r(I)I

    move-result v9

    mul-int/lit8 v9, v9, 0x5

    add-int/lit8 v9, v9, 0x3

    aget v8, v8, v9

    add-int/2addr v7, v8

    if-gt v7, v6, :cond_3

    goto :goto_3

    :cond_3
    invoke-static {v3}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    iget-object v2, v0, Lr0/h2;->b:[I

    invoke-virtual {v0, v7}, Lr0/h2;->r(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x5

    add-int/lit8 v3, v3, 0x3

    aget v2, v2, v3

    iget-object v3, v0, Lr0/h2;->b:[I

    iget v6, v0, Lr0/h2;->t:I

    invoke-virtual {v0, v6}, Lr0/h2;->r(I)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lr0/h2;->g([II)I

    move-result v3

    iget-object v6, v0, Lr0/h2;->b:[I

    invoke-virtual {v0, v7}, Lr0/h2;->r(I)I

    move-result v8

    invoke-virtual {v0, v6, v8}, Lr0/h2;->g([II)I

    move-result v6

    iget-object v8, v0, Lr0/h2;->b:[I

    add-int/2addr v7, v2

    invoke-virtual {v0, v7}, Lr0/h2;->r(I)I

    move-result v9

    invoke-virtual {v0, v8, v9}, Lr0/h2;->g([II)I

    move-result v8

    sub-int v9, v8, v6

    iget v10, v0, Lr0/h2;->t:I

    add-int/lit8 v10, v10, -0x1

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v10

    invoke-virtual {v0, v9, v10}, Lr0/h2;->x(II)V

    invoke-virtual {v0, v2}, Lr0/h2;->w(I)V

    iget-object v10, v0, Lr0/h2;->b:[I

    invoke-virtual {v0, v7}, Lr0/h2;->r(I)I

    move-result v11

    mul-int/lit8 v11, v11, 0x5

    invoke-virtual {v0, v4}, Lr0/h2;->r(I)I

    move-result v12

    mul-int/lit8 v12, v12, 0x5

    mul-int/lit8 v13, v2, 0x5

    add-int/2addr v13, v11

    invoke-static {v10, v10, v12, v11, v13}, Lu8/l;->i0([I[IIII)V

    if-lez v9, :cond_5

    iget-object v11, v0, Lr0/h2;->c:[Ljava/lang/Object;

    add-int v12, v6, v9

    invoke-virtual {v0, v12}, Lr0/h2;->h(I)I

    move-result v12

    add-int/2addr v8, v9

    invoke-virtual {v0, v8}, Lr0/h2;->h(I)I

    move-result v8

    sub-int/2addr v8, v12

    invoke-static {v11, v12, v11, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    add-int/2addr v6, v9

    sub-int v3, v6, v3

    iget v8, v0, Lr0/h2;->k:I

    iget v11, v0, Lr0/h2;->l:I

    iget-object v12, v0, Lr0/h2;->c:[Ljava/lang/Object;

    array-length v12, v12

    iget v13, v0, Lr0/h2;->m:I

    add-int v14, v4, v2

    move v15, v4

    :goto_4
    if-ge v15, v14, :cond_7

    invoke-virtual {v0, v15}, Lr0/h2;->r(I)I

    move-result v1

    invoke-virtual {v0, v10, v1}, Lr0/h2;->g([II)I

    move-result v16

    move/from16 p1, v3

    sub-int v3, v16, p1

    move/from16 p2, v1

    if-ge v13, v1, :cond_6

    const/4 v1, 0x0

    goto :goto_5

    :cond_6
    move v1, v8

    :goto_5
    invoke-static {v3, v1, v11, v12}, Lr0/h2;->i(IIII)I

    move-result v1

    iget v3, v0, Lr0/h2;->k:I

    move/from16 v16, v8

    iget v8, v0, Lr0/h2;->l:I

    move-object/from16 p4, v10

    iget-object v10, v0, Lr0/h2;->c:[Ljava/lang/Object;

    array-length v10, v10

    invoke-static {v1, v3, v8, v10}, Lr0/h2;->i(IIII)I

    move-result v1

    mul-int/lit8 v3, p2, 0x5

    add-int/lit8 v3, v3, 0x4

    aput v1, p4, v3

    add-int/lit8 v15, v15, 0x1

    move/from16 v3, p1

    move-object/from16 v10, p4

    move/from16 v8, v16

    const/4 v1, 0x0

    goto :goto_4

    :cond_7
    add-int v1, v7, v2

    invoke-virtual {v0}, Lr0/h2;->p()I

    move-result v3

    iget-object v8, v0, Lr0/h2;->d:Ljava/util/ArrayList;

    invoke-static {v8, v7, v3}, Lr0/g2;->b(Ljava/util/ArrayList;II)I

    move-result v8

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    if-ltz v8, :cond_8

    :goto_6
    iget-object v11, v0, Lr0/h2;->d:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_8

    iget-object v11, v0, Lr0/h2;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr0/a;

    invoke-virtual {v0, v11}, Lr0/h2;->c(Lr0/a;)I

    move-result v12

    if-lt v12, v7, :cond_8

    if-ge v12, v1, :cond_8

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v11, v0, Lr0/h2;->d:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lr0/a;

    goto :goto_6

    :cond_8
    sub-int v1, v4, v7

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v8, :cond_a

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lr0/a;

    invoke-virtual {v0, v12}, Lr0/h2;->c(Lr0/a;)I

    move-result v13

    add-int/2addr v13, v1

    iget v14, v0, Lr0/h2;->g:I

    if-lt v13, v14, :cond_9

    sub-int v14, v3, v13

    neg-int v14, v14

    iput v14, v12, Lr0/a;->a:I

    goto :goto_8

    :cond_9
    iput v13, v12, Lr0/a;->a:I

    :goto_8
    iget-object v14, v0, Lr0/h2;->d:Ljava/util/ArrayList;

    invoke-static {v14, v13, v3}, Lr0/g2;->b(Ljava/util/ArrayList;II)I

    move-result v13

    iget-object v14, v0, Lr0/h2;->d:Ljava/util/ArrayList;

    invoke-virtual {v14, v13, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_a
    invoke-virtual {v0, v7, v2}, Lr0/h2;->I(II)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Unexpectedly removed anchors"

    invoke-static {v1}, Lr0/s;->a(Ljava/lang/String;)V

    :cond_b
    iget v1, v0, Lr0/h2;->u:I

    invoke-virtual {v0, v5, v1, v4}, Lr0/h2;->m(III)V

    if-lez v9, :cond_c

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v6, v9, v7}, Lr0/h2;->J(III)V

    :cond_c
    :goto_9
    return-void
.end method
