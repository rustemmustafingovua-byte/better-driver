.class public final synthetic Lod/t4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:Lr0/a1;

.field public final synthetic B:Lr0/u0;

.field public final synthetic C:Lr0/u0;

.field public final synthetic l:Lua/nav/a;

.field public final synthetic m:Z

.field public final synthetic n:Ljava/util/List;

.field public final synthetic o:Z

.field public final synthetic p:Lu9/t;

.field public final synthetic q:Landroid/content/Context;

.field public final synthetic r:Ljd/b;

.field public final synthetic s:Lr0/u0;

.field public final synthetic t:Ljava/io/File;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Led/f;

.field public final synthetic w:Lr0/u0;

.field public final synthetic x:Lr0/u0;

.field public final synthetic y:Lr0/u0;

.field public final synthetic z:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lua/nav/a;Lr0/u0;ZLjava/util/List;ZLu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Landroid/content/Context;Ljd/b;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/t4;->l:Lua/nav/a;

    iput-boolean p3, p0, Lod/t4;->m:Z

    iput-object p4, p0, Lod/t4;->n:Ljava/util/List;

    iput-boolean p5, p0, Lod/t4;->o:Z

    iput-object p6, p0, Lod/t4;->p:Lu9/t;

    iput-object p11, p0, Lod/t4;->q:Landroid/content/Context;

    iput-object p12, p0, Lod/t4;->r:Ljd/b;

    iput-object p2, p0, Lod/t4;->s:Lr0/u0;

    iput-object p13, p0, Lod/t4;->t:Ljava/io/File;

    iput-object p7, p0, Lod/t4;->u:Lr0/u0;

    iput-object p14, p0, Lod/t4;->v:Led/f;

    iput-object p8, p0, Lod/t4;->w:Lr0/u0;

    iput-object p9, p0, Lod/t4;->x:Lr0/u0;

    iput-object p15, p0, Lod/t4;->y:Lr0/u0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lod/t4;->z:Lr0/u0;

    iput-object p10, p0, Lod/t4;->A:Lr0/a1;

    move-object/from16 p1, p17

    iput-object p1, p0, Lod/t4;->B:Lr0/u0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lod/t4;->C:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    and-int/2addr v1, v4

    invoke-virtual {v7, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v9, v0, Lod/t4;->l:Lua/nav/a;

    invoke-virtual {v7, v9}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v1

    iget-boolean v11, v0, Lod/t4;->m:Z

    invoke-virtual {v7, v11}, Lr0/q;->h(Z)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v12, v0, Lod/t4;->n:Ljava/util/List;

    invoke-virtual {v7, v12}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-boolean v13, v0, Lod/t4;->o:Z

    invoke-virtual {v7, v13}, Lr0/q;->h(Z)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v14, v0, Lod/t4;->p:Lu9/t;

    invoke-virtual {v7, v14}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v1, v2

    iget-object v2, v0, Lod/t4;->q:Landroid/content/Context;

    invoke-virtual {v7, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v1, v3

    iget-object v3, v0, Lod/t4;->r:Ljd/b;

    invoke-virtual {v7, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v1, v4

    iget-object v4, v0, Lod/t4;->s:Lr0/u0;

    invoke-virtual {v7, v4}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v5

    or-int/2addr v1, v5

    iget-object v5, v0, Lod/t4;->t:Ljava/io/File;

    invoke-virtual {v7, v5}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    or-int/2addr v1, v6

    iget-object v6, v0, Lod/t4;->u:Lr0/u0;

    invoke-virtual {v7, v6}, Lr0/q;->g(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v1, v8

    iget-object v8, v0, Lod/t4;->v:Led/f;

    invoke-virtual {v7, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v10

    or-int/2addr v1, v10

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v10

    if-nez v1, :cond_1

    sget-object v1, Lr0/m;->a:Lr0/e;

    if-ne v10, v1, :cond_2

    :cond_1
    move-object/from16 v22, v8

    new-instance v8, Lod/u4;

    iget-object v10, v0, Lod/t4;->w:Lr0/u0;

    iget-object v15, v0, Lod/t4;->x:Lr0/u0;

    iget-object v1, v0, Lod/t4;->y:Lr0/u0;

    move-object/from16 v16, v1

    iget-object v1, v0, Lod/t4;->z:Lr0/u0;

    move-object/from16 v17, v1

    iget-object v1, v0, Lod/t4;->A:Lr0/a1;

    move-object/from16 v18, v1

    iget-object v1, v0, Lod/t4;->B:Lr0/u0;

    iget-object v0, v0, Lod/t4;->C:Lr0/u0;

    move-object/from16 v26, v0

    move-object/from16 v25, v1

    move-object/from16 v19, v2

    move-object/from16 v20, v3

    move-object/from16 v23, v4

    move-object/from16 v21, v5

    move-object/from16 v24, v6

    invoke-direct/range {v8 .. v26}, Lod/u4;-><init>(Lua/nav/a;Lr0/u0;ZLjava/util/List;ZLu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Landroid/content/Context;Ljd/b;Ljava/io/File;Led/f;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    invoke-virtual {v7, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    move-object v10, v8

    :cond_2
    move-object v0, v10

    check-cast v0, Li9/a;

    sget-object v6, Lod/m;->b0:Lz0/d;

    const/high16 v8, 0x30000000

    const/16 v9, 0x1fe

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v9}, Lo0/z2;->g(Li9/a;Lf1/r;ZLm1/h0;Lo0/p;Lu/s0;Li9/f;Lr0/q;II)V

    goto :goto_1

    :cond_3
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
