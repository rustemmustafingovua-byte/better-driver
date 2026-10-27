.class public final synthetic Ll0/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ll0/q;


# direct methods
.method public synthetic constructor <init>(Ll0/q;I)V
    .locals 0

    iput p2, p0, Ll0/o;->l:I

    iput-object p1, p0, Ll0/o;->m:Ll0/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 19

    move-object/from16 v0, p0

    iget v1, v0, Ll0/o;->l:I

    packed-switch v1, :pswitch_data_0

    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v0, v0, Ll0/o;->m:Ll0/q;

    iget-object v2, v0, Ll0/q;->O:Ll0/p;

    if-nez v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v3, v0, Ll0/q;->K:Li9/c;

    if-eqz v3, :cond_1

    invoke-interface {v3, v2}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v2, v0, Ll0/q;->O:Ll0/p;

    if-eqz v2, :cond_2

    iput-boolean v1, v2, Ll0/p;->c:Z

    :cond_2
    invoke-static {v0}, Le2/l;->m(Le2/z1;)V

    invoke-static {v0}, Le2/l;->l(Le2/x;)V

    invoke-static {v0}, Le2/l;->k(Le2/n;)V

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    move-object/from16 v2, p1

    check-cast v2, Lp2/g;

    iget-object v0, v0, Ll0/o;->m:Ll0/q;

    iget-object v1, v0, Ll0/q;->O:Ll0/p;

    sget-object v9, Lu8/r;->l:Lu8/r;

    if-eqz v1, :cond_5

    iget-object v3, v1, Ll0/p;->b:Lp2/g;

    invoke-static {v2, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iput-object v2, v1, Ll0/p;->b:Lp2/g;

    iget-object v1, v1, Ll0/p;->d:Ll0/d;

    if-eqz v1, :cond_6

    iget-object v3, v0, Ll0/q;->A:Lp2/m0;

    iget-object v4, v0, Ll0/q;->B:Lt2/d;

    iget v5, v0, Ll0/q;->D:I

    iget-boolean v6, v0, Ll0/q;->E:Z

    iget v7, v0, Ll0/q;->F:I

    iget v8, v0, Ll0/q;->G:I

    iput-object v2, v1, Ll0/d;->a:Lp2/g;

    iget-object v2, v1, Ll0/d;->k:Lp2/m0;

    invoke-virtual {v3, v2}, Lp2/m0;->c(Lp2/m0;)Z

    move-result v2

    iput-object v3, v1, Ll0/d;->k:Lp2/m0;

    const/4 v3, -0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-nez v2, :cond_4

    iget-wide v12, v1, Ll0/d;->q:J

    shl-long/2addr v12, v11

    iput-wide v12, v1, Ll0/d;->q:J

    iput-object v10, v1, Ll0/d;->l:Landroidx/lifecycle/a1;

    iput-object v10, v1, Ll0/d;->n:Lp2/j0;

    iput v3, v1, Ll0/d;->p:I

    iput v3, v1, Ll0/d;->o:I

    :cond_4
    iput-object v4, v1, Ll0/d;->b:Lt2/d;

    iput v5, v1, Ll0/d;->c:I

    iput-boolean v6, v1, Ll0/d;->d:Z

    iput v7, v1, Ll0/d;->e:I

    iput v8, v1, Ll0/d;->f:I

    iput-object v9, v1, Ll0/d;->g:Ljava/util/List;

    iget-wide v4, v1, Ll0/d;->q:J

    shl-long/2addr v4, v11

    const-wide/16 v6, 0x2

    or-long/2addr v4, v6

    iput-wide v4, v1, Ll0/d;->q:J

    iput-object v10, v1, Ll0/d;->l:Landroidx/lifecycle/a1;

    iput-object v10, v1, Ll0/d;->n:Lp2/j0;

    iput v3, v1, Ll0/d;->p:I

    iput v3, v1, Ll0/d;->o:I

    goto :goto_1

    :cond_5
    new-instance v10, Ll0/p;

    iget-object v1, v0, Ll0/q;->z:Lp2/g;

    invoke-direct {v10, v1, v2}, Ll0/p;-><init>(Lp2/g;Lp2/g;)V

    new-instance v1, Ll0/d;

    iget-object v3, v0, Ll0/q;->A:Lp2/m0;

    iget-object v4, v0, Ll0/q;->B:Lt2/d;

    iget v5, v0, Ll0/q;->D:I

    iget-boolean v6, v0, Ll0/q;->E:Z

    iget v7, v0, Ll0/q;->F:I

    iget v8, v0, Ll0/q;->G:I

    invoke-direct/range {v1 .. v9}, Ll0/d;-><init>(Lp2/g;Lp2/m0;Lt2/d;IZIILjava/util/List;)V

    invoke-virtual {v0}, Ll0/q;->N0()Ll0/d;

    move-result-object v2

    iget-object v2, v2, Ll0/d;->j:Lb3/c;

    invoke-virtual {v1, v2}, Ll0/d;->d(Lb3/c;)V

    iput-object v1, v10, Ll0/p;->d:Ll0/d;

    iput-object v10, v0, Ll0/q;->O:Ll0/p;

    :cond_6
    :goto_1
    invoke-static {v0}, Le2/l;->m(Le2/z1;)V

    invoke-static {v0}, Le2/l;->l(Le2/x;)V

    invoke-static {v0}, Le2/l;->k(Le2/n;)V

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :pswitch_1
    move-object/from16 v1, p1

    check-cast v1, Ljava/util/List;

    iget-object v0, v0, Ll0/o;->m:Ll0/q;

    invoke-virtual {v0}, Ll0/q;->N0()Ll0/d;

    move-result-object v2

    iget-object v2, v2, Ll0/d;->n:Lp2/j0;

    if-eqz v2, :cond_7

    iget-object v3, v2, Lp2/j0;->a:Lp2/i0;

    new-instance v4, Lp2/i0;

    iget-object v5, v3, Lp2/i0;->a:Lp2/g;

    iget-object v6, v0, Ll0/q;->A:Lp2/m0;

    sget-wide v7, Lm1/p;->g:J

    const-wide/16 v16, 0x0

    const v18, 0xfffffe

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v6 .. v18}, Lp2/m0;->e(Lp2/m0;JJLt2/k;Lt2/p;JIJI)Lp2/m0;

    move-result-object v6

    iget-object v7, v3, Lp2/i0;->c:Ljava/util/List;

    iget v8, v3, Lp2/i0;->d:I

    iget-boolean v9, v3, Lp2/i0;->e:Z

    iget v10, v3, Lp2/i0;->f:I

    iget-object v11, v3, Lp2/i0;->g:Lb3/c;

    iget-object v12, v3, Lp2/i0;->h:Lb3/m;

    iget-object v13, v3, Lp2/i0;->i:Lt2/d;

    iget-wide v14, v3, Lp2/i0;->j:J

    invoke-direct/range {v4 .. v15}, Lp2/i0;-><init>(Lp2/g;Lp2/m0;Ljava/util/List;IZILb3/c;Lb3/m;Lt2/d;J)V

    iget-wide v5, v2, Lp2/j0;->c:J

    new-instance v0, Lp2/j0;

    iget-object v2, v2, Lp2/j0;->b:Lp2/n;

    invoke-direct {v0, v4, v2, v5, v6}, Lp2/j0;-><init>(Lp2/i0;Lp2/n;J)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_7
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
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
