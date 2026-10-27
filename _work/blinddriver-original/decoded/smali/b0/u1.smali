.class public final Lb0/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb0/u1;->a:I

    iput-object p2, p0, Lb0/u1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    iget v5, v0, Lb0/u1;->a:I

    packed-switch v5, :pswitch_data_0

    iget-object v0, v0, Lb0/u1;->b:Ljava/lang/Object;

    check-cast v0, Lo0/o4;

    iget v5, v0, Lo0/o4;->a:I

    iget-object v6, v0, Lo0/o4;->g:[F

    iget-object v7, v0, Lo0/o4;->m:Lr/m1;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    const-string v11, "Collection contains no element matching the predicate."

    if-ge v10, v8, :cond_a

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lc2/q0;

    invoke-static {v12}, Lc2/x;->i(Lc2/q0;)Ljava/lang/Object;

    move-result-object v13

    sget-object v14, Lo0/u3;->l:Lo0/u3;

    if-ne v13, v14, :cond_9

    invoke-interface {v12, v3, v4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v10

    move v12, v9

    :goto_1
    if-ge v12, v10, :cond_8

    invoke-interface {v2, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lc2/q0;

    invoke-static {v13}, Lc2/x;->i(Lc2/q0;)Ljava/lang/Object;

    move-result-object v14

    sget-object v15, Lo0/u3;->m:Lo0/u3;

    if-ne v14, v15, :cond_7

    sget-object v2, Lr/m1;->l:Lr/m1;

    const/4 v10, 0x1

    const/4 v11, 0x2

    if-ne v7, v2, :cond_0

    iget v12, v8, Lc2/f1;->m:I

    neg-int v12, v12

    invoke-static {v9, v12, v3, v4, v10}, Lb3/b;->j(IIJI)J

    move-result-wide v14

    const/16 v19, 0x0

    const/16 v20, 0xe

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lb3/a;->a(JIIIII)J

    move-result-wide v3

    invoke-interface {v13, v3, v4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v3

    goto :goto_2

    :cond_0
    iget v12, v8, Lc2/f1;->l:I

    neg-int v12, v12

    invoke-static {v12, v9, v3, v4, v11}, Lb3/b;->j(IIJI)J

    move-result-wide v14

    const/16 v19, 0x0

    const/16 v20, 0xb

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v14 .. v20}, Lb3/a;->a(JIIIII)J

    move-result-wide v3

    invoke-interface {v13, v3, v4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v3

    :goto_2
    new-instance v4, La6/k;

    invoke-direct {v4}, La6/k;-><init>()V

    invoke-virtual {v0}, Lo0/o4;->b()F

    move-result v12

    invoke-static {v6}, Lu8/l;->t0([F)Ljava/lang/Float;

    move-result-object v13

    invoke-static {v12, v13}, Lj9/n;->a(FLjava/lang/Float;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-static {v6}, Lu8/l;->A0([F)Ljava/lang/Float;

    move-result-object v6

    invoke-static {v12, v6}, Lj9/n;->a(FLjava/lang/Float;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_3

    :cond_1
    move v10, v9

    :cond_2
    :goto_3
    sget-object v6, Lo0/m4;->f:Lc2/v1;

    invoke-virtual {v3, v6}, Lc2/f1;->d0(Lc2/a;)I

    move-result v6

    const/high16 v13, -0x80000000

    if-eq v6, v13, :cond_3

    move v9, v6

    :cond_3
    if-ne v7, v2, :cond_5

    iget v2, v3, Lc2/f1;->l:I

    iget v6, v8, Lc2/f1;->l:I

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v6, v8, Lc2/f1;->m:I

    iget v7, v3, Lc2/f1;->m:I

    add-int v13, v6, v7

    iget v14, v3, Lc2/f1;->l:I

    sub-int v14, v2, v14

    div-int/2addr v14, v11

    div-int/2addr v6, v11

    iget v15, v8, Lc2/f1;->l:I

    sub-int v15, v2, v15

    div-int/2addr v15, v11

    if-lez v5, :cond_4

    if-nez v10, :cond_4

    mul-int/lit8 v5, v9, 0x2

    sub-int/2addr v7, v5

    int-to-float v5, v7

    mul-float/2addr v5, v12

    invoke-static {v5}, Ll9/a;->z(F)I

    move-result v5

    add-int/2addr v5, v9

    goto :goto_4

    :cond_4
    int-to-float v5, v7

    mul-float/2addr v5, v12

    invoke-static {v5}, Ll9/a;->z(F)I

    move-result v5

    :goto_4
    iput v5, v4, La6/k;->m:I

    :goto_5
    move/from16 v18, v6

    move/from16 v17, v14

    move/from16 v20, v15

    goto :goto_8

    :cond_5
    iget v2, v8, Lc2/f1;->l:I

    iget v6, v3, Lc2/f1;->l:I

    add-int/2addr v2, v6

    iget v6, v3, Lc2/f1;->m:I

    iget v7, v8, Lc2/f1;->m:I

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget v6, v8, Lc2/f1;->l:I

    div-int/lit8 v14, v6, 0x2

    iget v6, v3, Lc2/f1;->m:I

    sub-int v6, v13, v6

    div-int/2addr v6, v11

    if-lez v5, :cond_6

    if-nez v10, :cond_6

    iget v5, v3, Lc2/f1;->l:I

    mul-int/lit8 v7, v9, 0x2

    sub-int/2addr v5, v7

    int-to-float v5, v5

    mul-float/2addr v5, v12

    invoke-static {v5}, Ll9/a;->z(F)I

    move-result v5

    add-int/2addr v5, v9

    :goto_6
    move v15, v5

    goto :goto_7

    :cond_6
    iget v5, v3, Lc2/f1;->l:I

    int-to-float v5, v5

    mul-float/2addr v5, v12

    invoke-static {v5}, Ll9/a;->z(F)I

    move-result v5

    goto :goto_6

    :goto_7
    iget v5, v8, Lc2/f1;->m:I

    sub-int v5, v13, v5

    div-int/2addr v5, v11

    iput v5, v4, La6/k;->m:I

    goto :goto_5

    :goto_8
    iget-object v5, v0, Lo0/o4;->h:Lr0/b1;

    invoke-virtual {v5, v2}, Lr0/b1;->h(I)V

    iget-object v0, v0, Lo0/o4;->i:Lr0/b1;

    invoke-virtual {v0, v13}, Lr0/b1;->h(I)V

    new-instance v15, Lo0/i4;

    move-object/from16 v16, v3

    move-object/from16 v21, v4

    move-object/from16 v19, v8

    invoke-direct/range {v15 .. v21}, Lo0/i4;-><init>(Lc2/f1;IILc2/f1;ILa6/k;)V

    sget-object v0, Lu8/s;->l:Lu8/s;

    invoke-interface {v1, v2, v13, v0, v15}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0

    :cond_7
    move-object/from16 v19, v8

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-static {v11}, Ld3/a;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_9
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-static {v11}, Ld3/a;->b(Ljava/lang/String;)Ljava/lang/Void;

    new-instance v0, Landroidx/fragment/app/i0;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :pswitch_0
    invoke-static {v3, v4}, Lb3/a;->h(J)I

    move-result v5

    invoke-static {v3, v4}, Lb3/a;->g(J)I

    move-result v3

    new-instance v4, Lb0/r0;

    const/4 v6, 0x1

    invoke-direct {v4, v6, v2, v0}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lu8/s;->l:Lu8/s;

    invoke-interface {v1, v5, v3, v0, v4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
