.class public final synthetic Lod/x1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic A:Lr0/u0;

.field public final synthetic B:Lr0/u0;

.field public final synthetic C:Lr0/u0;

.field public final synthetic D:Lr0/u0;

.field public final synthetic E:Lr0/r2;

.field public final synthetic F:Lr0/u0;

.field public final synthetic G:Lr0/r2;

.field public final synthetic H:Lr0/u0;

.field public final synthetic I:Lr0/u0;

.field public final synthetic J:Lr0/u0;

.field public final synthetic K:Lr0/r2;

.field public final synthetic l:Z

.field public final synthetic m:Lua/nav/c;

.field public final synthetic n:Landroid/content/Context;

.field public final synthetic o:Z

.field public final synthetic p:Lz0/d;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/u0;

.field public final synthetic s:Lr0/r2;

.field public final synthetic t:Lr0/r2;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/u0;

.field public final synthetic w:Lu9/t;

.field public final synthetic x:Lr0/r2;

.field public final synthetic y:Lr0/u0;

.field public final synthetic z:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(ZLua/nav/c;Landroid/content/Context;ZLz0/d;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lu9/t;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lod/x1;->l:Z

    iput-object p2, p0, Lod/x1;->m:Lua/nav/c;

    iput-object p3, p0, Lod/x1;->n:Landroid/content/Context;

    iput-boolean p4, p0, Lod/x1;->o:Z

    iput-object p5, p0, Lod/x1;->p:Lz0/d;

    iput-object p6, p0, Lod/x1;->q:Lr0/u0;

    iput-object p7, p0, Lod/x1;->r:Lr0/u0;

    iput-object p8, p0, Lod/x1;->s:Lr0/r2;

    iput-object p9, p0, Lod/x1;->t:Lr0/r2;

    iput-object p10, p0, Lod/x1;->u:Lr0/u0;

    iput-object p11, p0, Lod/x1;->v:Lr0/u0;

    iput-object p12, p0, Lod/x1;->w:Lu9/t;

    iput-object p13, p0, Lod/x1;->x:Lr0/r2;

    iput-object p14, p0, Lod/x1;->y:Lr0/u0;

    iput-object p15, p0, Lod/x1;->z:Lr0/u0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lod/x1;->A:Lr0/u0;

    move-object/from16 p1, p17

    iput-object p1, p0, Lod/x1;->B:Lr0/u0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lod/x1;->C:Lr0/u0;

    move-object/from16 p1, p19

    iput-object p1, p0, Lod/x1;->D:Lr0/u0;

    move-object/from16 p1, p20

    iput-object p1, p0, Lod/x1;->E:Lr0/r2;

    move-object/from16 p1, p21

    iput-object p1, p0, Lod/x1;->F:Lr0/u0;

    move-object/from16 p1, p22

    iput-object p1, p0, Lod/x1;->G:Lr0/r2;

    move-object/from16 p1, p23

    iput-object p1, p0, Lod/x1;->H:Lr0/u0;

    move-object/from16 p1, p24

    iput-object p1, p0, Lod/x1;->I:Lr0/u0;

    move-object/from16 p1, p25

    iput-object p1, p0, Lod/x1;->J:Lr0/u0;

    move-object/from16 p1, p26

    iput-object p1, p0, Lod/x1;->K:Lr0/r2;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 37

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    check-cast v7, Lr0/q;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/lit8 v2, v1, 0x3

    const/4 v3, 0x1

    const/4 v10, 0x0

    const/4 v4, 0x2

    if-eq v2, v4, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v10

    :goto_0
    and-int/2addr v1, v3

    invoke-virtual {v7, v1, v2}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v0, Lod/x1;->q:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-boolean v2, v2, Lad/a0;->a:Z

    const/high16 v11, 0x3f800000    # 1.0f

    sget-object v12, Lf1/o;->a:Lf1/o;

    iget-boolean v9, v0, Lod/x1;->o:Z

    const/16 v13, 0x30

    const/4 v14, 0x6

    if-eqz v2, :cond_1

    const v2, -0x6f5bb574

    invoke-virtual {v7, v2}, Lr0/q;->b0(I)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    invoke-static {v12, v11}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v1, v2, v7, v13}, Lod/e4;->g(Lad/a0;Lf1/r;Lr0/q;I)V

    int-to-float v1, v14

    invoke-static {v12, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v7, v10}, Lr0/q;->q(Z)V

    :goto_1
    move/from16 v17, v9

    move v1, v10

    move v10, v13

    move v11, v14

    goto/16 :goto_2

    :cond_1
    iget-boolean v1, v0, Lod/x1;->l:Z

    iget-object v2, v0, Lod/x1;->m:Lua/nav/c;

    iget-object v15, v0, Lod/x1;->n:Landroid/content/Context;

    iget-object v5, v0, Lod/x1;->r:Lr0/u0;

    iget-object v6, v0, Lod/x1;->s:Lr0/r2;

    iget-object v8, v0, Lod/x1;->t:Lr0/r2;

    move/from16 p1, v3

    iget-object v3, v0, Lod/x1;->u:Lr0/u0;

    if-eqz v1, :cond_4

    const v1, -0x6f597d29

    invoke-virtual {v7, v1}, Lr0/q;->b0(I)V

    invoke-interface {v5}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd/q;

    invoke-interface {v6}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lqd/n;

    invoke-interface {v8}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lqd/e;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd/n;

    iget-boolean v3, v3, Ldd/n;->l:Z

    invoke-virtual {v7, v2}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v7, v15}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v8

    or-int/2addr v6, v8

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-nez v6, :cond_2

    sget-object v6, Lr0/m;->a:Lr0/e;

    if-ne v8, v6, :cond_3

    :cond_2
    new-instance v8, Lod/l2;

    const/4 v6, 0x4

    invoke-direct {v8, v2, v15, v6}, Lod/l2;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v7, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_3
    check-cast v8, Lj9/l;

    check-cast v8, Li9/a;

    invoke-static {v12, v11}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v6

    move-object v2, v4

    move v4, v3

    move-object v3, v5

    move-object v5, v8

    const/high16 v8, 0x30000

    invoke-static/range {v1 .. v8}, Lod/m;->a(Lqd/q;Lqd/n;Lqd/e;ZLi9/a;Lf1/r;Lr0/q;I)V

    int-to-float v1, v14

    invoke-static {v12, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v7, v10}, Lr0/q;->q(Z)V

    goto :goto_1

    :cond_4
    const v1, -0x6f560ede

    invoke-virtual {v7, v1}, Lr0/q;->b0(I)V

    iget-object v1, v0, Lod/x1;->v:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const/16 v13, 0xdc

    const/4 v11, 0x0

    invoke-static {v13, v14, v11}, Ln/d;->n(IILn/v;)Ln/n1;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lm/v;->c(Ln/n1;)Lm/a0;

    move-result-object v10

    move/from16 v35, v1

    invoke-static {v13, v14, v11}, Ln/d;->n(IILn/v;)Ln/n1;

    move-result-object v1

    invoke-static {v1, v4}, Lm/v;->d(Ln/x;I)Lm/a0;

    move-result-object v1

    invoke-virtual {v10, v1}, Lm/a0;->a(Lm/a0;)Lm/a0;

    move-result-object v1

    invoke-static {v13, v14, v11}, Ln/d;->n(IILn/v;)Ln/n1;

    move-result-object v10

    invoke-static {v10}, Lm/v;->h(Ln/n1;)Lm/b0;

    move-result-object v10

    const/16 v13, 0xa0

    invoke-static {v13, v14, v11}, Ln/d;->n(IILn/v;)Ln/n1;

    move-result-object v11

    invoke-static {v11, v4}, Lm/v;->e(Ln/x;I)Lm/b0;

    move-result-object v4

    invoke-virtual {v10, v4}, Lm/b0;->a(Lm/b0;)Lm/b0;

    move-result-object v4

    new-instance v13, Lod/u1;

    iget-object v10, v0, Lod/x1;->w:Lu9/t;

    iget-object v11, v0, Lod/x1;->x:Lr0/r2;

    iget-object v14, v0, Lod/x1;->y:Lr0/u0;

    move-object/from16 v36, v1

    iget-object v1, v0, Lod/x1;->z:Lr0/u0;

    move-object/from16 v24, v1

    iget-object v1, v0, Lod/x1;->A:Lr0/u0;

    move-object/from16 v25, v1

    iget-object v1, v0, Lod/x1;->B:Lr0/u0;

    move-object/from16 v26, v1

    iget-object v1, v0, Lod/x1;->C:Lr0/u0;

    move-object/from16 v27, v1

    iget-object v1, v0, Lod/x1;->D:Lr0/u0;

    move-object/from16 v28, v1

    iget-object v1, v0, Lod/x1;->E:Lr0/r2;

    move-object/from16 v29, v1

    iget-object v1, v0, Lod/x1;->F:Lr0/u0;

    move-object/from16 v30, v1

    iget-object v1, v0, Lod/x1;->G:Lr0/r2;

    move-object/from16 v31, v1

    iget-object v1, v0, Lod/x1;->H:Lr0/u0;

    move-object/from16 v32, v1

    iget-object v1, v0, Lod/x1;->I:Lr0/u0;

    move-object/from16 v33, v1

    iget-object v1, v0, Lod/x1;->J:Lr0/u0;

    move-object/from16 v34, v1

    move-object/from16 v23, v3

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v21, v8

    move/from16 v17, v9

    move-object/from16 v16, v10

    move-object/from16 v18, v11

    move-object/from16 v22, v14

    const/16 v10, 0x30

    const/4 v11, 0x6

    move-object v14, v2

    invoke-direct/range {v13 .. v34}, Lod/u1;-><init>(Lua/nav/c;Landroid/content/Context;Lu9/t;ZLr0/r2;Lr0/u0;Lr0/r2;Lr0/r2;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/r2;Lr0/u0;Lr0/r2;Lr0/u0;Lr0/u0;Lr0/u0;)V

    const v1, 0x39e213d4

    invoke-static {v1, v13, v7}, Lz0/i;->c(ILt8/e;Lr0/q;)Lz0/d;

    move-result-object v6

    const v8, 0x30d80

    const/16 v9, 0x12

    const/4 v2, 0x0

    const/4 v5, 0x0

    move/from16 v1, v35

    move-object/from16 v3, v36

    invoke-static/range {v1 .. v9}, Lm/l;->b(ZLf1/r;Lm/a0;Lm/b0;Ljava/lang/String;Lz0/d;Lr0/q;II)V

    const/4 v1, 0x0

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    :goto_2
    iget-object v2, v0, Lod/x1;->K:Lr0/r2;

    invoke-interface {v2}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lwc/b;

    if-nez v2, :cond_5

    const v2, -0x6f3f6ef5

    invoke-virtual {v7, v2}, Lr0/q;->b0(I)V

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    goto :goto_3

    :cond_5
    const v3, -0x6f3f6ef4

    invoke-virtual {v7, v3}, Lr0/q;->b0(I)V

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v12, v3}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v3

    invoke-static {v2, v3, v7, v10}, Lod/e4;->b(Lwc/b;Lf1/r;Lr0/q;I)V

    int-to-float v2, v11

    invoke-static {v12, v2}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    :goto_3
    if-nez v17, :cond_6

    const v2, 0x67c454e8

    invoke-virtual {v7, v2}, Lr0/q;->b0(I)V

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v0, Lod/x1;->p:Lz0/d;

    invoke-virtual {v0, v7, v2}, Lz0/d;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    invoke-virtual {v7, v1}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_6
    const v0, -0x6f397bd6

    invoke-virtual {v7, v0}, Lr0/q;->b0(I)V

    goto :goto_4

    :cond_7
    invoke-virtual {v7}, Lr0/q;->W()V

    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
