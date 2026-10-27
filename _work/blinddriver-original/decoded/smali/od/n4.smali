.class public final synthetic Lod/n4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic A:Lr0/a1;

.field public final synthetic B:Lr0/u0;

.field public final synthetic C:Lua/nav/a;

.field public final synthetic D:Lu9/t;

.field public final synthetic E:Landroid/content/Context;

.field public final synthetic F:Ljd/b;

.field public final synthetic G:Lr0/u0;

.field public final synthetic H:Lr0/u0;

.field public final synthetic I:Lr0/u0;

.field public final synthetic l:Led/f;

.field public final synthetic m:Ljava/util/List;

.field public final synthetic n:Z

.field public final synthetic o:Ljava/util/List;

.field public final synthetic p:Z

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Ljava/io/File;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/u0;

.field public final synthetic w:Lr0/u0;

.field public final synthetic x:Lr0/u0;

.field public final synthetic y:Lr0/u0;

.field public final synthetic z:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Led/f;Ljava/util/List;ZLjava/util/List;ZLr0/u0;Lr0/u0;Ljava/io/File;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;Lua/nav/a;Lu9/t;Landroid/content/Context;Ljd/b;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/n4;->l:Led/f;

    iput-object p2, p0, Lod/n4;->m:Ljava/util/List;

    iput-boolean p3, p0, Lod/n4;->n:Z

    iput-object p4, p0, Lod/n4;->o:Ljava/util/List;

    iput-boolean p5, p0, Lod/n4;->p:Z

    iput-object p6, p0, Lod/n4;->q:Lr0/u0;

    iput-object p7, p0, Lod/n4;->r:Lr0/u0;

    iput-object p8, p0, Lod/n4;->s:Ljava/io/File;

    iput-object p9, p0, Lod/n4;->t:Lr0/u0;

    iput-object p10, p0, Lod/n4;->u:Lr0/u0;

    iput-object p11, p0, Lod/n4;->v:Lr0/u0;

    iput-object p12, p0, Lod/n4;->w:Lr0/u0;

    iput-object p13, p0, Lod/n4;->x:Lr0/u0;

    iput-object p14, p0, Lod/n4;->y:Lr0/u0;

    iput-object p15, p0, Lod/n4;->z:Lr0/u0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lod/n4;->A:Lr0/a1;

    move-object/from16 p1, p17

    iput-object p1, p0, Lod/n4;->B:Lr0/u0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lod/n4;->C:Lua/nav/a;

    move-object/from16 p1, p19

    iput-object p1, p0, Lod/n4;->D:Lu9/t;

    move-object/from16 p1, p20

    iput-object p1, p0, Lod/n4;->E:Landroid/content/Context;

    move-object/from16 p1, p21

    iput-object p1, p0, Lod/n4;->F:Ljd/b;

    move-object/from16 p1, p22

    iput-object p1, p0, Lod/n4;->G:Lr0/u0;

    move-object/from16 p1, p23

    iput-object p1, p0, Lod/n4;->H:Lr0/u0;

    move-object/from16 p1, p24

    iput-object p1, p0, Lod/n4;->I:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 40

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lw/e;

    const-string v2, "$this$LazyColumn"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, Lod/q4;

    const/4 v13, 0x0

    iget-object v4, v0, Lod/n4;->m:Ljava/util/List;

    iget-boolean v5, v0, Lod/n4;->n:Z

    iget-object v6, v0, Lod/n4;->o:Ljava/util/List;

    iget-boolean v15, v0, Lod/n4;->p:Z

    iget-object v8, v0, Lod/n4;->q:Lr0/u0;

    iget-object v9, v0, Lod/n4;->r:Lr0/u0;

    iget-object v10, v0, Lod/n4;->s:Ljava/io/File;

    iget-object v11, v0, Lod/n4;->t:Lr0/u0;

    iget-object v12, v0, Lod/n4;->u:Lr0/u0;

    move v7, v15

    invoke-direct/range {v3 .. v13}, Lod/q4;-><init>(Ljava/util/List;ZLjava/util/List;ZLr0/u0;Lr0/u0;Ljava/io/File;Lr0/u0;Lr0/u0;I)V

    move/from16 v19, v5

    move-object/from16 v16, v6

    move-object/from16 v33, v8

    move-object/from16 v23, v9

    move-object/from16 v24, v10

    move-object/from16 v31, v11

    move-object/from16 v26, v12

    new-instance v2, Lz0/d;

    const v4, -0x4c469f68

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5, v3}, Lz0/d;-><init>(IZLt8/e;)V

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-static {v1, v3, v2, v4}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    invoke-interface/range {v23 .. v23}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Led/p;

    sget-object v6, Led/p;->m:Led/p;

    iget-object v7, v0, Lod/n4;->w:Lr0/u0;

    if-ne v2, v6, :cond_0

    invoke-interface/range {v33 .. v33}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    const/16 v6, 0x3c

    invoke-static {v2, v6}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v2

    new-instance v6, Ln/p1;

    const/16 v8, 0x13

    invoke-direct {v6, v8}, Ln/p1;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-instance v9, Lb0/b1;

    const/4 v10, 0x5

    invoke-direct {v9, v10, v6, v2}, Lb0/b1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v6, Lod/p;

    invoke-direct {v6, v2, v10}, Lod/p;-><init>(Ljava/util/List;I)V

    new-instance v10, Lod/c3;

    const/4 v11, 0x1

    iget-object v12, v0, Lod/n4;->v:Lr0/u0;

    invoke-direct {v10, v2, v12, v7, v11}, Lod/c3;-><init>(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, Lz0/d;

    const v11, 0x2fd4df92

    invoke-direct {v2, v11, v5, v10}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-virtual {v1, v8, v9, v6, v2}, Lw/e;->b(ILi9/c;Li9/c;Lz0/d;)V

    :cond_0
    new-instance v2, Lod/i;

    const/4 v6, 0x4

    iget-object v8, v0, Lod/n4;->x:Lr0/u0;

    invoke-direct {v2, v8, v6}, Lod/i;-><init>(Lr0/u0;I)V

    new-instance v6, Lz0/d;

    const v9, 0x6558330f

    invoke-direct {v6, v9, v5, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v1, v3, v6, v4}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    new-instance v34, Lod/r4;

    const/16 v39, 0x0

    iget-object v2, v0, Lod/n4;->y:Lr0/u0;

    iget-object v6, v0, Lod/n4;->z:Lr0/u0;

    iget-object v9, v0, Lod/n4;->A:Lr0/a1;

    iget-object v10, v0, Lod/n4;->B:Lr0/u0;

    move-object/from16 v35, v2

    move-object/from16 v36, v6

    move-object/from16 v37, v9

    move-object/from16 v38, v10

    invoke-direct/range {v34 .. v39}, Lod/r4;-><init>(Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;I)V

    move-object/from16 v2, v34

    new-instance v6, Lz0/d;

    const v9, 0x300fd5d0

    invoke-direct {v6, v9, v5, v2}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v1, v3, v6, v4}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    new-instance v14, Lod/s4;

    iget-object v2, v0, Lod/n4;->l:Led/f;

    iget-object v6, v0, Lod/n4;->C:Lua/nav/a;

    iget-object v9, v0, Lod/n4;->D:Lu9/t;

    iget-object v10, v0, Lod/n4;->E:Landroid/content/Context;

    iget-object v11, v0, Lod/n4;->F:Ljd/b;

    iget-object v12, v0, Lod/n4;->G:Lr0/u0;

    iget-object v13, v0, Lod/n4;->H:Lr0/u0;

    iget-object v0, v0, Lod/n4;->I:Lr0/u0;

    move-object/from16 v17, v2

    move-object/from16 v18, v6

    move-object/from16 v30, v7

    move-object/from16 v25, v8

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    move-object/from16 v22, v11

    move-object/from16 v32, v12

    move-object/from16 v34, v13

    move-object/from16 v27, v35

    move-object/from16 v28, v36

    move-object/from16 v29, v37

    move-object/from16 v35, v0

    invoke-direct/range {v14 .. v35}, Lod/s4;-><init>(ZLjava/util/List;Led/f;Lua/nav/a;ZLu9/t;Landroid/content/Context;Ljd/b;Lr0/u0;Ljava/io/File;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/a1;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V

    move-object/from16 v0, v17

    new-instance v2, Lz0/d;

    const v6, -0x538876f

    invoke-direct {v2, v6, v5, v14}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v1, v3, v2, v4}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    iget-object v0, v0, Led/f;->a:Ljava/lang/String;

    invoke-static {v0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lod/m;->Y:Lz0/d;

    invoke-static {v1, v3, v0, v4}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    :cond_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
