.class public final synthetic Lo0/g3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Z

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lt8/e;


# direct methods
.method public synthetic constructor <init>(Lo0/h3;ZLi9/e;I)V
    .locals 0

    .line 1
    const/4 p4, 0x0

    iput p4, p0, Lo0/g3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/g3;->n:Ljava/lang/Object;

    iput-boolean p2, p0, Lo0/g3;->m:Z

    iput-object p3, p0, Lo0/g3;->o:Lt8/e;

    return-void
.end method

.method public synthetic constructor <init>(Lv8/b;Li9/a;Z)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lo0/g3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo0/g3;->n:Ljava/lang/Object;

    iput-object p2, p0, Lo0/g3;->o:Lt8/e;

    iput-boolean p3, p0, Lo0/g3;->m:Z

    return-void
.end method

.method public synthetic constructor <init>(ZLdd/n;Li9/a;I)V
    .locals 0

    .line 3
    const/4 p4, 0x2

    iput p4, p0, Lo0/g3;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lo0/g3;->m:Z

    iput-object p2, p0, Lo0/g3;->n:Ljava/lang/Object;

    iput-object p3, p0, Lo0/g3;->o:Lt8/e;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    move-object/from16 v0, p0

    iget v1, v0, Lo0/g3;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lo0/g3;->n:Ljava/lang/Object;

    check-cast v1, Ldd/n;

    iget-object v2, v0, Lo0/g3;->o:Lt8/e;

    check-cast v2, Li9/a;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    invoke-static {v4}, Lr0/r;->H(I)I

    move-result v4

    iget-boolean v0, v0, Lo0/g3;->m:Z

    invoke-static {v0, v1, v2, v3, v4}, Lod/m;->v(ZLdd/n;Li9/a;Lr0/q;I)V

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lo0/g3;->n:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iget-object v2, v0, Lo0/g3;->o:Lt8/e;

    check-cast v2, Li9/a;

    move-object/from16 v8, p1

    check-cast v8, Lr0/q;

    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v4, v3, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_0

    move v4, v7

    goto :goto_1

    :cond_0
    move v4, v6

    :goto_1
    and-int/2addr v3, v7

    invoke-virtual {v8, v3, v4}, Lr0/q;->T(IZ)Z

    move-result v3

    if-eqz v3, :cond_a

    const/16 v3, 0x8

    int-to-float v3, v3

    sget-object v4, Lf1/o;->a:Lf1/o;

    invoke-static {v4, v3}, Lu/b;->p(Lf1/r;F)Lf1/r;

    move-result-object v5

    sget-object v9, Lu/h;->c:Lu/c;

    sget-object v10, Lf1/c;->x:Lf1/h;

    invoke-static {v9, v10, v8, v6}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v9

    iget-wide v10, v8, Lr0/q;->T:J

    invoke-static {v10, v11}, Ljava/lang/Long;->hashCode(J)I

    move-result v10

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v11

    invoke-static {v5, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v5

    sget-object v12, Le2/h;->b:Le2/g;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v12, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v13, v8, Lr0/q;->S:Z

    if-eqz v13, :cond_1

    invoke-virtual {v8, v12}, Lr0/q;->l(Li9/a;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_2
    sget-object v12, Le2/g;->f:Le2/e;

    invoke-static {v12, v9, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v9, Le2/g;->e:Le2/e;

    invoke-static {v9, v11, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    sget-object v10, Le2/g;->g:Le2/e;

    invoke-static {v8, v9, v10}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v9, Le2/g;->h:Le2/d;

    invoke-static {v8, v9}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v9, Le2/g;->d:Le2/e;

    invoke-static {v9, v5, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    const v5, -0x685ad8a8

    invoke-virtual {v8, v5}, Lr0/q;->b0(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move v9, v3

    move-object v3, v5

    move v10, v6

    sget-wide v5, Lm1/p;->c:J

    const/16 v11, 0xb

    invoke-static {v11}, La/a;->k(I)J

    move-result-wide v11

    const/16 v13, 0xe

    invoke-static {v13}, La/a;->k(I)J

    move-result-wide v14

    const/16 v24, 0x6

    const v25, 0x1fbb2

    move-object v13, v4

    const/4 v4, 0x0

    move/from16 v16, v9

    const/4 v9, 0x0

    move/from16 v17, v10

    sget-object v10, Lt2/p;->c:Lt2/m;

    move/from16 v18, v7

    move-object/from16 v22, v8

    move-wide v7, v11

    const-wide/16 v11, 0x0

    move-object/from16 v19, v13

    const/4 v13, 0x0

    move/from16 v20, v16

    const/16 v16, 0x0

    move/from16 v21, v17

    const/16 v17, 0x0

    move/from16 v23, v18

    const/16 v18, 0x0

    move-object/from16 v26, v19

    const/16 v19, 0x0

    move/from16 v27, v20

    const/16 v20, 0x0

    move/from16 v28, v21

    const/16 v21, 0x0

    move/from16 v29, v23

    const/16 v23, 0xd80

    move-object/from16 p1, v1

    move-object/from16 v1, v26

    move/from16 v0, v28

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move v6, v0

    move-object v4, v1

    move-object/from16 v8, v22

    move/from16 v3, v27

    const/4 v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto :goto_3

    :cond_2
    move/from16 v27, v3

    move-object v1, v4

    move v0, v6

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    sget-object v3, Lf1/c;->v:Lf1/i;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v4

    invoke-virtual {v8, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v6

    sget-object v7, Lr0/m;->a:Lr0/e;

    if-nez v5, :cond_3

    if-ne v6, v7, :cond_4

    :cond_3
    new-instance v6, Lkd/p;

    const/4 v5, 0x4

    invoke-direct {v6, v2, v5}, Lkd/p;-><init>(Li9/a;I)V

    invoke-virtual {v8, v6}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_4
    check-cast v6, Li9/a;

    const/16 v5, 0xf

    const/4 v9, 0x0

    invoke-static {v4, v0, v9, v6, v5}, Lp/o;->k(Lf1/r;ZLjava/lang/String;Li9/a;I)Lf1/r;

    move-result-object v0

    sget-object v4, Lu/h;->a:Lu/n;

    const/16 v5, 0x30

    invoke-static {v4, v3, v8, v5}, Lu/w0;->a(Lu/e;Lf1/i;Lr0/q;I)Lu/x0;

    move-result-object v3

    iget-wide v4, v8, Lr0/q;->T:J

    invoke-static {v4, v5}, Ljava/lang/Long;->hashCode(J)I

    move-result v4

    invoke-virtual {v8}, Lr0/q;->m()Lr0/j1;

    move-result-object v5

    invoke-static {v0, v8}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v0

    sget-object v6, Le2/h;->b:Le2/g;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v6, Le2/g;->b:Le2/f;

    invoke-virtual {v8}, Lr0/q;->e0()V

    iget-boolean v9, v8, Lr0/q;->S:Z

    if-eqz v9, :cond_5

    invoke-virtual {v8, v6}, Lr0/q;->l(Li9/a;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v8}, Lr0/q;->o0()V

    :goto_4
    sget-object v6, Le2/g;->f:Le2/e;

    invoke-static {v6, v3, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v3, Le2/g;->e:Le2/e;

    invoke-static {v3, v5, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    sget-object v4, Le2/g;->g:Le2/e;

    invoke-static {v8, v3, v4}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v3, Le2/g;->h:Le2/d;

    invoke-static {v8, v3}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v3, Le2/g;->d:Le2/e;

    invoke-static {v3, v0, v8}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-virtual {v8, v2}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v8}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v3

    if-nez v0, :cond_6

    if-ne v3, v7, :cond_7

    :cond_6
    new-instance v3, Lm0/f1;

    const/4 v0, 0x3

    invoke-direct {v3, v2, v0}, Lm0/f1;-><init>(Li9/a;I)V

    invoke-virtual {v8, v3}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    move-object v4, v3

    check-cast v4, Li9/c;

    const/4 v7, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lo0/g3;->m:Z

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v3 .. v9}, Lo0/w4;->a(ZLi9/c;Lf1/r;ZLo0/u4;Lr0/q;I)V

    move/from16 v9, v27

    invoke-static {v1, v9}, Lu/b1;->p(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v8}, Lu/b;->e(Lf1/r;Lr0/q;)V

    if-eqz v3, :cond_8

    const-string v0, "\u0411\u0435\u0437 GPS: \u044f\u043a \u043f\u0440\u0438 \u0441\u043f\u0440\u0430\u0432\u0436\u043d\u0456\u0439 \u0432\u0442\u0440\u0430\u0442\u0456, \u043b\u0438\u0448\u0435 \u043c\u0435\u0440\u0435\u0436\u0430 \u043f\u0440\u0438\u0445\u043e\u0434\u0438\u0442\u044c \u0440\u0456\u0434\u0448\u0435"

    goto :goto_5

    :cond_8
    const-string v0, "\u0411\u0435\u0437 GPS (\u0442\u0435\u0441\u0442 \u0447\u0438\u0441\u043b\u0435\u043d\u043d\u044f)"

    :goto_5
    if-eqz v3, :cond_9

    const-wide v1, 0xffffb74dL

    invoke-static {v1, v2}, Lm1/v;->d(J)J

    move-result-wide v1

    :goto_6
    move-wide v5, v1

    goto :goto_7

    :cond_9
    sget-wide v1, Lm1/p;->c:J

    goto :goto_6

    :goto_7
    const/16 v1, 0xc

    invoke-static {v1}, La/a;->k(I)J

    move-result-wide v1

    const/16 v24, 0x0

    const v25, 0x1fff2

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0xc00

    move-object v3, v0

    move-object/from16 v22, v8

    move-wide v7, v1

    invoke-static/range {v3 .. v25}, Lod/m;->s(Ljava/lang/String;Lf1/r;JJLt2/k;Lt2/p;JLa3/k;JIZIILi9/c;Lp2/m0;Lr0/q;III)V

    move-object/from16 v8, v22

    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    invoke-virtual {v8, v0}, Lr0/q;->q(Z)V

    goto :goto_8

    :cond_a
    invoke-virtual {v8}, Lr0/q;->W()V

    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lo0/g3;->n:Ljava/lang/Object;

    check-cast v1, Lo0/h3;

    iget-object v2, v0, Lo0/g3;->o:Lt8/e;

    check-cast v2, Li9/e;

    move-object/from16 v3, p1

    check-cast v3, Lr0/q;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v4, 0xc01

    invoke-static {v4}, Lr0/r;->H(I)I

    move-result v4

    iget-boolean v0, v0, Lo0/g3;->m:Z

    invoke-virtual {v1, v0, v2, v3, v4}, Lo0/h3;->b(ZLi9/e;Lr0/q;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
