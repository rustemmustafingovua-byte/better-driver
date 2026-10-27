.class public final synthetic Ll0/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ll0/u;


# direct methods
.method public synthetic constructor <init>(Ll0/u;I)V
    .locals 0

    iput p2, p0, Ll0/s;->l:I

    iput-object p1, p0, Ll0/s;->m:Ll0/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 28

    move-object/from16 v0, p0

    iget v1, v0, Ll0/s;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Ll0/s;->m:Ll0/u;

    iget-object v2, v0, Ll0/u;->J:Ll0/t;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iput-boolean v1, v2, Ll0/t;->c:Z

    invoke-static {v0}, Le2/l;->m(Le2/z1;)V

    invoke-static {v0}, Le2/l;->l(Le2/x;)V

    invoke-static {v0}, Le2/l;->k(Le2/n;)V

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object/from16 v1, p1

    check-cast v1, Lp2/g;

    iget-object v3, v1, Lp2/g;->m:Ljava/lang/String;

    iget-object v0, v0, Ll0/s;->m:Ll0/u;

    iget-object v1, v0, Ll0/u;->J:Ll0/t;

    if-eqz v1, :cond_2

    iget-object v2, v1, Ll0/t;->b:Ljava/lang/String;

    invoke-static {v3, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iput-object v3, v1, Ll0/t;->b:Ljava/lang/String;

    iget-object v1, v1, Ll0/t;->d:Ll0/e;

    if-eqz v1, :cond_3

    iget-object v2, v0, Ll0/u;->A:Lp2/m0;

    iget-object v4, v0, Ll0/u;->B:Lt2/d;

    iget v5, v0, Ll0/u;->C:I

    iget-boolean v6, v0, Ll0/u;->D:Z

    iget v7, v0, Ll0/u;->E:I

    iget v8, v0, Ll0/u;->F:I

    iput-object v3, v1, Ll0/e;->a:Ljava/lang/String;

    iput-object v2, v1, Ll0/e;->b:Lp2/m0;

    iput-object v4, v1, Ll0/e;->c:Lt2/d;

    iput v5, v1, Ll0/e;->d:I

    iput-boolean v6, v1, Ll0/e;->e:Z

    iput v7, v1, Ll0/e;->f:I

    iput v8, v1, Ll0/e;->g:I

    iget-wide v2, v1, Ll0/e;->s:J

    const/4 v4, 0x2

    shl-long/2addr v2, v4

    const-wide/16 v4, 0x2

    or-long/2addr v2, v4

    iput-wide v2, v1, Ll0/e;->s:J

    invoke-virtual {v1}, Ll0/e;->c()V

    goto :goto_1

    :cond_2
    new-instance v1, Ll0/t;

    iget-object v2, v0, Ll0/u;->z:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Ll0/t;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ll0/e;

    iget-object v4, v0, Ll0/u;->A:Lp2/m0;

    iget-object v5, v0, Ll0/u;->B:Lt2/d;

    iget v6, v0, Ll0/u;->C:I

    iget-boolean v7, v0, Ll0/u;->D:Z

    iget v8, v0, Ll0/u;->E:I

    iget v9, v0, Ll0/u;->F:I

    invoke-direct/range {v2 .. v9}, Ll0/e;-><init>(Ljava/lang/String;Lp2/m0;Lt2/d;IZII)V

    invoke-virtual {v0}, Ll0/u;->M0()Ll0/e;

    move-result-object v3

    iget-object v3, v3, Ll0/e;->i:Lb3/c;

    invoke-virtual {v2, v3}, Ll0/e;->d(Lb3/c;)V

    iput-object v2, v1, Ll0/t;->d:Ll0/e;

    iput-object v1, v0, Ll0/u;->J:Ll0/t;

    :cond_3
    :goto_1
    invoke-static {v0}, Le2/l;->m(Le2/z1;)V

    invoke-static {v0}, Le2/l;->l(Le2/x;)V

    invoke-static {v0}, Le2/l;->k(Le2/n;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Ll0/s;->m:Ll0/u;

    invoke-virtual {v0}, Ll0/u;->M0()Ll0/e;

    move-result-object v2

    iget-object v3, v0, Ll0/u;->A:Lp2/m0;

    sget-wide v4, Lm1/p;->g:J

    const-wide/16 v13, 0x0

    const v15, 0xfffffe

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    invoke-static/range {v3 .. v15}, Lp2/m0;->e(Lp2/m0;JJLt2/k;Lt2/p;JIJI)Lp2/m0;

    move-result-object v18

    iget-object v0, v2, Ll0/e;->o:Lb3/m;

    const/4 v3, 0x0

    if-nez v0, :cond_4

    :goto_2
    move-object v6, v3

    goto :goto_3

    :cond_4
    iget-object v4, v2, Ll0/e;->i:Lb3/c;

    if-nez v4, :cond_5

    goto :goto_2

    :cond_5
    new-instance v5, Lp2/g;

    iget-object v6, v2, Ll0/e;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Lp2/g;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Ll0/e;->j:Lp2/a;

    if-nez v6, :cond_6

    goto :goto_2

    :cond_6
    iget-object v6, v2, Ll0/e;->n:Lp2/r;

    if-nez v6, :cond_7

    goto :goto_2

    :cond_7
    iget-wide v6, v2, Ll0/e;->p:J

    const-wide v8, -0x1fffffffdL

    and-long v26, v6, v8

    new-instance v6, Lp2/j0;

    new-instance v16, Lp2/i0;

    iget v7, v2, Ll0/e;->f:I

    iget-boolean v8, v2, Ll0/e;->e:Z

    iget v9, v2, Ll0/e;->d:I

    iget-object v10, v2, Ll0/e;->c:Lt2/d;

    sget-object v19, Lu8/r;->l:Lu8/r;

    move-object/from16 v24, v0

    move-object/from16 v23, v4

    move-object/from16 v17, v5

    move/from16 v20, v7

    move/from16 v21, v8

    move/from16 v22, v9

    move-object/from16 v25, v10

    invoke-direct/range {v16 .. v27}, Lp2/i0;-><init>(Lp2/g;Lp2/m0;Ljava/util/List;IZILb3/c;Lb3/m;Lt2/d;J)V

    move-object/from16 v0, v16

    move-object/from16 v20, v23

    move-object/from16 v21, v25

    new-instance v10, Lp2/n;

    new-instance v16, Landroidx/lifecycle/a1;

    invoke-direct/range {v16 .. v21}, Landroidx/lifecycle/a1;-><init>(Lp2/g;Lp2/m0;Ljava/util/List;Lb3/c;Lt2/d;)V

    iget v14, v2, Ll0/e;->f:I

    iget v15, v2, Ll0/e;->d:I

    move-object/from16 v11, v16

    move-wide/from16 v12, v26

    invoke-direct/range {v10 .. v15}, Lp2/n;-><init>(Landroidx/lifecycle/a1;JII)V

    iget-wide v4, v2, Ll0/e;->l:J

    invoke-direct {v6, v0, v10, v4, v5}, Lp2/j0;-><init>(Lp2/i0;Lp2/n;J)V

    :goto_3
    if-eqz v6, :cond_8

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v3, v6

    :cond_8
    if-eqz v3, :cond_9

    const/4 v0, 0x1

    goto :goto_4

    :cond_9
    const/4 v0, 0x0

    :goto_4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
