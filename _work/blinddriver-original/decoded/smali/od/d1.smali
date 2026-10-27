.class public final synthetic Lod/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lua/nav/c;


# direct methods
.method public synthetic constructor <init>(Lua/nav/c;I)V
    .locals 0

    iput p2, p0, Lod/d1;->l:I

    iput-object p1, p0, Lod/d1;->m:Lua/nav/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 46

    move-object/from16 v0, p0

    iget v1, v0, Lod/d1;->l:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v2, v1, Lua/nav/c;->q:Lx9/l0;

    :cond_0
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lsc/q0;

    sget-object v14, Lu8/r;->l:Lu8/r;

    const/16 v19, 0x0

    const v20, 0xfbff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v3 .. v20}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lua/nav/c;->G()V

    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_0
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    :cond_1
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsc/q0;

    const/16 v18, 0x0

    const v19, 0xffbf

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v19}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    invoke-virtual {v0}, Lua/nav/c;->W()V

    goto :goto_0

    :pswitch_2
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->x:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->d:Lad/j0;

    iget-object v1, v0, Lad/j0;->J1:Lua/nav/routing/Route;

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    iput-object v1, v0, Lad/j0;->J1:Lua/nav/routing/Route;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lad/j0;->K1:J

    iget-object v1, v0, Lad/j0;->a:Ldd/k0;

    const-string v2, "reroute_undo_dismiss"

    invoke-virtual {v1, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v1, v0, Lad/j0;->j:Lx9/l0;

    :cond_3
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lad/a0;

    const/16 v40, -0x1

    const/16 v41, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-static/range {v2 .. v41}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_4
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v1, v0, Lua/nav/c;->d:Lad/j0;

    iget-object v2, v1, Lad/j0;->j:Lx9/l0;

    iget-object v0, v1, Lad/j0;->J1:Lua/nav/routing/Route;

    if-nez v0, :cond_4

    goto/16 :goto_6

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v1, Lad/j0;->Y0:Lua/nav/routing/GeoPoint;

    const/4 v6, 0x0

    if-eqz v5, :cond_7

    iget-wide v7, v1, Lad/j0;->d1:J

    sub-long v7, v3, v7

    const-wide/16 v9, 0xbb8

    cmp-long v7, v7, v9

    if-gez v7, :cond_5

    goto :goto_2

    :cond_5
    move-object v5, v6

    :goto_2
    if-nez v5, :cond_6

    goto :goto_4

    :cond_6
    :goto_3
    move-object v8, v5

    goto :goto_5

    :cond_7
    :goto_4
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lad/a0;

    iget-object v5, v5, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    goto :goto_3

    :goto_5
    iput-object v6, v1, Lad/j0;->J1:Lua/nav/routing/Route;

    const-wide/16 v9, 0x0

    iput-wide v9, v1, Lad/j0;->K1:J

    iget-object v5, v1, Lad/j0;->a:Ldd/k0;

    const-string v7, "reroute_undo"

    invoke-virtual {v5, v7}, Ldd/k0;->n(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v1, v0, v5}, Lad/j0;->f(Lua/nav/routing/Route;Z)V

    iget-object v7, v1, Lad/j0;->T:Lad/x1;

    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    invoke-virtual {v0}, Lua/nav/routing/Route;->c()D

    move-result-wide v9

    invoke-virtual {v0}, Lua/nav/routing/Route;->c()D

    move-result-wide v11

    const/4 v15, 0x0

    const/16 v16, 0x10

    const-wide/16 v13, 0x0

    invoke-static/range {v7 .. v16}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v0

    iget-wide v8, v0, Lad/w1;->a:D

    invoke-virtual {v7, v8, v9}, Lad/x1;->g(D)V

    const-wide/high16 v7, 0x7ff8000000000000L    # Double.NaN

    iput-wide v7, v1, Lad/j0;->A:D

    :cond_8
    iput-object v6, v1, Lad/j0;->g1:Lua/nav/routing/GeoPoint;

    const-wide/32 v6, 0x9c40

    add-long v8, v3, v6

    iput-wide v8, v1, Lad/j0;->L1:J

    iget-object v0, v1, Lad/j0;->L0:Lad/f;

    invoke-virtual {v0, v3, v4, v6, v7}, Lad/f;->c(JJ)V

    :cond_9
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lad/a0;

    const/16 v44, -0x2001

    const/16 v45, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const-wide/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const-wide/16 v32, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    invoke-static/range {v6 .. v45}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lad/j0;->b:Lad/r2;

    sget-object v2, Lcd/d;->n1:Lcd/c;

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    invoke-static {v0, v2, v5, v3}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    const-string v0, "GPS"

    invoke-virtual {v1, v0}, Lad/j0;->y(Ljava/lang/String;)V

    :goto_6
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_5
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->d:Lad/j0;

    iget-object v1, v0, Lad/j0;->L0:Lad/f;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x15f90

    invoke-virtual {v1, v2, v3, v4, v5}, Lad/f;->c(JJ)V

    iget-object v1, v0, Lad/j0;->a:Ldd/k0;

    const-string v2, "blind_deviation_cancel"

    invoke-virtual {v1, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v1, v0, Lad/j0;->j:Lx9/l0;

    :cond_a
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lad/a0;

    const v40, -0xc000001

    const/16 v41, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    invoke-static/range {v2 .. v41}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_6
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->d:Lad/j0;

    iget-object v1, v0, Lad/j0;->L0:Lad/f;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x4e20

    invoke-virtual {v1, v2, v3, v4, v5}, Lad/f;->c(JJ)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lad/j0;->n(Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v1, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v0, v1, Lua/nav/c;->d:Lad/j0;

    iget-object v2, v0, Lad/j0;->a:Ldd/k0;

    const-string v3, "reroute_cancel"

    invoke-virtual {v2, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v2, v0, Lad/j0;->j:Lx9/l0;

    :cond_b
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lad/a0;

    sget-object v26, Lu8/r;->l:Lu8/r;

    const v41, -0x60001

    const/16 v42, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const-wide/16 v29, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-static/range {v3 .. v42}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lua/nav/c;->F:Lx9/l0;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v1, v0, Lua/nav/c;->d:Lad/j0;

    iget-object v0, v0, Lua/nav/c;->F:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    iget-object v3, v1, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lad/a0;

    iget-object v3, v3, Lad/a0;->s:Ljava/util/List;

    invoke-static {v2, v3}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/routing/Route;

    const/4 v3, 0x0

    if-nez v2, :cond_c

    goto :goto_7

    :cond_c
    invoke-virtual {v1, v2, v3}, Lad/j0;->f(Lua/nav/routing/Route;Z)V

    :goto_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->x:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v1, v0, Lua/nav/c;->x:Lx9/l0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lua/nav/c;->i()Lad/p1;

    move-result-object v1

    if-nez v1, :cond_d

    goto :goto_8

    :cond_d
    iget-object v2, v1, Lad/p1;->a:Ldd/l0;

    iget-object v4, v0, Lua/nav/c;->c:Ldd/k0;

    iget-wide v5, v1, Lad/p1;->c:J

    const/16 v7, 0x3e8

    int-to-long v7, v7

    div-long/2addr v5, v7

    iget-object v7, v2, Ldd/l0;->i:Ljava/lang/Float;

    if-eqz v7, :cond_e

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v3

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :cond_e
    iget-object v1, v1, Lad/p1;->b:Lad/o1;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "reroute_from_net age_s="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " acc="

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " src="

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v0, v0, Lua/nav/c;->d:Lad/j0;

    new-instance v1, Lua/nav/routing/GeoPoint;

    iget-wide v3, v2, Ldd/l0;->d:D

    iget-wide v5, v2, Ldd/l0;->e:D

    invoke-direct {v1, v3, v4, v5, v6}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lad/j0;->C(Lad/j0;Lua/nav/routing/GeoPoint;I)V

    :goto_8
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_b
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v1, v0, Lua/nav/c;->x:Lx9/l0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v1, v0, Lua/nav/c;->c:Ldd/k0;

    iget-object v1, v1, Ldd/k0;->j:Ldd/m;

    iget-object v1, v1, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldd/n;

    iget-object v1, v1, Ldd/n;->c:Ldd/l0;

    if-nez v1, :cond_f

    goto :goto_9

    :cond_f
    iget-object v0, v0, Lua/nav/c;->d:Lad/j0;

    new-instance v2, Lua/nav/routing/GeoPoint;

    iget-wide v3, v1, Ldd/l0;->d:D

    iget-wide v5, v1, Ldd/l0;->e:D

    invoke-direct {v2, v3, v4, v5, v6}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    const/4 v1, 0x6

    invoke-static {v0, v2, v1}, Lad/j0;->C(Lad/j0;Lua/nav/routing/GeoPoint;I)V

    :goto_9
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_c
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v1, v0, Lua/nav/c;->x:Lx9/l0;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v0, Lua/nav/c;->d:Lad/j0;

    iget-object v1, v0, Lad/j0;->j:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lad/a0;

    iget-object v1, v1, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    if-nez v1, :cond_10

    goto :goto_a

    :cond_10
    const/4 v2, 0x6

    invoke-static {v0, v1, v2}, Lad/j0;->C(Lad/j0;Lua/nav/routing/GeoPoint;I)V

    :goto_a
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_d
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v1, v0, Lua/nav/c;->d:Lad/j0;

    iget-boolean v1, v1, Lad/j0;->K:Z

    xor-int/lit8 v1, v1, 0x1

    iget-object v2, v0, Lua/nav/c;->d:Lad/j0;

    iput-boolean v1, v2, Lad/j0;->K:Z

    iget-object v2, v2, Lad/j0;->a:Ldd/k0;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "simulate_gps_loss="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    iget-object v0, v0, Lua/nav/c;->k:Lx9/l0;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    invoke-virtual {v0}, Lua/nav/c;->j()V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    invoke-virtual {v0}, Lua/nav/c;->W()V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->x:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    invoke-virtual {v0}, Lua/nav/c;->W()V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v0, v0, Lua/nav/c;->x:Lx9/l0;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    sget-object v1, Lsc/d;->m:Lsc/d;

    invoke-virtual {v0, v1}, Lua/nav/c;->k(Lsc/d;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    sget-object v1, Lsc/d;->m:Lsc/d;

    invoke-virtual {v0, v1}, Lua/nav/c;->Y(Lsc/d;)Z

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    sget-object v1, Lsc/d;->l:Lsc/d;

    invoke-virtual {v0, v1}, Lua/nav/c;->k(Lsc/d;)V

    goto/16 :goto_0

    :pswitch_16
    iget-object v1, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v2, v1, Lua/nav/c;->q:Lx9/l0;

    :cond_11
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lsc/q0;

    iget-object v4, v3, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    iget-object v5, v3, Lsc/q0;->d:Ljava/lang/String;

    iget-object v6, v3, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    iget-object v7, v3, Lsc/q0;->b:Ljava/lang/String;

    iget-object v8, v3, Lsc/q0;->e:Ljava/util/List;

    invoke-static {v8}, Lu8/m;->t0(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    sget-object v14, Lu8/r;->l:Lu8/r;

    const/16 v19, 0x0

    const v20, 0xfbe0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v3 .. v20}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v1}, Lua/nav/c;->G()V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    sget-object v1, Lsc/d;->l:Lsc/d;

    invoke-virtual {v0, v1}, Lua/nav/c;->Y(Lsc/d;)Z

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/q0;

    iget-object v3, v2, Lsc/q0;->h:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_12

    goto/16 :goto_d

    :cond_12
    iget-object v2, v2, Lsc/q0;->i:Ljava/util/List;

    if-eqz v2, :cond_13

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13

    goto :goto_b

    :cond_13
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/geocoding/Place;

    iget-object v3, v3, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    const-string v4, "\u041d\u0435\u0449\u043e\u0434\u0430\u0432\u043d\u043e"

    invoke-static {v3, v4}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-virtual {v0}, Lua/nav/c;->l()V

    goto :goto_d

    :cond_15
    :goto_b
    iget-object v0, v0, Lua/nav/c;->B:Lua/nav/routing/b;

    invoke-virtual {v0}, Lua/nav/routing/b;->a()Ljava/util/List;

    move-result-object v0

    new-instance v11, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v11, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/routing/RecentPlaces$Item;

    new-instance v3, Lua/nav/geocoding/Place;

    iget-object v4, v2, Lua/nav/routing/RecentPlaces$Item;->a:Ljava/lang/String;

    new-instance v6, Lua/nav/routing/GeoPoint;

    iget-wide v7, v2, Lua/nav/routing/RecentPlaces$Item;->b:D

    iget-wide v9, v2, Lua/nav/routing/RecentPlaces$Item;->c:D

    invoke-direct {v6, v7, v8, v9, v10}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    const/4 v9, 0x0

    const/16 v10, 0x78

    const-string v5, "\u041d\u0435\u0449\u043e\u0434\u0430\u0432\u043d\u043e"

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v10}, Lua/nav/geocoding/Place;-><init>(Ljava/lang/String;Ljava/lang/String;Lua/nav/routing/GeoPoint;ZLjava/lang/String;ZI)V

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_16
    invoke-virtual {v11}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsc/q0;

    const/16 v18, 0x0

    const v19, 0xfeff

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v19}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    :cond_18
    :goto_d
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_19
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    :cond_19
    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsc/q0;

    sget-object v11, Lu8/r;->l:Lu8/r;

    const/16 v18, 0x0

    const v19, 0xfe7f

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v10, ""

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v2 .. v19}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0

    :pswitch_1a
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    sget-object v1, Lsc/d;->n:Lsc/d;

    invoke-virtual {v0, v1}, Lua/nav/c;->R(Lsc/d;)V

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, v0, Lod/d1;->m:Lua/nav/c;

    invoke-virtual {v0}, Lua/nav/c;->j()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
