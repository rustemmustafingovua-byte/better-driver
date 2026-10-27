.class public final synthetic Lod/u1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic A:Lr0/r2;

.field public final synthetic B:Lr0/u0;

.field public final synthetic C:Lr0/r2;

.field public final synthetic D:Lr0/u0;

.field public final synthetic E:Lr0/u0;

.field public final synthetic F:Lr0/u0;

.field public final synthetic l:Lua/nav/c;

.field public final synthetic m:Landroid/content/Context;

.field public final synthetic n:Lu9/t;

.field public final synthetic o:Z

.field public final synthetic p:Lr0/r2;

.field public final synthetic q:Lr0/u0;

.field public final synthetic r:Lr0/r2;

.field public final synthetic s:Lr0/r2;

.field public final synthetic t:Lr0/u0;

.field public final synthetic u:Lr0/u0;

.field public final synthetic v:Lr0/u0;

.field public final synthetic w:Lr0/u0;

.field public final synthetic x:Lr0/u0;

.field public final synthetic y:Lr0/u0;

.field public final synthetic z:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Lua/nav/c;Landroid/content/Context;Lu9/t;ZLr0/r2;Lr0/u0;Lr0/r2;Lr0/r2;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/u0;Lr0/r2;Lr0/u0;Lr0/r2;Lr0/u0;Lr0/u0;Lr0/u0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lod/u1;->l:Lua/nav/c;

    iput-object p2, p0, Lod/u1;->m:Landroid/content/Context;

    iput-object p3, p0, Lod/u1;->n:Lu9/t;

    iput-boolean p4, p0, Lod/u1;->o:Z

    iput-object p5, p0, Lod/u1;->p:Lr0/r2;

    iput-object p6, p0, Lod/u1;->q:Lr0/u0;

    iput-object p7, p0, Lod/u1;->r:Lr0/r2;

    iput-object p8, p0, Lod/u1;->s:Lr0/r2;

    iput-object p9, p0, Lod/u1;->t:Lr0/u0;

    iput-object p10, p0, Lod/u1;->u:Lr0/u0;

    iput-object p11, p0, Lod/u1;->v:Lr0/u0;

    iput-object p12, p0, Lod/u1;->w:Lr0/u0;

    iput-object p13, p0, Lod/u1;->x:Lr0/u0;

    iput-object p14, p0, Lod/u1;->y:Lr0/u0;

    iput-object p15, p0, Lod/u1;->z:Lr0/u0;

    move-object/from16 p1, p16

    iput-object p1, p0, Lod/u1;->A:Lr0/r2;

    move-object/from16 p1, p17

    iput-object p1, p0, Lod/u1;->B:Lr0/u0;

    move-object/from16 p1, p18

    iput-object p1, p0, Lod/u1;->C:Lr0/r2;

    move-object/from16 p1, p19

    iput-object p1, p0, Lod/u1;->D:Lr0/u0;

    move-object/from16 p1, p20

    iput-object p1, p0, Lod/u1;->E:Lr0/u0;

    move-object/from16 p1, p21

    iput-object p1, p0, Lod/u1;->F:Lr0/u0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lm/m;

    move-object/from16 v13, p2

    check-cast v13, Lr0/q;

    move-object/from16 v2, p3

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v3, "$this$AnimatedVisibility"

    invoke-static {v1, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v1, v2, 0x11

    const/16 v3, 0x10

    const/4 v9, 0x0

    const/4 v15, 0x1

    if-eq v1, v3, :cond_0

    move v1, v15

    goto :goto_0

    :cond_0
    move v1, v9

    :goto_0
    and-int/2addr v2, v15

    invoke-virtual {v13, v2, v1}, Lr0/q;->T(IZ)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lu/h;->c:Lu/c;

    sget-object v2, Lf1/c;->x:Lf1/h;

    invoke-static {v1, v2, v13, v9}, Lu/p;->a(Lu/g;Lf1/h;Lr0/q;I)Lu/r;

    move-result-object v1

    iget-wide v2, v13, Lr0/q;->T:J

    invoke-static {v2, v3}, Ljava/lang/Long;->hashCode(J)I

    move-result v2

    invoke-virtual {v13}, Lr0/q;->m()Lr0/j1;

    move-result-object v3

    sget-object v12, Lf1/o;->a:Lf1/o;

    invoke-static {v12, v13}, Lf1/a;->c(Lf1/r;Lr0/q;)Lf1/r;

    move-result-object v4

    sget-object v5, Le2/h;->b:Le2/g;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v5, Le2/g;->b:Le2/f;

    invoke-virtual {v13}, Lr0/q;->e0()V

    iget-boolean v6, v13, Lr0/q;->S:Z

    if-eqz v6, :cond_1

    invoke-virtual {v13, v5}, Lr0/q;->l(Li9/a;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Lr0/q;->o0()V

    :goto_1
    sget-object v5, Le2/g;->f:Le2/e;

    invoke-static {v5, v1, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    sget-object v1, Le2/g;->e:Le2/e;

    invoke-static {v1, v3, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Le2/g;->g:Le2/e;

    invoke-static {v13, v1, v2}, Lr0/r;->w(Lr0/q;Ljava/lang/Integer;Li9/e;)V

    sget-object v1, Le2/g;->h:Le2/d;

    invoke-static {v13, v1}, Lr0/r;->A(Lr0/q;Li9/c;)V

    sget-object v1, Le2/g;->d:Le2/e;

    invoke-static {v1, v4, v13}, Lr0/r;->E(Li9/e;Ljava/lang/Object;Lr0/q;)V

    iget-object v1, v0, Lod/u1;->p:Lr0/r2;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sget-object v14, Lr0/m;->a:Lr0/e;

    const/4 v10, 0x6

    if-eqz v1, :cond_3

    const v1, 0x1509a78a

    invoke-virtual {v13, v1}, Lr0/q;->b0(I)V

    iget-object v1, v0, Lod/u1;->q:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lqd/q;

    iget-object v1, v0, Lod/u1;->r:Lr0/r2;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lqd/n;

    iget-object v1, v0, Lod/u1;->s:Lr0/r2;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lqd/e;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v12, v1}, Lu/b1;->d(Lf1/r;F)Lf1/r;

    move-result-object v5

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_2

    new-instance v1, Ln/k1;

    const/16 v6, 0x13

    invoke-direct {v1, v6}, Ln/k1;-><init>(I)V

    invoke-virtual {v13, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_2
    move-object v6, v1

    check-cast v6, Li9/a;

    const/16 v8, 0x6c00

    move-object v7, v13

    invoke-static/range {v2 .. v8}, Lod/m;->B(Lqd/q;Lqd/n;Lqd/e;Lf1/r;Li9/a;Lr0/q;I)V

    int-to-float v1, v10

    invoke-static {v12, v1}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v1

    invoke-static {v1, v13}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-virtual {v13, v9}, Lr0/q;->q(Z)V

    goto :goto_2

    :cond_3
    const v1, 0x150cacd8

    invoke-virtual {v13, v1}, Lr0/q;->b0(I)V

    invoke-virtual {v13, v9}, Lr0/q;->q(Z)V

    :goto_2
    iget-object v1, v0, Lod/u1;->t:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/q0;

    iget-object v3, v0, Lod/u1;->u:Lr0/u0;

    invoke-interface {v3}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd/n;

    iget-boolean v4, v3, Ldd/n;->l:Z

    iget-object v3, v0, Lod/u1;->l:Lua/nav/c;

    invoke-virtual {v13, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v5

    iget-object v6, v0, Lod/u1;->m:Landroid/content/Context;

    invoke-virtual {v13, v6}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    or-int/2addr v5, v7

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-nez v5, :cond_4

    if-ne v7, v14, :cond_5

    :cond_4
    new-instance v7, Lod/l2;

    const/4 v5, 0x5

    invoke-direct {v7, v3, v6, v5}, Lod/l2;-><init>(Lua/nav/c;Landroid/content/Context;I)V

    invoke-virtual {v13, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_5
    check-cast v7, Lj9/l;

    move-object v5, v7

    check-cast v5, Li9/a;

    invoke-virtual {v13, v3}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v7

    iget-object v8, v0, Lod/u1;->n:Lu9/t;

    invoke-virtual {v13, v8}, Lr0/q;->i(Ljava/lang/Object;)Z

    move-result v9

    or-int/2addr v7, v9

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v9

    iget-object v11, v0, Lod/u1;->v:Lr0/u0;

    iget-object v10, v0, Lod/u1;->w:Lr0/u0;

    if-nez v7, :cond_6

    if-ne v9, v14, :cond_7

    :cond_6
    new-instance v9, Lod/m2;

    invoke-direct {v9, v3, v8, v11, v10}, Lod/m2;-><init>(Lua/nav/c;Lu9/t;Lr0/u0;Lr0/u0;)V

    invoke-virtual {v13, v9}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_7
    check-cast v9, Lj9/l;

    check-cast v9, Li9/f;

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v14, :cond_8

    new-instance v7, Lod/n2;

    invoke-direct {v7, v11, v10}, Lod/n2;-><init>(Lr0/u0;Lr0/u0;)V

    invoke-virtual {v13, v7}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_8
    check-cast v7, Lj9/l;

    check-cast v7, Li9/c;

    invoke-virtual {v13}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v14, :cond_9

    new-instance v8, Lod/a1;

    const/4 v10, 0x0

    iget-object v11, v0, Lod/u1;->x:Lr0/u0;

    iget-object v15, v0, Lod/u1;->y:Lr0/u0;

    invoke-direct {v8, v11, v15, v10}, Lod/a1;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v13, v8}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_9
    check-cast v8, Li9/a;

    const v11, 0xc30048

    move-object v10, v6

    move-object v6, v9

    move-object v9, v8

    iget-boolean v8, v0, Lod/u1;->o:Z

    move-object v15, v13

    move-object v13, v10

    move-object v10, v15

    const/4 v15, 0x6

    invoke-static/range {v2 .. v11}, Lod/g3;->U(Lsc/q0;Lua/nav/c;ZLi9/a;Li9/f;Li9/c;ZLi9/a;Lr0/q;I)V

    move-object v7, v10

    int-to-float v15, v15

    invoke-static {v12, v15}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v2

    invoke-static {v2, v7}, Lu/b;->e(Lf1/r;Lr0/q;)V

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lsc/q0;

    iget-object v1, v0, Lod/u1;->z:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lua/nav/routing/Favorites;

    iget-object v1, v0, Lod/u1;->A:Lr0/r2;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    iget-object v1, v0, Lod/u1;->B:Lr0/u0;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    iget-object v1, v0, Lod/u1;->C:Lr0/r2;

    invoke-interface {v1}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v8

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    iget-object v10, v0, Lod/u1;->D:Lr0/u0;

    iget-object v11, v0, Lod/u1;->E:Lr0/u0;

    if-ne v1, v14, :cond_a

    new-instance v1, Lod/a1;

    move-object/from16 p1, v2

    const/4 v2, 0x1

    invoke-direct {v1, v10, v11, v2}, Lod/a1;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_3

    :cond_a
    move-object/from16 p1, v2

    :goto_3
    check-cast v1, Li9/a;

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v14, :cond_b

    new-instance v2, Lod/a1;

    move-object/from16 p3, v1

    const/4 v1, 0x2

    invoke-direct {v2, v11, v10, v1}, Lod/a1;-><init>(Lr0/u0;Lr0/u0;I)V

    invoke-virtual {v7, v2}, Lr0/q;->l0(Ljava/lang/Object;)V

    goto :goto_4

    :cond_b
    move-object/from16 p3, v1

    :goto_4
    move-object v10, v2

    check-cast v10, Li9/a;

    invoke-virtual {v7}, Lr0/q;->Q()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v14, :cond_c

    new-instance v1, Lb0/u;

    const/16 v2, 0xb

    iget-object v0, v0, Lod/u1;->F:Lr0/u0;

    invoke-direct {v1, v0, v2}, Lb0/u;-><init>(Lr0/u0;I)V

    invoke-virtual {v7, v1}, Lr0/q;->l0(Ljava/lang/Object;)V

    :cond_c
    move-object v11, v1

    check-cast v11, Li9/a;

    const v14, 0x6d80248

    move-object/from16 v2, p1

    move-object v0, v12

    move-object v12, v13

    move-object v13, v7

    move-wide v7, v8

    move-object/from16 v9, p3

    invoke-static/range {v2 .. v14}, Lod/g3;->b(Lsc/q0;Lua/nav/c;Lua/nav/routing/Favorites;IIDLi9/a;Li9/a;Li9/a;Landroid/content/Context;Lr0/q;I)V

    invoke-static {v0, v15}, Lu/b1;->f(Lf1/r;F)Lf1/r;

    move-result-object v0

    invoke-static {v0, v13}, Lu/b;->e(Lf1/r;Lr0/q;)V

    const/4 v0, 0x1

    invoke-virtual {v13, v0}, Lr0/q;->q(Z)V

    goto :goto_5

    :cond_d
    invoke-virtual {v13}, Lr0/q;->W()V

    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
