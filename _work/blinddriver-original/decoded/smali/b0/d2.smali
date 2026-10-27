.class public final synthetic Lb0/d2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p6, p0, Lb0/d2;->l:I

    iput-object p1, p0, Lb0/d2;->m:Ljava/lang/Object;

    iput-object p2, p0, Lb0/d2;->n:Ljava/lang/Object;

    iput-object p3, p0, Lb0/d2;->o:Ljava/lang/Object;

    iput-object p4, p0, Lb0/d2;->p:Ljava/lang/Object;

    iput-object p5, p0, Lb0/d2;->q:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lu2/x;Lk0/b;Lu2/k;Lb0/o;Li9/c;)V
    .locals 1

    .line 2
    const/4 v0, 0x2

    iput v0, p0, Lb0/d2;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb0/d2;->o:Ljava/lang/Object;

    iput-object p2, p0, Lb0/d2;->m:Ljava/lang/Object;

    iput-object p3, p0, Lb0/d2;->n:Ljava/lang/Object;

    iput-object p4, p0, Lb0/d2;->p:Ljava/lang/Object;

    iput-object p5, p0, Lb0/d2;->q:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 24

    move-object/from16 v0, p0

    iget v1, v0, Lb0/d2;->l:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lb0/d2;->m:Ljava/lang/Object;

    check-cast v1, Lgc/f;

    iget-object v2, v0, Lb0/d2;->n:Ljava/lang/Object;

    check-cast v2, Lj9/y;

    iget-object v3, v0, Lb0/d2;->o:Ljava/lang/Object;

    check-cast v3, Lj9/w;

    iget-object v6, v0, Lb0/d2;->p:Ljava/lang/Object;

    check-cast v6, Lr/n2;

    iget-object v0, v0, Lb0/d2;->q:Ljava/lang/Object;

    check-cast v0, Lj9/u;

    move-object/from16 v7, p1

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    iget-object v8, v1, Lgc/f;->f:Ljava/lang/Object;

    check-cast v8, Lw9/e;

    invoke-static {v8}, Lgc/f;->j(Lw9/e;)Lr/g1;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v1, v8}, Lgc/f;->k(Lr/g1;)V

    iget-object v1, v2, Lj9/y;->m:Ljava/lang/Object;

    check-cast v1, Lr/g1;

    invoke-virtual {v1, v8}, Lr/g1;->a(Lr/g1;)Lr/g1;

    move-result-object v1

    iput-object v1, v2, Lj9/y;->m:Ljava/lang/Object;

    iget-wide v1, v1, Lr/g1;->a:J

    invoke-virtual {v6, v1, v2}, Lr/n2;->e(J)J

    move-result-wide v1

    invoke-virtual {v6, v1, v2}, Lr/n2;->i(J)F

    move-result v1

    iput v1, v3, Lj9/w;->l:F

    sub-float/2addr v1, v7

    invoke-static {v1}, Lr/f1;->a(F)Z

    move-result v1

    xor-int/2addr v1, v5

    iput-boolean v1, v0, Lj9/u;->l:Z

    :cond_0
    if-eqz v8, :cond_1

    move v4, v5

    :cond_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :pswitch_0
    iget-object v1, v0, Lb0/d2;->m:Ljava/lang/Object;

    check-cast v1, Li9/c;

    iget-object v6, v0, Lb0/d2;->n:Ljava/lang/Object;

    check-cast v6, Lr0/r2;

    iget-object v7, v0, Lb0/d2;->o:Ljava/lang/Object;

    check-cast v7, Lr0/u0;

    iget-object v8, v0, Lb0/d2;->p:Ljava/lang/Object;

    check-cast v8, Lua/nav/a;

    iget-object v0, v0, Lb0/d2;->q:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v9, p1

    check-cast v9, Lw/e;

    const-string v10, "$this$group"

    invoke-static {v9, v10}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, Lod/s5;

    invoke-direct {v10, v1, v6, v7, v4}, Lod/s5;-><init>(Li9/c;Lr0/r2;Lr0/u0;I)V

    new-instance v4, Lz0/d;

    const v7, -0x2bdb7366

    invoke-direct {v4, v7, v5, v10}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v9, v3, v4, v2}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    new-instance v4, Lod/o1;

    invoke-direct {v4, v8, v1, v6}, Lod/o1;-><init>(Lua/nav/a;Li9/c;Lr0/r2;)V

    new-instance v1, Lz0/d;

    const v6, -0x44ebff7d

    invoke-direct {v1, v6, v5, v4}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v9, v3, v1, v2}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    new-instance v1, Lod/i;

    const/4 v4, 0x6

    invoke-direct {v1, v0, v4}, Lod/i;-><init>(Lr0/u0;I)V

    new-instance v0, Lz0/d;

    const v4, 0xe33a62

    invoke-direct {v0, v4, v5, v1}, Lz0/d;-><init>(IZLt8/e;)V

    invoke-static {v9, v3, v0, v2}, Lw/e;->a(Lw/e;Ljava/lang/String;Li9/f;I)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v1, v0, Lb0/d2;->m:Ljava/lang/Object;

    check-cast v1, Lhd/e;

    iget-object v2, v0, Lb0/d2;->n:Ljava/lang/Object;

    check-cast v2, Lr0/u0;

    iget-object v5, v0, Lb0/d2;->o:Ljava/lang/Object;

    check-cast v5, Lc/i;

    iget-object v6, v0, Lb0/d2;->p:Ljava/lang/Object;

    check-cast v6, Lr0/u0;

    iget-object v0, v0, Lb0/d2;->q:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v7, p1

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-interface {v2, v7}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v2, v1, Lhd/e;->e:Landroid/content/SharedPreferences;

    const-string v7, "enabled"

    invoke-static {v2, v7, v8}, Lr0/i;->n(Landroid/content/SharedPreferences;Ljava/lang/String;Z)V

    iput-boolean v4, v1, Lhd/e;->i:Z

    if-eqz v8, :cond_2

    invoke-virtual {v1}, Lhd/e;->d()V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lhd/e;->e()V

    iget-object v2, v1, Lhd/e;->f:Lx9/l0;

    new-instance v4, Lhd/m;

    const/4 v7, 0x7

    invoke-direct {v4, v3, v3, v7}, Lhd/m;-><init>(Lhd/l;Ljava/lang/Integer;I)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_0
    if-eqz v8, :cond_4

    iget-object v2, v1, Lhd/e;->e:Landroid/content/SharedPreferences;

    const-string v4, "address"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    invoke-virtual {v1}, Lhd/e;->c()Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-virtual {v5, v0}, Lc/i;->a(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v1}, Lhd/e;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v6, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_2
    iget-object v1, v0, Lb0/d2;->m:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Lua/nav/c;

    iget-object v1, v0, Lb0/d2;->n:Ljava/lang/Object;

    check-cast v1, Lr0/u0;

    iget-object v3, v0, Lb0/d2;->o:Ljava/lang/Object;

    check-cast v3, Lu9/t;

    iget-object v4, v0, Lb0/d2;->p:Ljava/lang/Object;

    check-cast v4, Lr0/u0;

    iget-object v0, v0, Lb0/d2;->q:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lr0/u0;

    move-object/from16 v0, p1

    check-cast v0, Lua/nav/routing/SavedAddress;

    const-string v6, "a"

    invoke-static {v0, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lod/g3;->v(Lr0/u0;)V

    invoke-virtual {v2, v0}, Lua/nav/c;->I(Lua/nav/routing/SavedAddress;)Lsc/d;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v7, v0, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lod/g3;->g(Lua/nav/c;Lu9/t;Lr0/u0;Lr0/u0;Lsc/d;Lua/nav/routing/GeoPoint;Z)V

    :cond_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_3
    iget-object v1, v0, Lb0/d2;->o:Ljava/lang/Object;

    check-cast v1, Lu2/x;

    iget-object v2, v0, Lb0/d2;->m:Ljava/lang/Object;

    check-cast v2, Lk0/b;

    iget-object v4, v0, Lb0/d2;->n:Ljava/lang/Object;

    check-cast v4, Lu2/k;

    iget-object v5, v0, Lb0/d2;->p:Ljava/lang/Object;

    check-cast v5, Lb0/o;

    iget-object v0, v0, Lb0/d2;->q:Ljava/lang/Object;

    check-cast v0, Li9/c;

    move-object/from16 v6, p1

    check-cast v6, Lk0/s;

    iget-object v2, v2, Lk0/b;->a:Lk0/n;

    iput-object v1, v6, Lk0/s;->h:Lu2/x;

    iput-object v4, v6, Lk0/s;->i:Lu2/k;

    iput-object v5, v6, Lk0/s;->c:Li9/c;

    iput-object v0, v6, Lk0/s;->d:Li9/c;

    if-eqz v2, :cond_6

    iget-object v0, v2, Lk0/n;->A:Lb0/r1;

    goto :goto_2

    :cond_6
    move-object v0, v3

    :goto_2
    iput-object v0, v6, Lk0/s;->e:Lb0/r1;

    if-eqz v2, :cond_7

    iget-object v0, v2, Lk0/n;->B:Lm0/v1;

    goto :goto_3

    :cond_7
    move-object v0, v3

    :goto_3
    iput-object v0, v6, Lk0/s;->f:Lm0/v1;

    if-eqz v2, :cond_8

    sget-object v0, Lf2/l1;->s:Lr0/s2;

    invoke-static {v2, v0}, Le2/l;->h(Le2/i;Lr0/m1;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lf2/p2;

    :cond_8
    iput-object v3, v6, Lk0/s;->g:Lf2/p2;

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_4
    iget-object v1, v0, Lb0/d2;->m:Ljava/lang/Object;

    check-cast v1, Lc/a;

    iget-object v2, v0, Lb0/d2;->n:Ljava/lang/Object;

    check-cast v2, Lf/h;

    iget-object v3, v0, Lb0/d2;->o:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v4, v0, Lb0/d2;->p:Ljava/lang/Object;

    check-cast v4, Lg/a;

    iget-object v0, v0, Lb0/d2;->q:Ljava/lang/Object;

    check-cast v0, Lr0/u0;

    move-object/from16 v6, p1

    check-cast v6, Lr0/g0;

    new-instance v6, Lb/e0;

    invoke-direct {v6, v0}, Lb/e0;-><init>(Ljava/lang/Object;)V

    iget-object v0, v2, Lf/h;->g:Landroid/os/Bundle;

    const-string v7, "key"

    invoke-static {v3, v7}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lf/h;->c(Ljava/lang/String;)V

    iget-object v7, v2, Lf/h;->e:Ljava/util/LinkedHashMap;

    new-instance v8, Lf/e;

    invoke-direct {v8, v4, v6}, Lf/e;-><init>(Lg/a;Lf/b;)V

    invoke-interface {v7, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v2, Lf/h;->f:Ljava/util/LinkedHashMap;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-virtual {v7, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v6, v8}, Lb/e0;->d(Ljava/lang/Object;)V

    :cond_9
    invoke-static {v3, v0}, Lc6/o;->Q(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lf/a;

    if-eqz v7, :cond_a

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    iget v0, v7, Lf/a;->l:I

    iget-object v7, v7, Lf/a;->m:Landroid/content/Intent;

    invoke-virtual {v4, v7, v0}, Lg/a;->c(Landroid/content/Intent;I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v6, v0}, Lb/e0;->d(Ljava/lang/Object;)V

    :cond_a
    new-instance v0, Lf/g;

    invoke-direct {v0, v2, v3, v4}, Lf/g;-><init>(Lf/h;Ljava/lang/String;Lg/a;)V

    iput-object v0, v1, Lc/a;->a:Lf/g;

    new-instance v0, Lb0/u0;

    invoke-direct {v0, v5, v1}, Lb0/u0;-><init>(ILjava/lang/Object;)V

    return-object v0

    :pswitch_5
    iget-object v1, v0, Lb0/d2;->m:Ljava/lang/Object;

    check-cast v1, Lk0/h;

    iget-object v6, v0, Lb0/d2;->n:Ljava/lang/Object;

    check-cast v6, Lu2/q;

    iget-object v7, v0, Lb0/d2;->o:Ljava/lang/Object;

    check-cast v7, Lu2/x;

    iget-object v8, v0, Lb0/d2;->p:Ljava/lang/Object;

    check-cast v8, Lb0/r1;

    iget-object v0, v0, Lb0/d2;->q:Ljava/lang/Object;

    check-cast v0, Lm1/j0;

    move-object/from16 v9, p1

    check-cast v9, Le2/j0;

    invoke-virtual {v9}, Le2/j0;->b()V

    iget-object v10, v9, Le2/j0;->l:Lo1/b;

    iget-object v1, v1, Lk0/h;->c:Lr0/a1;

    invoke-virtual {v1}, Lr0/a1;->g()F

    move-result v1

    const/4 v11, 0x0

    cmpg-float v12, v1, v11

    if-nez v12, :cond_b

    goto/16 :goto_e

    :cond_b
    iget-wide v12, v7, Lu2/x;->b:J

    sget v7, Lp2/l0;->c:I

    const/16 v7, 0x20

    shr-long/2addr v12, v7

    long-to-int v12, v12

    invoke-interface {v6, v12}, Lu2/q;->s(I)I

    move-result v6

    invoke-virtual {v8}, Lb0/r1;->d()Lb0/z2;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, v8, Lb0/z2;->a:Lp2/j0;

    invoke-virtual {v8, v6}, Lp2/j0;->c(I)Ll1/c;

    move-result-object v6

    goto :goto_4

    :cond_c
    new-instance v6, Ll1/c;

    invoke-direct {v6, v11, v11, v11, v11}, Ll1/c;-><init>(FFFF)V

    :goto_4
    sget v8, Lb0/f2;->a:F

    invoke-virtual {v9, v8}, Le2/j0;->V(F)F

    move-result v8

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->floor(D)D

    move-result-wide v8

    double-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v11, v8, v9

    if-gez v11, :cond_d

    move v8, v9

    :cond_d
    iget v9, v6, Ll1/c;->a:F

    const/4 v11, 0x2

    int-to-float v12, v11

    div-float v12, v8, v12

    add-float/2addr v9, v12

    invoke-interface {v10}, Lo1/d;->d()J

    move-result-wide v13

    shr-long/2addr v13, v7

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    sub-float/2addr v13, v12

    cmpl-float v14, v9, v13

    if-lez v14, :cond_e

    move v9, v13

    :cond_e
    cmpg-float v13, v9, v12

    if-gez v13, :cond_f

    goto :goto_5

    :cond_f
    move v12, v9

    :goto_5
    float-to-int v9, v8

    rem-int/2addr v9, v11

    if-ne v9, v5, :cond_10

    float-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->floor(D)D

    move-result-wide v11

    double-to-float v9, v11

    const/high16 v11, 0x3f000000    # 0.5f

    add-float/2addr v9, v11

    goto :goto_6

    :cond_10
    float-to-double v11, v12

    invoke-static {v11, v12}, Ljava/lang/Math;->rint(D)D

    move-result-wide v11

    double-to-float v9, v11

    :goto_6
    iget v11, v6, Ll1/c;->b:F

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v12

    int-to-long v12, v12

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v14, v11

    shl-long v11, v12, v7

    const-wide v16, 0xffffffffL

    and-long v13, v14, v16

    or-long v19, v11, v13

    iget v6, v6, Ll1/c;->d:F

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v11, v9

    invoke-static {v6}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v6

    int-to-long v13, v6

    shl-long v6, v11, v7

    and-long v11, v13, v16

    or-long v21, v6, v11

    iget-object v6, v10, Lo1/b;->l:Lo1/a;

    iget-object v6, v6, Lo1/a;->c:Lm1/o;

    iget-object v7, v10, Lo1/b;->o:Lf6/v;

    if-nez v7, :cond_11

    invoke-static {}, Lm1/v;->g()Lf6/v;

    move-result-object v7

    invoke-virtual {v7, v5}, Lf6/v;->w(I)V

    iput-object v7, v10, Lo1/b;->o:Lf6/v;

    :cond_11
    iget-object v9, v7, Lf6/v;->b:Ljava/lang/Object;

    check-cast v9, Landroid/graphics/Paint;

    invoke-interface {v10}, Lo1/d;->d()J

    move-result-wide v10

    invoke-virtual {v0, v1, v10, v11, v7}, Lm1/j0;->a(FJLf6/v;)V

    iget-object v0, v7, Lf6/v;->d:Ljava/lang/Object;

    check-cast v0, Lm1/j;

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v7, v3}, Lf6/v;->q(Lm1/j;)V

    :cond_12
    iget v0, v7, Lf6/v;->a:I

    if-ne v0, v2, :cond_13

    goto :goto_7

    :cond_13
    invoke-virtual {v7, v2}, Lf6/v;->o(I)V

    :goto_7
    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    cmpg-float v0, v0, v8

    if-nez v0, :cond_14

    goto :goto_8

    :cond_14
    invoke-virtual {v7, v8}, Lf6/v;->v(F)V

    :goto_8
    invoke-virtual {v9}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    cmpg-float v0, v0, v1

    if-nez v0, :cond_15

    goto :goto_9

    :cond_15
    invoke-virtual {v9, v1}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    :goto_9
    invoke-virtual {v7}, Lf6/v;->j()I

    move-result v0

    if-nez v0, :cond_16

    goto :goto_a

    :cond_16
    invoke-virtual {v7, v4}, Lf6/v;->t(I)V

    :goto_a
    invoke-virtual {v7}, Lf6/v;->k()I

    move-result v0

    if-nez v0, :cond_17

    goto :goto_b

    :cond_17
    invoke-virtual {v7, v4}, Lf6/v;->u(I)V

    :goto_b
    invoke-virtual {v9}, Landroid/graphics/Paint;->isFilterBitmap()Z

    move-result v0

    if-ne v0, v5, :cond_18

    :goto_c
    move-object/from16 v18, v6

    move-object/from16 v23, v7

    goto :goto_d

    :cond_18
    invoke-virtual {v7, v5}, Lf6/v;->r(I)V

    goto :goto_c

    :goto_d
    invoke-interface/range {v18 .. v23}, Lm1/o;->b(JJLf6/v;)V

    :goto_e
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
