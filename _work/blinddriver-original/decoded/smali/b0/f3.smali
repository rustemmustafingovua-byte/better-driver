.class public final Lb0/f3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/r0;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lb0/f3;->a:I

    iput-object p2, p0, Lb0/f3;->b:Ljava/lang/Object;

    iput-object p3, p0, Lb0/f3;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final j(Lc2/t0;Ljava/util/List;J)Lc2/s0;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget v3, v0, Lb0/f3;->a:I

    packed-switch v3, :pswitch_data_0

    iget-object v2, v0, Lb0/f3;->b:Ljava/lang/Object;

    check-cast v2, Lf3/x;

    iget-object v0, v0, Lb0/f3;->c:Ljava/lang/Object;

    check-cast v0, Lb3/m;

    invoke-virtual {v2, v0}, Lf3/x;->setParentLayoutDirection(Lb3/m;)V

    sget-object v0, Lf3/b;->o:Lf3/b;

    sget-object v2, Lu8/s;->l:Lu8/s;

    const/4 v3, 0x0

    invoke-interface {v1, v3, v3, v2, v0}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lc2/q0;

    invoke-interface {v8}, Lc2/q0;->G()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lb0/g3;

    if-nez v8, :cond_0

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lb0/f3;->c:Ljava/lang/Object;

    check-cast v4, Li9/a;

    invoke-interface {v4}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_5

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_4

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ll1/c;

    if-eqz v10, :cond_2

    iget v11, v10, Ll1/c;->b:F

    iget v12, v10, Ll1/c;->a:F

    new-instance v13, Lt8/j;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lc2/q0;

    iget v15, v10, Ll1/c;->c:F

    sub-float/2addr v15, v12

    float-to-double v5, v15

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-float v5, v5

    float-to-int v5, v5

    iget v6, v10, Ll1/c;->d:F

    sub-float/2addr v6, v11

    move-object v10, v3

    move-object v15, v4

    float-to-double v3, v6

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v3, v3

    float-to-int v3, v3

    const/4 v4, 0x5

    invoke-static {v5, v3, v4}, Lb3/b;->b(III)J

    move-result-wide v3

    invoke-interface {v14, v3, v4}, Lc2/q0;->C(J)Lc2/f1;

    move-result-object v3

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-long v11, v4

    const/16 v4, 0x20

    shl-long/2addr v11, v4

    int-to-long v4, v5

    const-wide v16, 0xffffffffL

    and-long v4, v4, v16

    or-long/2addr v4, v11

    new-instance v6, Lb3/j;

    invoke-direct {v6, v4, v5}, Lb3/j;-><init>(J)V

    invoke-direct {v13, v3, v6}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    move-object v10, v3

    move-object v15, v4

    const/4 v13, 0x0

    :goto_2
    if-eqz v13, :cond_3

    invoke-virtual {v7, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v9, v9, 0x1

    move-object v3, v10

    move-object v4, v15

    goto :goto_1

    :cond_4
    move-object v6, v7

    goto :goto_3

    :cond_5
    const/4 v6, 0x0

    :goto_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_7

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lc2/q0;

    invoke-interface {v8}, Lc2/q0;->G()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lb0/g3;

    if-eqz v8, :cond_6

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_7
    iget-object v0, v0, Lb0/f3;->b:Ljava/lang/Object;

    check-cast v0, Li9/a;

    invoke-static {v3, v0}, Lb0/n1;->n(Ljava/util/List;Li9/a;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static/range {p3 .. p4}, Lb3/a;->h(J)I

    move-result v2

    invoke-static/range {p3 .. p4}, Lb3/a;->g(J)I

    move-result v3

    new-instance v4, Lb0/r0;

    const/4 v5, 0x5

    invoke-direct {v4, v5, v6, v0}, Lb0/r0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, Lu8/s;->l:Lu8/s;

    invoke-interface {v1, v2, v3, v0, v4}, Lc2/t0;->x(IILjava/util/Map;Li9/c;)Lc2/s0;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
