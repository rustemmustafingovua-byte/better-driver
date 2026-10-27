.class public final Lua/nav/c;
.super Landroidx/lifecycle/a;
.source "SourceFile"


# static fields
.field public static final Companion:Lsc/j0;


# instance fields
.field public final A:Lx9/l0;

.field public final B:Lua/nav/routing/b;

.field public final C:Lx9/l0;

.field public final D:Lx9/l0;

.field public final E:Lx9/l0;

.field public final F:Lx9/l0;

.field public final G:Lx9/l0;

.field public H:Z

.field public I:Lt8/j;

.field public final J:Lx9/l0;

.field public final K:Lx9/l0;

.field public final L:Lx9/b0;

.field public final M:Lx9/b0;

.field public final c:Ldd/k0;

.field public final d:Lad/j0;

.field public final e:Lx9/l0;

.field public final f:Lid/d1;

.field public final g:Lx9/l0;

.field public final h:Lx9/l0;

.field public final i:Lx9/l0;

.field public final j:Lx9/l0;

.field public final k:Lx9/l0;

.field public final l:Lx9/l0;

.field public final m:Lx9/l0;

.field public final n:Lx9/l0;

.field public final o:Lbd/l;

.field public final p:Lx9/l0;

.field public final q:Lx9/l0;

.field public final r:Lx9/l0;

.field public final s:Ljava/io/File;

.field public t:Lu9/j1;

.field public u:Lu9/j1;

.field public final v:Lx9/l0;

.field public final w:Lx9/l0;

.field public final x:Lx9/l0;

.field public final y:Lx9/l0;

.field public final z:Lx9/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lsc/j0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lua/nav/c;->Companion:Lsc/j0;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    const-string v2, "app"

    invoke-static {v0, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct/range {p0 .. p1}, Landroidx/lifecycle/a;-><init>(Landroid/app/Application;)V

    sget-object v2, Lsc/i0;->a:Lsc/i0;

    invoke-virtual {v2, v0}, Lsc/i0;->x(Landroid/app/Application;)V

    invoke-static {}, Lsc/i0;->m()Ldd/q0;

    invoke-static {}, Lsc/i0;->g()Ldd/k0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/c;->c:Ldd/k0;

    invoke-static {}, Lsc/i0;->l()Lad/j0;

    move-result-object v3

    iput-object v3, v1, Lua/nav/c;->d:Lad/j0;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v4

    iget-object v4, v4, Lad/x;->k:Lx9/l0;

    iput-object v4, v1, Lua/nav/c;->e:Lx9/l0;

    sget-object v4, Lsc/i0;->f:Lg5/i;

    const/4 v5, 0x0

    if-eqz v4, :cond_b

    iput-object v4, v1, Lua/nav/c;->f:Lid/d1;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object v4

    iget-object v4, v4, Lid/c1;->e:Lx9/l0;

    iput-object v4, v1, Lua/nav/c;->g:Lx9/l0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object v4

    iget-object v4, v4, Lid/c1;->g:Lx9/l0;

    iput-object v4, v1, Lua/nav/c;->h:Lx9/l0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object v4

    iget-object v4, v4, Lid/c1;->i:Lx9/l0;

    iput-object v4, v1, Lua/nav/c;->i:Lx9/l0;

    iget-object v2, v2, Ldd/k0;->e:Ldd/o0;

    iget-object v2, v2, Ldd/o0;->d:Ljava/lang/Object;

    check-cast v2, Lx9/l0;

    iput-object v2, v1, Lua/nav/c;->j:Lx9/l0;

    iget-boolean v2, v3, Lad/j0;->K:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/c;->k:Lx9/l0;

    iput-object v2, v1, Lua/nav/c;->l:Lx9/l0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v2

    iget-object v2, v2, Luc/f;->h:Lx9/l0;

    iput-object v2, v1, Lua/nav/c;->m:Lx9/l0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    sget-object v2, Lsc/i0;->g:Lg5/m;

    if-eqz v2, :cond_a

    iget-object v2, v2, Lg5/m;->o:Ljava/lang/Object;

    check-cast v2, Lx9/l0;

    iput-object v2, v1, Lua/nav/c;->n:Lx9/l0;

    sget-object v2, Lsc/i0;->h:Lbd/l;

    if-eqz v2, :cond_9

    iput-object v2, v1, Lua/nav/c;->o:Lbd/l;

    sget-object v2, Lsc/i0;->l:Lwc/d;

    if-eqz v2, :cond_8

    iget-object v2, v2, Lwc/d;->f:Lx9/l0;

    iput-object v2, v1, Lua/nav/c;->p:Lx9/l0;

    new-instance v2, Lsc/q0;

    const v4, 0xffff

    invoke-direct {v2, v4}, Lsc/q0;-><init>(I)V

    invoke-static {v2}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v2

    iput-object v2, v1, Lua/nav/c;->q:Lx9/l0;

    iput-object v2, v1, Lua/nav/c;->r:Lx9/l0;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    const-string v7, "last_plan.json"

    invoke-direct {v4, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, v1, Lua/nav/c;->s:Ljava/io/File;

    invoke-static {}, Lsc/i0;->w()Lad/r2;

    move-result-object v6

    iget-object v6, v6, Lad/r2;->d:Lad/u2;

    invoke-static {v6}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v6

    iput-object v6, v1, Lua/nav/c;->v:Lx9/l0;

    iput-object v6, v1, Lua/nav/c;->w:Lx9/l0;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {v6}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v7

    iput-object v7, v1, Lua/nav/c;->x:Lx9/l0;

    iput-object v7, v1, Lua/nav/c;->y:Lx9/l0;

    invoke-static {v6}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v7

    iput-object v7, v1, Lua/nav/c;->z:Lx9/l0;

    iput-object v7, v1, Lua/nav/c;->A:Lx9/l0;

    new-instance v7, Lua/nav/routing/b;

    invoke-direct {v7, v0}, Lua/nav/routing/b;-><init>(Landroid/app/Application;)V

    iput-object v7, v1, Lua/nav/c;->B:Lua/nav/routing/b;

    invoke-static {v6}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, v1, Lua/nav/c;->C:Lx9/l0;

    iput-object v0, v1, Lua/nav/c;->D:Lx9/l0;

    sget-boolean v0, Lsc/i0;->D:Z

    const/4 v6, 0x0

    sput-boolean v6, Lsc/i0;->D:Z

    if-eqz v0, :cond_1

    iget-object v0, v3, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lad/a0;

    iget-boolean v0, v0, Lad/a0;->a:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lsc/q0;

    new-instance v3, Lsc/q0;

    sget-object v4, Lsc/d;->l:Lsc/d;

    const v4, 0xffdf

    invoke-direct {v3, v4}, Lsc/q0;-><init>(I)V

    invoke-virtual {v2, v0, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lua/nav/c;->G()V

    iget-object v0, v1, Lua/nav/c;->C:Lx9/l0;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v5, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-static {v1}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object v0

    new-instance v2, Lod/z3;

    invoke-direct {v2, v1, v5}, Lod/z3;-><init>(Lua/nav/c;Ly8/c;)V

    const/4 v3, 0x3

    invoke-static {v0, v5, v5, v2, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    goto/16 :goto_4

    :cond_1
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_4

    :cond_2
    :try_start_0
    sget-object v0, Lgd/h;->c:Lia/r;

    sget-object v3, Lua/nav/SavedPlan;->Companion:Lua/nav/SavedPlan$Companion;

    invoke-virtual {v3}, Lua/nav/SavedPlan$Companion;->serializer()Lkotlinx/serialization/KSerializer;

    move-result-object v3

    check-cast v3, Lkotlinx/serialization/KSerializer;

    sget-object v7, Lr9/a;->a:Ljava/nio/charset/Charset;

    invoke-static {v4, v7}, Lf9/j;->z(Ljava/io/File;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Lia/c;->a(Ljava/lang/String;Lkotlinx/serialization/KSerializer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/SavedPlan;

    :cond_3
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Lsc/q0;

    iget-object v8, v0, Lua/nav/SavedPlan;->a:Lua/nav/routing/GeoPoint;

    iget-object v9, v0, Lua/nav/SavedPlan;->b:Ljava/lang/String;

    iget-object v10, v0, Lua/nav/SavedPlan;->c:Lua/nav/routing/GeoPoint;

    iget-object v11, v0, Lua/nav/SavedPlan;->d:Ljava/lang/String;

    iget-object v4, v0, Lua/nav/SavedPlan;->e:Ljava/util/List;

    iget v12, v0, Lua/nav/SavedPlan;->f:I

    move/from16 v19, v12

    iget-object v12, v0, Lua/nav/SavedPlan;->g:Ljava/util/List;

    const/16 v23, 0x0

    const v24, 0xf3e0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v18, v4

    invoke-static/range {v7 .. v24}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, v0, Lua/nav/SavedPlan;->a:Lua/nav/routing/GeoPoint;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v3, "\u2026"

    if-eqz v2, :cond_5

    :try_start_1
    iget-object v4, v0, Lua/nav/SavedPlan;->b:Ljava/lang/String;

    invoke-static {v4, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_0

    :cond_4
    move-object v2, v5

    :goto_0
    if-eqz v2, :cond_5

    sget-object v4, Lsc/d;->l:Lsc/d;

    invoke-virtual {v1, v4, v2}, Lua/nav/c;->N(Lsc/d;Lua/nav/routing/GeoPoint;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_5
    :goto_1
    iget-object v2, v0, Lua/nav/SavedPlan;->c:Lua/nav/routing/GeoPoint;

    if-eqz v2, :cond_7

    iget-object v0, v0, Lua/nav/SavedPlan;->d:Ljava/lang/String;

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    move-object v2, v5

    :goto_2
    if-eqz v2, :cond_7

    sget-object v0, Lsc/d;->m:Lsc/d;

    invoke-virtual {v1, v0, v2}, Lua/nav/c;->N(Lsc/d;Lua/nav/routing/GeoPoint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :goto_3
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    :cond_7
    :goto_4
    iget-object v0, v1, Lua/nav/c;->d:Lad/j0;

    new-instance v2, Lod/m0;

    const/16 v3, 0xc

    invoke-direct {v2, v1, v3}, Lod/m0;-><init>(Lua/nav/c;I)V

    iput-object v2, v0, Lad/j0;->n:Lod/m0;

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->r()Lua/nav/a;

    move-result-object v0

    iget-object v0, v0, Lua/nav/a;->c:Lx9/l0;

    iput-object v0, v1, Lua/nav/c;->E:Lx9/l0;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, v1, Lua/nav/c;->F:Lx9/l0;

    iput-object v0, v1, Lua/nav/c;->G:Lx9/l0;

    invoke-static {v5}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, v1, Lua/nav/c;->J:Lx9/l0;

    iput-object v0, v1, Lua/nav/c;->K:Lx9/l0;

    const/4 v0, 0x5

    const/4 v2, 0x1

    invoke-static {v2, v0, v5}, Lx9/c0;->a(IILw9/a;)Lx9/b0;

    move-result-object v0

    iput-object v0, v1, Lua/nav/c;->L:Lx9/b0;

    iput-object v0, v1, Lua/nav/c;->M:Lx9/b0;

    return-void

    :cond_8
    const-string v0, "cameras"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v5

    :cond_9
    const-string v0, "calmingDb"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v5

    :cond_a
    const-string v0, "cameraDb"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v5

    :cond_b
    const-string v0, "router"

    invoke-static {v0}, Lj9/n;->m(Ljava/lang/String;)V

    throw v5
.end method

.method public static final e(Lua/nav/c;Lua/nav/routing/GeoPoint;La9/c;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p2, Lsc/m0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lsc/m0;

    iget v1, v0, Lsc/m0;->o:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lsc/m0;->o:I

    goto :goto_0

    :cond_0
    new-instance v0, Lsc/m0;

    invoke-direct {v0, p0, p2}, Lsc/m0;-><init>(Lua/nav/c;La9/c;)V

    :goto_0
    iget-object p2, v0, Lsc/m0;->m:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lsc/m0;->o:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lsc/m0;->l:Lua/nav/routing/GeoPoint;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lua/nav/c;->I:Lt8/j;

    if-eqz p2, :cond_3

    iget-object v2, p2, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Lua/nav/routing/GeoPoint;

    iget-object p2, p2, Lt8/j;->m:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    iget-wide v4, v2, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v6, p1, Lua/nav/routing/GeoPoint;->a:D

    sub-double/2addr v4, v6

    const-wide v6, 0x405bc00000000000L    # 111.0

    mul-double/2addr v4, v6

    iget-wide v6, v2, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v8, p1, Lua/nav/routing/GeoPoint;->b:D

    sub-double/2addr v6, v8

    const-wide v8, 0x4051c00000000000L    # 71.0

    mul-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    cmpg-double v2, v4, v6

    if-gez v2, :cond_3

    return-object p2

    :cond_3
    sget-object p2, Lzc/f;->a:Lzc/f;

    iput-object p1, v0, Lsc/m0;->l:Lua/nav/routing/GeoPoint;

    iput v3, v0, Lsc/m0;->o:I

    invoke-virtual {p2, p1, v0}, Lzc/f;->d(Lua/nav/routing/GeoPoint;La9/c;)Ljava/io/Serializable;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_1
    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_5

    new-instance v0, Lt8/j;

    invoke-direct {v0, p1, p2}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v0, p0, Lua/nav/c;->I:Lt8/j;

    :cond_5
    return-object p2
.end method

.method public static final f(Lua/nav/c;Lzc/m;La9/c;)Ljava/lang/Object;
    .locals 42

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-object v2, v0, Lua/nav/c;->q:Lx9/l0;

    instance-of v3, v1, Lsc/n0;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lsc/n0;

    iget v4, v3, Lsc/n0;->q:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lsc/n0;->q:I

    goto :goto_0

    :cond_0
    new-instance v3, Lsc/n0;

    invoke-direct {v3, v0, v1}, Lsc/n0;-><init>(Lua/nav/c;La9/c;)V

    :goto_0
    iget-object v1, v3, Lsc/n0;->o:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lsc/n0;->q:I

    sget-object v6, Lt8/z;->a:Lt8/z;

    const/4 v7, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v5, v3, Lsc/n0;->n:Lzc/n;

    iget-object v9, v3, Lsc/n0;->m:Ljava/util/Iterator;

    iget-object v10, v3, Lsc/n0;->l:Ljava/util/ArrayList;

    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v1}, La/a;->E(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, p1

    iget-object v5, v5, Lzc/m;->a:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v10, v1

    move-object v9, v5

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lzc/n;

    iget-object v1, v5, Lzc/n;->a:Lua/nav/routing/GeoPoint;

    iget-object v11, v5, Lzc/n;->b:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v12, Lt8/j;

    invoke-direct {v12, v1, v11}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_3
    if-eqz v11, :cond_5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v10, v3, Lsc/n0;->l:Ljava/util/ArrayList;

    iput-object v9, v3, Lsc/n0;->m:Ljava/util/Iterator;

    iput-object v5, v3, Lsc/n0;->n:Lzc/n;

    iput v7, v3, Lsc/n0;->q:I

    invoke-virtual {v0, v11, v3}, Lua/nav/c;->Q(Ljava/lang/String;La9/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v4, :cond_4

    return-object v4

    :cond_4
    :goto_2
    check-cast v1, Lua/nav/geocoding/Place;

    if-eqz v1, :cond_5

    iget-object v11, v1, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-object v1, v1, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    new-instance v12, Lt8/j;

    invoke-direct {v12, v11, v1}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const/4 v12, 0x0

    :goto_3
    if-nez v12, :cond_8

    :cond_6
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lsc/q0;

    iget-object v1, v5, Lzc/n;->b:Ljava/lang/String;

    if-nez v1, :cond_7

    const-string v1, "?"

    :cond_7
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u041d\u0435 \u0432\u0434\u0430\u043b\u043e\u0441\u044f \u0437\u043d\u0430\u0439\u0442\u0438 \u043c\u0456\u0441\u0446\u0435 \u00ab"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u00bb \u0437 \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x7fff

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v7 .. v24}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_4

    :cond_8
    invoke-interface {v10, v12}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_9
    invoke-interface {v10}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v4, v3

    :cond_b
    if-ge v4, v1, :cond_d

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lt8/j;

    iget-object v5, v5, Lt8/j;->l:Ljava/lang/Object;

    check-cast v5, Lua/nav/routing/GeoPoint;

    iget-wide v11, v5, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v13, v5, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v11, v12, v13, v14}, Ldd/w0;->b(DD)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_c
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lsc/q0;

    const-string v23, "\u0422\u043e\u0447\u043a\u0430 \u0437\u0430 \u043c\u0435\u0436\u0430\u043c\u0438 \u0423\u043a\u0440\u0430\u0457\u043d\u0438. \u0423 \u0446\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u043f\u0456\u0434\u0442\u0440\u0438\u043c\u0443\u0454\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0423\u043a\u0440\u0430\u0457\u043d\u0430."

    const/16 v24, 0x7fff

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v7 .. v24}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :goto_4
    return-object v6

    :cond_d
    :goto_5
    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Luc/f;->b(I)Z

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v1

    iget-object v1, v1, Luc/f;->h:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Luc/c;

    const-string v4, "unlimited_via"

    invoke-virtual {v1, v4}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_6

    :cond_e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_6
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v1, :cond_f

    goto :goto_7

    :cond_f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_7
    invoke-virtual {v10, v3, v4}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v3

    const-string v5, "subList(...)"

    invoke-static {v3, v5}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v4

    iget-object v9, v0, Lua/nav/c;->c:Ldd/k0;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "shared_route points="

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " used="

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-static {v3}, Lu8/m;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v9

    const-string v11, "first(...)"

    invoke-static {v9, v11}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v9, Lt8/j;

    iget-object v11, v9, Lt8/j;->l:Ljava/lang/Object;

    invoke-virtual {v0}, Lua/nav/c;->i()Lad/p1;

    move-result-object v12

    if-eqz v12, :cond_10

    iget-object v12, v12, Lad/p1;->a:Ldd/l0;

    goto :goto_8

    :cond_10
    const/4 v12, 0x0

    :goto_8
    if-eqz v12, :cond_11

    sget-object v13, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v14, v12, Ldd/l0;->d:D

    move/from16 p2, v7

    iget-wide v7, v12, Ldd/l0;->e:D

    move-object v12, v11

    check-cast v12, Lua/nav/routing/GeoPoint;

    move-object/from16 v23, v6

    move-wide/from16 v16, v7

    iget-wide v6, v12, Lua/nav/routing/GeoPoint;->a:D

    move-wide/from16 v18, v6

    iget-wide v6, v12, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v20, v6

    invoke-static/range {v14 .. v21}, Ldd/s0;->a(DDDD)D

    move-result-wide v6

    const-wide v12, 0x407f400000000000L    # 500.0

    cmpg-double v6, v6, v12

    if-gez v6, :cond_12

    sget-object v6, Lsc/d;->l:Lsc/d;

    invoke-virtual {v0, v6}, Lua/nav/c;->Y(Lsc/d;)Z

    move-result v6

    if-nez v6, :cond_14

    goto :goto_9

    :cond_11
    move-object/from16 v23, v6

    move/from16 p2, v7

    :cond_12
    :goto_9
    sget-object v6, Lsc/d;->l:Lsc/d;

    check-cast v11, Lua/nav/routing/GeoPoint;

    iget-object v7, v9, Lt8/j;->m:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_13

    invoke-static {v7}, Lzc/p;->g(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_13

    goto :goto_a

    :cond_13
    const/4 v7, 0x0

    :goto_a
    invoke-virtual {v0, v6, v11, v7}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :cond_14
    invoke-static {v3}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    const-string v7, "last(...)"

    invoke-static {v6, v7}, Lj9/n;->f(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Lt8/j;

    sget-object v7, Lsc/d;->m:Lsc/d;

    iget-object v8, v6, Lt8/j;->l:Ljava/lang/Object;

    check-cast v8, Lua/nav/routing/GeoPoint;

    iget-object v6, v6, Lt8/j;->m:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_15

    invoke-static {v6}, Lzc/p;->g(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_15

    goto :goto_b

    :cond_15
    const/4 v6, 0x0

    :goto_b
    invoke-virtual {v0, v7, v8, v6}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    if-lez v5, :cond_17

    invoke-static {v10}, Lu8/m;->l0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lt8/j;

    iget-object v6, v6, Lt8/j;->m:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    if-nez v6, :cond_16

    const-string v6, "\u0444\u0456\u043d\u0456\u0448"

    invoke-static {v6}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_16
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u0423 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u043b\u0438\u0448\u0435 "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " \u043f\u0440\u043e\u043c\u0456\u0436\u043d\u0430 \u0442\u043e\u0447\u043a\u0430: \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043f\u043e\u0431\u0443\u0434\u043e\u0432\u0430\u043d\u043e \u0434\u043e \u0442\u043e\u0447\u043a\u0438 "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " \u0456\u0437 "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", \u0444\u0456\u043d\u0456\u0448 \u00ab"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\u00bb \u043d\u0435 \u0434\u043e\u0441\u044f\u0433\u043d\u0443\u0442\u043e (\u043d\u0435 \u0434\u043e\u0434\u0430\u043d\u043e "

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "). \u041f\u0456\u0434\u043f\u0438\u0441\u043a\u0430 \u0437\u043d\u0456\u043c\u0430\u0454 \u043e\u0431\u043c\u0435\u0436\u0435\u043d\u043d\u044f."

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcd/d;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v40, v8

    goto :goto_c

    :cond_17
    const/16 v40, 0x0

    :goto_c
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v24, v1

    check-cast v24, Lsc/q0;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move/from16 v5, p2

    invoke-interface {v3, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v4, v7}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_18

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lt8/j;

    iget-object v7, v7, Lt8/j;->l:Ljava/lang/Object;

    check-cast v7, Lua/nav/routing/GeoPoint;

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_18
    sget-object v30, Lsc/d;->l:Lsc/d;

    const/16 v39, 0x0

    const/16 v41, 0x5fcf

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v29, v6

    invoke-static/range {v24 .. v41}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-virtual {v0}, Lua/nav/c;->G()V

    invoke-virtual {v0}, Lua/nav/c;->j()V

    return-object v23

    :cond_19
    move/from16 p2, v5

    goto :goto_c
.end method


# virtual methods
.method public final A()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->G:Lx9/l0;

    return-object p0
.end method

.method public final B()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->g:Lx9/l0;

    return-object p0
.end method

.method public final C()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->j:Lx9/l0;

    return-object p0
.end method

.method public final D()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->w:Lx9/l0;

    return-object p0
.end method

.method public final E()Lua/nav/routing/GeoPoint;
    .locals 11

    invoke-virtual {p0}, Lua/nav/c;->J()Lua/nav/routing/GeoPoint;

    move-result-object v9

    new-instance v0, Lb0/k2;

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v1, 0x1

    const-class v3, Lua/nav/c;

    const-string v4, "inUkraine"

    const-string v5, "inUkraine(Lua/nav/routing/GeoPoint;)Z"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lb0/k2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->e()Ldd/i;

    move-result-object v1

    invoke-virtual {v1}, Ldd/i;->b()Lid/h1;

    move-result-object v1

    invoke-static {v9, v0, v1}, Lid/i1;->b(Lua/nav/routing/GeoPoint;Li9/c;Lid/h1;)Lt8/j;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/GeoPoint;

    return-object v0

    :cond_0
    iget-object v10, p0, Lua/nav/c;->c:Ldd/k0;

    if-eqz v9, :cond_3

    new-instance v0, Lb0/k2;

    const/4 v7, 0x0

    const/4 v8, 0x5

    const/4 v1, 0x1

    const-class v3, Lua/nav/c;

    const-string v4, "inUkraine"

    const-string v5, "inUkraine(Lua/nav/routing/GeoPoint;)Z"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lb0/k2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v10}, Ldd/k0;->d()Lua/nav/routing/GeoPoint;

    move-result-object v1

    iget-object v2, p0, Lua/nav/c;->B:Lua/nav/routing/b;

    invoke-virtual {v2}, Lua/nav/routing/b;->a()Ljava/util/List;

    move-result-object v2

    invoke-static {v2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/routing/RecentPlaces$Item;

    if-eqz v2, :cond_1

    new-instance v3, Lua/nav/routing/GeoPoint;

    iget-wide v4, v2, Lua/nav/routing/RecentPlaces$Item;->b:D

    iget-wide v6, v2, Lua/nav/routing/RecentPlaces$Item;->c:D

    invoke-direct {v3, v4, v5, v6, v7}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-static {v9, v0, v1, v3}, Lid/i1;->g(Lua/nav/routing/GeoPoint;Li9/c;Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)Lt8/j;

    move-result-object v0

    iget-object v0, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v0, Lua/nav/routing/GeoPoint;

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    invoke-virtual {v10}, Ldd/k0;->d()Lua/nav/routing/GeoPoint;

    move-result-object v0

    return-object v0
.end method

.method public final F(Lua/nav/routing/SavedRoute;)V
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "sr"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v1, p0

    :cond_0
    iget-object v2, v1, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lsc/q0;

    iget-object v5, v0, Lua/nav/routing/SavedRoute;->d:Lua/nav/routing/GeoPoint;

    iget-object v6, v0, Lua/nav/routing/SavedRoute;->e:Ljava/lang/String;

    iget-object v7, v0, Lua/nav/routing/SavedRoute;->f:Lua/nav/routing/GeoPoint;

    iget-object v8, v0, Lua/nav/routing/SavedRoute;->g:Ljava/lang/String;

    iget-object v9, v0, Lua/nav/routing/SavedRoute;->h:Ljava/util/List;

    iget-object v10, v0, Lua/nav/routing/SavedRoute;->c:Lua/nav/routing/Route;

    invoke-static {v10}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    const/16 v20, 0x0

    const v21, 0xd3a0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v4 .. v21}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lua/nav/c;->G()V

    return-void
.end method

.method public final G()V
    .locals 9

    iget-object v0, p0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsc/q0;

    new-instance v1, Lua/nav/SavedPlan;

    iget-object v2, v0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    iget-object v3, v0, Lsc/q0;->b:Ljava/lang/String;

    iget-object v4, v0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    iget-object v5, v0, Lsc/q0;->d:Ljava/lang/String;

    iget-object v6, v0, Lsc/q0;->k:Ljava/util/List;

    iget v7, v0, Lsc/q0;->l:I

    iget-object v8, v0, Lsc/q0;->e:Ljava/util/List;

    invoke-direct/range {v1 .. v8}, Lua/nav/SavedPlan;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;ILjava/util/List;)V

    invoke-static {p0}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object v0

    sget-object v2, Lu9/e0;->a:Lba/e;

    sget-object v2, Lba/d;->n:Lba/d;

    new-instance v3, Lua/nav/b;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v1, v4}, Lua/nav/b;-><init>(Lua/nav/c;Lua/nav/SavedPlan;Ly8/c;)V

    const/4 p0, 0x2

    invoke-static {v0, v2, v4, v3, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final H(Lua/nav/geocoding/Place;)Lsc/d;
    .locals 35

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "place"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lua/nav/geocoding/Place;->c:Lua/nav/routing/GeoPoint;

    iget-object v3, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsc/q0;

    iget-object v4, v4, Lsc/q0;->f:Lsc/d;

    sget-object v5, Lsc/d;->n:Lsc/d;

    const/4 v6, 0x0

    sget-object v16, Lu8/r;->l:Lu8/r;

    if-ne v4, v5, :cond_1

    invoke-virtual {v0, v2}, Lua/nav/c;->g(Lua/nav/routing/GeoPoint;)V

    :cond_0
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lsc/q0;

    const/16 v23, 0x0

    const v24, 0xfe7f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-string v15, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v7 .. v24}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object v6

    :cond_1
    iget-object v5, v1, Lua/nav/geocoding/Place;->b:Ljava/lang/String;

    const-string v7, "\u041a\u043e\u043e\u0440\u0434\u0438\u043d\u0430\u0442\u0438"

    invoke-static {v5, v7}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    iget-object v6, v1, Lua/nav/geocoding/Place;->a:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v4, v2, v6}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Lsc/q0;

    sget-object v5, Lsc/d;->l:Lsc/d;

    if-ne v4, v5, :cond_4

    sget-object v5, Lsc/d;->m:Lsc/d;

    :cond_4
    move-object v13, v5

    const/16 v23, 0x0

    const v24, 0xfe5f

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const-string v15, ""

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-static/range {v7 .. v24}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v1, v1, Lua/nav/geocoding/Place;->f:Ljava/lang/String;

    if-eqz v1, :cond_6

    :goto_1
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lsc/q0;

    const/16 v32, 0x0

    const/16 v34, 0x7fff

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move-object/from16 v33, v1

    invoke-static/range {v17 .. v34}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move-object/from16 v1, v33

    goto :goto_1

    :cond_6
    :goto_2
    sget-object v1, Lsc/d;->m:Lsc/d;

    if-ne v4, v1, :cond_9

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsc/q0;

    iget-object v1, v1, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-nez v1, :cond_7

    sget-object v1, Lsc/d;->l:Lsc/d;

    invoke-virtual {v0, v1}, Lua/nav/c;->Y(Lsc/d;)Z

    :cond_7
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lsc/q0;

    iget-object v1, v1, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lua/nav/c;->j()V

    return-object v4

    :cond_8
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lsc/q0;

    const/16 v21, 0x0

    const v22, 0xdfff

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

    const/16 v18, 0x0

    const-string v19, "\u0429\u0435 \u043d\u0435\u043c\u0430\u0454 \u0432\u0430\u0448\u043e\u0457 \u043f\u043e\u0437\u0438\u0446\u0456\u0457: \u0432\u043a\u0430\u0436\u0456\u0442\u044c \u0442\u043e\u0447\u043a\u0443 A \u0430\u0431\u043e \u0437\u0430\u0447\u0435\u043a\u0430\u0439\u0442\u0435 GPS \u0447\u0438 \u043c\u0435\u0440\u0435\u0436\u0443"

    const/16 v20, 0x0

    invoke-static/range {v5 .. v22}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_9
    return-object v4
.end method

.method public final I(Lua/nav/routing/SavedAddress;)Lsc/d;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "a"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v1, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    iget-object v3, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsc/q0;

    iget-object v4, v4, Lsc/q0;->f:Lsc/d;

    sget-object v5, Lsc/d;->n:Lsc/d;

    if-ne v4, v5, :cond_0

    invoke-virtual {v0, v2}, Lua/nav/c;->g(Lua/nav/routing/GeoPoint;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v5, v1, Lua/nav/routing/SavedAddress;->d:Ljava/lang/String;

    invoke-static {v5}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v5, v1, Lua/nav/routing/SavedAddress;->c:Ljava/lang/String;

    :cond_1
    invoke-virtual {v0, v4, v2, v5}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lsc/q0;

    sget-object v1, Lsc/d;->l:Lsc/d;

    if-ne v4, v1, :cond_3

    sget-object v1, Lsc/d;->m:Lsc/d;

    :cond_3
    move-object v11, v1

    const/16 v21, 0x0

    const v22, 0xffdf

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    invoke-static/range {v5 .. v22}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v4
.end method

.method public final J()Lua/nav/routing/GeoPoint;
    .locals 8

    const-string v0, "null cannot be cast to non-null type T of androidx.lifecycle.AndroidViewModel.getApplication"

    iget-object p0, p0, Landroidx/lifecycle/a;->b:Landroid/app/Application;

    invoke-static {p0, v0}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v0, p0, Landroid/location/LocationManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Landroid/location/LocationManager;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "network"

    const-string v2, "passive"

    const-string v3, "fused"

    const-string v4, "gps"

    filled-new-array {v3, v4, v0, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v3

    invoke-static {v3}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v3

    :goto_2
    instance-of v4, v3, Lt8/l;

    if-eqz v4, :cond_3

    move-object v3, v1

    :cond_3
    check-cast v3, Landroid/location/Location;

    if-eqz v3, :cond_2

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    move-object v0, v1

    goto :goto_3

    :cond_5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_6

    goto :goto_3

    :cond_6
    move-object v2, v0

    check-cast v2, Landroid/location/Location;

    invoke-virtual {v2}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v2

    :cond_7
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getElapsedRealtimeNanos()J

    move-result-wide v5

    cmp-long v7, v2, v5

    if-gez v7, :cond_8

    move-object v0, v4

    move-wide v2, v5

    :cond_8
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    :goto_3
    check-cast v0, Landroid/location/Location;

    if-eqz v0, :cond_9

    new-instance v1, Lua/nav/routing/GeoPoint;

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-direct {v1, v2, v3, v4, v5}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    :cond_9
    return-object v1
.end method

.method public final K(Lzc/r;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lzc/r;->b:Ljava/lang/String;

    sget-object v3, Lsc/i0;->A:Lp/a1;

    invoke-virtual {v3}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-static {v4}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "waze_drive_start env="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mapbox_key="

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v0, Lua/nav/c;->c:Ldd/k0;

    invoke-virtual {v4, v2}, Ldd/k0;->n(Ljava/lang/String;)V

    invoke-virtual {v3}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v2}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v2

    sget-object v14, Lu8/r;->l:Lu8/r;

    iget-object v3, v0, Lua/nav/c;->q:Lx9/l0;

    if-eqz v2, :cond_1

    const-string v0, "waze_drive_fail no_mapbox_key"

    invoke-virtual {v4, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lsc/q0;

    const/16 v20, 0x0

    const/16 v22, 0x3e7f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-string v21, "\u0414\u043b\u044f \u043c\u0430\u0440\u0448\u0440\u0443\u0442\u0443 \u0437 Waze \u043f\u043e\u0442\u0440\u0456\u0431\u0435\u043d \u0432\u0430\u0448 \u043a\u043b\u044e\u0447 Mapbox (\u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0438\u0439): \u041d\u0430\u043b\u0430\u0448\u0442\u0443\u0432\u0430\u043d\u043d\u044f \u2192 \u041a\u043b\u044e\u0447 Mapbox. \u0411\u0435\u0437 \u043d\u044c\u043e\u0433\u043e \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u043d\u0435 \u0437\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0438\u0442\u0438."

    invoke-static/range {v5 .. v22}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_1
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lsc/q0;

    const-string v21, "\u0417\u0430\u0432\u0430\u043d\u0442\u0430\u0436\u0443\u044e \u043c\u0430\u0440\u0448\u0440\u0443\u0442 \u0437 Waze\u2026"

    const/16 v22, 0x3e7f

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-string v13, ""

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-static/range {v5 .. v22}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object v2

    new-instance v3, Landroidx/lifecycle/j0;

    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-direct {v3, v0, v1, v5, v4}, Landroidx/lifecycle/j0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v0, 0x3

    invoke-static {v2, v5, v5, v3, v0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final L(Lua/nav/routing/GeoPoint;)Z
    .locals 21

    move-object/from16 v0, p1

    iget-wide v1, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v3, v0, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v1, v2, v3, v4}, Ldd/w0;->b(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    move-object/from16 v0, p0

    :cond_1
    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lsc/q0;

    const-string v19, "\u0422\u043e\u0447\u043a\u0430 \u0437\u0430 \u043c\u0435\u0436\u0430\u043c\u0438 \u0423\u043a\u0440\u0430\u0457\u043d\u0438. \u0423 \u0446\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u043f\u0456\u0434\u0442\u0440\u0438\u043c\u0443\u0454\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0423\u043a\u0440\u0430\u0457\u043d\u0430."

    const/16 v20, 0x7fff

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

    const/16 v18, 0x0

    invoke-static/range {v3 .. v20}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0
.end method

.method public final M(I)V
    .locals 21

    move-object/from16 v0, p0

    :cond_0
    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lsc/q0;

    iget-object v4, v3, Lsc/q0;->e:Ljava/util/List;

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_2

    move-object v9, v6

    check-cast v9, Lua/nav/routing/GeoPoint;

    move/from16 v9, p1

    if-eq v5, v9, :cond_1

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    invoke-static {}, Lg5/f;->P()V

    const/4 v0, 0x0

    throw v0

    :cond_3
    move/from16 v9, p1

    const/16 v19, 0x0

    const v20, 0xfbef

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    sget-object v14, Lu8/r;->l:Lu8/r;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v3 .. v20}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lua/nav/c;->G()V

    return-void
.end method

.method public final N(Lsc/d;Lua/nav/routing/GeoPoint;)V
    .locals 3

    invoke-static {p0}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object v0

    new-instance v1, Lod/o2;

    const/4 v2, 0x0

    invoke-direct {v1, p2, p0, p1, v2}, Lod/o2;-><init>(Lua/nav/routing/GeoPoint;Lua/nav/c;Lsc/d;Ly8/c;)V

    const/4 p0, 0x3

    invoke-static {v0, v2, v2, v1, p0}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-void
.end method

.method public final O(Lsc/d;)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsc/q0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    if-ne p1, v1, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    iget-object p1, v0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    iget-object v0, v0, Lsc/q0;->d:Ljava/lang/String;

    new-instance v3, Lt8/j;

    invoke-direct {v3, p1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    iget-object v0, v0, Lsc/q0;->b:Ljava/lang/String;

    new-instance v3, Lt8/j;

    invoke-direct {v3, p1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object p1, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast p1, Lua/nav/routing/GeoPoint;

    iget-object v0, v3, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez p1, :cond_3

    :goto_1
    return-object v2

    :cond_3
    invoke-static {v0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-wide v3, p1, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iget-wide v3, p1, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v0, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%.5f, %.5f"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    invoke-static {p0}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object p0

    new-instance v1, Lp/b;

    const/16 v3, 0x8

    invoke-direct {v1, p1, v0, v2, v3}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 p1, 0x3

    invoke-static {p0, v2, v2, v1, p1}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    return-object v0
.end method

.method public final P(Lsc/d;Lsc/e;)Ljava/lang/String;
    .locals 10

    const-string v0, "kind"

    invoke-static {p2, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsc/q0;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_1

    if-ne p1, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Landroidx/fragment/app/i0;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :cond_1
    iget-object p1, v0, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    iget-object v0, v0, Lsc/q0;->d:Ljava/lang/String;

    new-instance v3, Lt8/j;

    invoke-direct {v3, p1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p1, v0, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    iget-object v0, v0, Lsc/q0;->b:Ljava/lang/String;

    new-instance v3, Lt8/j;

    invoke-direct {v3, p1, v0}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    iget-object p1, v3, Lt8/j;->l:Ljava/lang/Object;

    check-cast p1, Lua/nav/routing/GeoPoint;

    iget-object v0, v3, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez p1, :cond_3

    :goto_1
    return-object v1

    :cond_3
    iget-wide v3, p1, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v5, p1, Lua/nav/routing/GeoPoint;->a:D

    invoke-static {v0}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    filled-new-array {v0, v7}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v7, "%.5f, %.5f"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_4
    new-instance v7, Lua/nav/routing/Favorite;

    invoke-direct {v7, p1, v0}, Lua/nav/routing/Favorite;-><init>(Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    invoke-static {p0}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object p1

    new-instance v8, Lp/b;

    const/16 v9, 0xa

    invoke-direct {v8, p2, v7, v1, v9}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v7, 0x3

    invoke-static {p1, v1, v1, v8, v7}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%.5f %.5f"

    invoke-static {p2, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "favorite "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lua/nav/c;->c:Ldd/k0;

    invoke-virtual {p0, p1}, Ldd/k0;->n(Ljava/lang/String;)V

    return-object v0
.end method

.method public final Q(Ljava/lang/String;La9/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p2, Lsc/o0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lsc/o0;

    iget v1, v0, Lsc/o0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lsc/o0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lsc/o0;

    invoke-direct {v0, p0, p2}, Lsc/o0;-><init>(Lua/nav/c;La9/c;)V

    :goto_0
    iget-object p2, v0, Lsc/o0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lsc/o0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    :try_start_0
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lua/nav/c;->i()Lad/p1;

    move-result-object p0

    if-eqz p0, :cond_3

    iget-object p0, p0, Lad/p1;->a:Ldd/l0;

    if-eqz p0, :cond_3

    new-instance p2, Lua/nav/routing/GeoPoint;

    iget-wide v4, p0, Ldd/l0;->d:D

    iget-wide v6, p0, Ldd/l0;->e:D

    invoke-direct {p2, v4, v5, v6, v7}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    goto :goto_1

    :cond_3
    new-instance p2, Lua/nav/routing/GeoPoint;

    const-wide v4, 0x4049399ce075f6fdL    # 50.4501

    const-wide v6, 0x403e85fd8adab9f5L    # 30.5234

    invoke-direct {p2, v4, v5, v6, v7}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    :goto_1
    :try_start_1
    sget-object p0, Lzc/f;->a:Lzc/f;

    iput v3, v0, Lsc/o0;->n:I

    invoke-virtual {p0, v3, v0, p1, p2}, Lzc/f;->e(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    :goto_2
    check-cast p2, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p0

    invoke-static {p0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p2

    :goto_3
    instance-of p0, p2, Lt8/l;

    const/4 p1, 0x0

    if-eqz p0, :cond_5

    move-object p2, p1

    :cond_5
    check-cast p2, Ljava/util/List;

    if-eqz p2, :cond_6

    invoke-static {p2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Lua/nav/geocoding/Place;

    :cond_6
    return-object p1
.end method

.method public final R(Lsc/d;)V
    .locals 21

    move-object/from16 v0, p0

    :cond_0
    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lsc/q0;

    const/16 v19, 0x0

    const v20, 0xffdf

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v9, p1

    invoke-static/range {v3 .. v20}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final S(Lsc/d;Lua/nav/routing/GeoPoint;)V
    .locals 10

    new-instance v0, Lb0/k2;

    const/4 v7, 0x0

    const/4 v8, 0x6

    const/4 v1, 0x1

    const-class v3, Lua/nav/c;

    const-string v4, "inUkraine"

    const-string v5, "inUkraine(Lua/nav/routing/GeoPoint;)Z"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lb0/k2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->e()Ldd/i;

    move-result-object v1

    invoke-virtual {v1}, Ldd/i;->b()Lid/h1;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lid/i1;->b(Lua/nav/routing/GeoPoint;Li9/c;Lid/h1;)Lt8/j;

    move-result-object v0

    iget-object v9, p0, Lua/nav/c;->c:Ldd/k0;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/GeoPoint;

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const/16 v3, 0x28

    invoke-static {v3, v0}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "start_cell_area r_label="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    sget-object v3, Lsc/d;->n:Lsc/d;

    if-ne p1, v3, :cond_0

    invoke-virtual {p0, v1}, Lua/nav/c;->g(Lua/nav/routing/GeoPoint;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, v1, v0}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v0, Lb0/k2;

    const/4 v7, 0x0

    const/4 v8, 0x7

    const/4 v1, 0x1

    const-class v3, Lua/nav/c;

    const-string v4, "inUkraine"

    const-string v5, "inUkraine(Lua/nav/routing/GeoPoint;)Z"

    const/4 v6, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v8}, Lb0/k2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    invoke-virtual {v9}, Ldd/k0;->d()Lua/nav/routing/GeoPoint;

    move-result-object v1

    iget-object v3, p0, Lua/nav/c;->B:Lua/nav/routing/b;

    invoke-virtual {v3}, Lua/nav/routing/b;->a()Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lua/nav/routing/RecentPlaces$Item;

    if-eqz v3, :cond_2

    new-instance v4, Lua/nav/routing/GeoPoint;

    iget-wide v5, v3, Lua/nav/routing/RecentPlaces$Item;->b:D

    iget-wide v7, v3, Lua/nav/routing/RecentPlaces$Item;->c:D

    invoke-direct {v4, v5, v6, v7, v8}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    invoke-static {p2, v0, v1, v4}, Lid/i1;->g(Lua/nav/routing/GeoPoint;Li9/c;Lua/nav/routing/GeoPoint;Lua/nav/routing/GeoPoint;)Lt8/j;

    move-result-object v0

    iget-object v1, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/GeoPoint;

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v3, "\u0425\u0440\u0435\u0449\u0430\u0442\u0438\u043a, \u041a\u0438\u0457\u0432 (GPS \u0437\u0430 \u043c\u0435\u0436\u0430\u043c\u0438 \u0423\u043a\u0440\u0430\u0457\u043d\u0438)"

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "kyiv"

    goto :goto_1

    :cond_3
    const-string v3, "\u041e\u0441\u0442\u0430\u043d\u043d\u0454 \u0432\u0456\u0434\u043e\u043c\u0435 \u043c\u0456\u0441\u0446\u0435 (GPS \u0437\u0430 \u043c\u0435\u0436\u0430\u043c\u0438 \u0423\u043a\u0440\u0430\u0457\u043d\u0438)"

    invoke-static {v0, v3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "last_known"

    goto :goto_1

    :cond_4
    const-string v3, "last_destination"

    :goto_1
    const-string v4, "start_outside_ua use="

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v9, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    sget-object v3, Lsc/d;->n:Lsc/d;

    if-ne p1, v3, :cond_5

    invoke-virtual {p0, v1}, Lua/nav/c;->g(Lua/nav/routing/GeoPoint;)V

    return-void

    :cond_5
    if-nez v0, :cond_6

    const-string v0, "\u041c\u043e\u0454 \u043c\u0456\u0441\u0446\u0435"

    :cond_6
    invoke-virtual {p0, p1, v1, v0}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    return-void
.end method

.method public final T(I)V
    .locals 44

    move-object/from16 v0, p0

    iget-object v0, v0, Lua/nav/c;->d:Lad/j0;

    iget-object v1, v0, Lad/j0;->N:Lad/l;

    const/4 v2, 0x0

    const/4 v3, 0x2

    move/from16 v4, p1

    invoke-static {v4, v2, v3}, Lg6/c1;->f(III)I

    move-result v2

    iget v3, v0, Lad/j0;->H1:I

    if-ne v2, v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-object v5, v0, Lad/j0;->a:Ldd/k0;

    iget v6, v0, Lad/j0;->H1:I

    iget-boolean v7, v1, Lad/l;->h:Z

    iget-object v8, v0, Lad/j0;->v1:Ljava/lang/String;

    iget-wide v9, v0, Lad/j0;->b0:D

    const-wide v11, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v9, v11

    double-to-int v9, v9

    iget-wide v10, v1, Lad/l;->i:D

    const/4 v12, 0x3

    invoke-static {v10, v11, v12}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v10

    iget-wide v13, v1, Lad/l;->j:D

    invoke-static {v13, v14, v12}, Lsc/c;->a(DI)Ljava/lang/String;

    move-result-object v1

    const-string v11, " prev="

    const-string v12, " dr_stopped="

    const-string v13, "manual_motion mode="

    invoke-static {v13, v2, v11, v6, v12}, La6/q;->n(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " src="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " v="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " vib="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    iput v2, v0, Lad/j0;->H1:I

    if-nez v2, :cond_1

    const-wide/16 v3, 0x0

    goto :goto_0

    :cond_1
    const-wide/32 v5, 0x493e0

    add-long/2addr v3, v5

    :goto_0
    iput-wide v3, v0, Lad/j0;->I1:J

    iget-object v0, v0, Lad/j0;->j:Lx9/l0;

    :goto_1
    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lad/a0;

    const v42, 0x7fffffff

    const/16 v43, 0x1

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v41, 0x0

    move/from16 v40, v2

    invoke-static/range {v4 .. v43}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_2
    return-void

    :cond_2
    move/from16 v2, v40

    goto :goto_1
.end method

.method public final U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    const-string v2, "ep"

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "p"

    invoke-static {v3, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lua/nav/c;->L(Lua/nav/routing/GeoPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lua/nav/c;->u:Lu9/j1;

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_1
    :goto_0
    iget-object v2, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v2

    move-object v2, v4

    check-cast v2, Lsc/q0;

    if-nez p3, :cond_2

    const-string v6, "\u2026"

    goto :goto_1

    :cond_2
    move-object/from16 v6, p3

    :goto_1
    sget-object v7, Lsc/d;->l:Lsc/d;

    sget-object v13, Lu8/r;->l:Lu8/r;

    if-ne v1, v7, :cond_3

    const/16 v18, 0x0

    const v19, 0xcbfc

    move-object v7, v5

    const/4 v5, 0x0

    move-object v8, v4

    move-object v4, v6

    const/4 v6, 0x0

    move-object v9, v7

    const/4 v7, 0x0

    move-object v10, v8

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x0

    move-object v12, v10

    const/4 v10, 0x0

    move-object v14, v11

    const/4 v11, 0x0

    move-object v15, v12

    const/4 v12, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v20, v16

    const/16 v16, 0x0

    move-object/from16 v21, v17

    const/16 v17, 0x0

    move-object/from16 v1, v20

    move-object/from16 v0, v21

    invoke-static/range {v2 .. v19}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    goto :goto_2

    :cond_3
    move-object v0, v4

    move-object v1, v5

    move-object v4, v6

    const/16 v18, 0x0

    const v19, 0xcbf3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v5, p2

    invoke-static/range {v2 .. v19}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v2

    :goto_2
    invoke-virtual {v1, v0, v2}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-nez p3, :cond_4

    invoke-virtual/range {p0 .. p2}, Lua/nav/c;->N(Lsc/d;Lua/nav/routing/GeoPoint;)V

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lua/nav/c;->G()V

    return-void

    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p2

    goto :goto_0
.end method

.method public final V()V
    .locals 38

    move-object/from16 v0, p0

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object v1

    iget-object v1, v1, Lua/nav/update/a;->e:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqd/q;

    iget-object v1, v1, Lqd/q;->a:Lqd/o;

    sget-object v2, Lqd/o;->n:Lqd/o;

    if-ne v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/q0;

    iget-object v3, v2, Lsc/q0;->k:Ljava/util/List;

    iget v4, v2, Lsc/q0;->l:I

    invoke-static {v4, v3}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lua/nav/routing/Route;

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    iget-object v3, v2, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    if-nez v3, :cond_2

    :goto_0
    return-void

    :cond_2
    iget-object v4, v2, Lsc/q0;->d:Ljava/lang/String;

    invoke-static {v4}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v3}, Lzc/g;->b(Lua/nav/routing/GeoPoint;)Ljava/lang/String;

    move-result-object v4

    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iget-object v14, v0, Lua/nav/c;->B:Lua/nav/routing/b;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v6, "title"

    invoke-static {v4, v6}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lr9/k;->g0(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    goto/16 :goto_2

    :cond_4
    invoke-virtual {v14}, Lua/nav/routing/b;->a()Ljava/util/List;

    move-result-object v15

    new-instance v6, Lua/nav/routing/RecentPlaces$Item;

    const/16 v9, 0x78

    invoke-static {v9, v4}, Lr9/k;->v0(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iget-wide v9, v3, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v11, v3, Lua/nav/routing/GeoPoint;->b:D

    invoke-direct/range {v6 .. v13}, Lua/nav/routing/RecentPlaces$Item;-><init>(JDDLjava/lang/String;)V

    const-string v4, "items"

    invoke-static {v15, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    move-object v11, v10

    check-cast v11, Lua/nav/routing/RecentPlaces$Item;

    const-string v12, "a"

    invoke-static {v11, v12}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v12, Ldd/t0;->Companion:Ldd/s0;

    move-object v15, v12

    iget-wide v12, v11, Lua/nav/routing/RecentPlaces$Item;->b:D

    move-wide/from16 v16, v12

    iget-wide v11, v11, Lua/nav/routing/RecentPlaces$Item;->c:D

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide/from16 v18, v11

    iget-wide v11, v6, Lua/nav/routing/RecentPlaces$Item;->b:D

    move-wide/from16 v20, v11

    iget-wide v11, v6, Lua/nav/routing/RecentPlaces$Item;->c:D

    move-wide/from16 v15, v16

    move-wide/from16 v17, v18

    move-wide/from16 v19, v20

    move-wide/from16 v21, v11

    invoke-static/range {v15 .. v22}, Ldd/s0;->a(DDDD)D

    move-result-wide v11

    const-wide/high16 v15, 0x404e000000000000L    # 60.0

    cmpg-double v11, v11, v15

    if-gez v11, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    invoke-static {v7, v8}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v6

    const/4 v7, 0x5

    invoke-static {v6, v7}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v6

    iget-object v7, v14, Lua/nav/routing/b;->a:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    sget-object v8, Lgd/h;->c:Lia/r;

    iget-object v9, v14, Lua/nav/routing/b;->b:Lha/c;

    invoke-virtual {v8, v9, v6}, Lia/c;->b(Lkotlinx/serialization/KSerializer;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v7, v4, v6}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_2
    iget-object v2, v2, Lsc/q0;->e:Ljava/util/List;

    iget-object v4, v0, Lua/nav/c;->d:Lad/j0;

    iget-object v6, v4, Lad/j0;->N:Lad/l;

    iget-object v7, v4, Lad/j0;->a:Ldd/k0;

    iget-object v8, v7, Ldd/k0;->j:Ldd/m;

    const-string v9, "via"

    invoke-static {v2, v9}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lad/j0;->K()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lad/j0;->D0:Z

    new-instance v10, Lad/x1;

    invoke-direct {v10, v5}, Lad/x1;-><init>(Lua/nav/routing/Route;)V

    iput-object v10, v4, Lad/j0;->T:Lad/x1;

    new-instance v11, Ljava/util/ArrayList;

    const/16 v12, 0xa

    invoke-static {v2, v12}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v12

    invoke-direct {v11, v12}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lua/nav/routing/GeoPoint;

    move-object v14, v11

    move-object v11, v12

    invoke-virtual {v5}, Lua/nav/routing/Route;->c()D

    move-result-wide v12

    move-object/from16 v16, v14

    invoke-virtual {v5}, Lua/nav/routing/Route;->c()D

    move-result-wide v14

    const/16 v18, 0x0

    const/16 v19, 0x10

    move-object/from16 v21, v16

    const-wide/16 v16, 0x0

    move-object/from16 v9, v21

    invoke-static/range {v10 .. v19}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v12

    iget-wide v12, v12, Lad/w1;->a:D

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    new-instance v13, Lt8/j;

    invoke-direct {v13, v11, v12}, Lt8/j;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v11, v9

    const/4 v9, 0x0

    goto :goto_3

    :cond_7
    move-object v9, v11

    iput-object v9, v4, Lad/j0;->L:Ljava/lang/Object;

    iget-object v9, v4, Lad/j0;->e:Lwc/d;

    invoke-virtual {v9, v5}, Lwc/d;->b(Lua/nav/routing/Route;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v4, Lad/j0;->U:Ljava/lang/Object;

    invoke-virtual {v4, v10, v5}, Lad/j0;->g(Lad/x1;Lua/nav/routing/Route;)Ljava/util/List;

    move-result-object v9

    iput-object v9, v4, Lad/j0;->H0:Ljava/util/List;

    iget-object v9, v4, Lad/j0;->I0:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    const/4 v9, 0x0

    iput-boolean v9, v4, Lad/j0;->J0:Z

    const/4 v11, 0x0

    iput-object v11, v4, Lad/j0;->v0:Lad/c1;

    iget-object v12, v6, Lad/l;->b:Lu8/k;

    invoke-virtual {v12}, Lu8/k;->clear()V

    const-wide/16 v12, -0x1

    iput-wide v12, v6, Lad/l;->c:J

    iput-wide v12, v6, Lad/l;->d:J

    iput-wide v12, v6, Lad/l;->e:J

    iput-boolean v9, v6, Lad/l;->h:Z

    iput-wide v12, v6, Lad/l;->g:J

    invoke-virtual {v6}, Lad/l;->e()V

    iget-object v9, v4, Lad/j0;->n1:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v4, Lad/j0;->R:Ljava/util/HashSet;

    invoke-virtual {v9}, Ljava/util/HashSet;->clear()V

    iget-object v9, v4, Lad/j0;->S:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v4, Lad/j0;->d0:Lad/f1;

    iget-object v9, v9, Lad/f1;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v4, Lad/j0;->f0:Lad/m1;

    iput-object v11, v9, Lad/m1;->a:Lad/k1;

    iget-object v9, v9, Lad/m1;->b:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v4, Lad/j0;->G0:Lu8/k;

    invoke-virtual {v9}, Lu8/k;->clear()V

    iget-object v9, v4, Lad/j0;->K0:Lad/r0;

    const-wide/16 v14, 0x0

    iput-wide v14, v9, Lad/r0;->a:J

    const/4 v11, 0x0

    iput-boolean v11, v9, Lad/r0;->b:Z

    iput-boolean v11, v9, Lad/r0;->c:Z

    iput v11, v9, Lad/r0;->d:I

    iput-boolean v11, v4, Lad/j0;->U0:Z

    iget-object v9, v4, Lad/j0;->V0:Lad/e;

    iget-object v9, v9, Lad/e;->a:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, v4, Lad/j0;->T0:Lad/z;

    iput-boolean v11, v9, Lad/z;->d:Z

    iget-object v9, v4, Lad/j0;->L0:Lad/f;

    iput-wide v12, v9, Lad/f;->a:J

    iput-wide v14, v9, Lad/f;->b:J

    iput-boolean v11, v9, Lad/f;->c:Z

    const/4 v9, 0x0

    iput-object v9, v4, Lad/j0;->M0:Lua/nav/routing/GeoPoint;

    iput-boolean v11, v4, Lad/j0;->e0:Z

    iget-object v14, v4, Lad/j0;->O0:Lad/j2;

    iput-wide v12, v14, Lad/j2;->a:J

    iput-wide v12, v14, Lad/j2;->c:J

    iget-object v14, v4, Lad/j0;->N0:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    iput-object v9, v4, Lad/j0;->R0:Ljava/lang/Double;

    const/4 v9, -0x1

    iput v9, v4, Lad/j0;->y1:I

    const-wide v14, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v14, v4, Lad/j0;->A1:D

    iput v11, v4, Lad/j0;->h0:I

    iget-object v11, v4, Lad/j0;->i0:Lad/w0;

    invoke-virtual {v11}, Lad/w0;->a()V

    iget-object v11, v4, Lad/j0;->j0:Lad/i1;

    invoke-virtual {v11}, Lad/i1;->a()V

    iput v9, v4, Lad/j0;->C1:I

    invoke-virtual {v6}, Lad/l;->e()V

    const-wide/16 v14, 0x0

    iput-wide v14, v4, Lad/j0;->l1:D

    iput v9, v4, Lad/j0;->o1:I

    const-wide/16 v12, 0x0

    iput-wide v12, v4, Lad/j0;->j1:J

    iput-wide v14, v4, Lad/j0;->z0:D

    iput-wide v14, v4, Lad/j0;->c0:D

    const-wide/16 v14, -0x1

    iput-wide v14, v4, Lad/j0;->A0:J

    iput-wide v12, v4, Lad/j0;->B0:J

    iput-wide v14, v4, Lad/j0;->r0:J

    iget-object v6, v4, Lad/j0;->P0:Lad/h2;

    iget-object v6, v6, Lad/h2;->a:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v9, 0x0

    iput-object v9, v4, Lad/j0;->Q0:Lt8/j;

    new-instance v6, Lad/b0;

    const/4 v9, 0x0

    invoke-direct {v6, v4, v9}, Lad/b0;-><init>(Lad/j0;I)V

    iput-object v6, v8, Ldd/m;->j:Lad/b0;

    iget-object v6, v4, Lad/j0;->r1:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iput-boolean v9, v4, Lad/j0;->s1:Z

    iput-boolean v9, v4, Lad/j0;->q1:Z

    const-wide/16 v12, 0x0

    iput-wide v12, v4, Lad/j0;->X0:J

    const-wide/16 v14, 0x0

    iput-wide v14, v4, Lad/j0;->X:D

    iput-boolean v9, v4, Lad/j0;->a0:Z

    iput-wide v14, v4, Lad/j0;->b0:D

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v4, Lad/j0;->Z:J

    const/4 v6, 0x0

    iput-object v6, v4, Lad/j0;->Y0:Lua/nav/routing/GeoPoint;

    iput-wide v12, v4, Lad/j0;->d1:J

    iput-boolean v9, v4, Lad/j0;->e1:Z

    iget-object v11, v4, Lad/j0;->f1:Lad/b;

    iput-object v6, v11, Lad/b;->a:Ljava/lang/Double;

    move-object/from16 v21, v10

    const-wide/16 v9, -0x1

    iput-wide v9, v11, Lad/b;->b:J

    iput-wide v12, v4, Lad/j0;->Z0:J

    const/4 v9, 0x0

    iput-boolean v9, v4, Lad/j0;->a1:Z

    iput-boolean v9, v4, Lad/j0;->b1:Z

    iget-object v6, v5, Lua/nav/routing/Route;->e:Ljava/util/List;

    invoke-static {v6}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lua/nav/routing/GeoPoint;

    iput-object v6, v4, Lad/j0;->g1:Lua/nav/routing/GeoPoint;

    iput-wide v14, v4, Lad/j0;->h1:J

    const-wide v9, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v9, v4, Lad/j0;->i1:D

    iput-wide v14, v4, Lad/j0;->D1:J

    const-wide/16 v9, 0x0

    iput-wide v9, v4, Lad/j0;->F1:D

    iput-wide v9, v4, Lad/j0;->G1:D

    const-wide/16 v12, 0x0

    iput-wide v12, v4, Lad/j0;->Y:J

    const-string v6, "\u2014"

    iput-object v6, v4, Lad/j0;->v1:Ljava/lang/String;

    iput-wide v14, v4, Lad/j0;->W0:J

    iget-object v6, v8, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v6}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldd/n;

    iget-object v9, v6, Ldd/n;->c:Ldd/l0;

    iget-object v6, v6, Ldd/n;->d:Ldd/l0;

    iget-object v10, v4, Lad/j0;->l:Lp/a1;

    if-eqz v10, :cond_8

    invoke-virtual {v10}, Lp/a1;->invoke()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ldd/l0;

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    invoke-static {v9, v6, v14, v15, v10}, Lad/t2;->f(Ldd/l0;Ldd/l0;JLdd/l0;)Lad/p1;

    move-result-object v6

    const/4 v9, 0x1

    iput-boolean v9, v4, Lad/j0;->l0:Z

    iget-object v10, v4, Lad/j0;->k0:Lad/a1;

    iget-object v11, v10, Lad/a1;->a:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const/4 v11, 0x0

    iput-object v11, v10, Lad/a1;->b:Ljava/lang/String;

    const-wide/16 v12, 0x0

    iput-wide v12, v4, Lad/j0;->o0:J

    iput-wide v12, v4, Lad/j0;->p0:J

    iput-boolean v9, v4, Lad/j0;->m0:Z

    const/4 v10, 0x0

    iput-boolean v10, v4, Lad/j0;->n0:Z

    if-eqz v6, :cond_11

    iget-wide v9, v6, Lad/p1;->c:J

    iget-object v12, v6, Lad/p1;->b:Lad/o1;

    iget-object v6, v6, Lad/p1;->a:Ldd/l0;

    move-object/from16 v16, v11

    new-instance v11, Lua/nav/routing/GeoPoint;

    move-object/from16 v29, v2

    move-object/from16 v23, v3

    iget-wide v2, v6, Ldd/l0;->d:D

    iget-object v13, v6, Ldd/l0;->i:Ljava/lang/Float;

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    iget-wide v7, v6, Ldd/l0;->e:D

    invoke-direct {v11, v2, v3, v7, v8}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    sget-object v2, Lad/o1;->l:Lad/o1;

    if-ne v12, v2, :cond_9

    invoke-virtual {v4, v6}, Lad/j0;->o(Ldd/l0;)Ljava/lang/Double;

    move-result-object v3

    move-object/from16 v18, v3

    :goto_5
    const-wide/16 v7, 0x0

    goto :goto_6

    :cond_9
    move-object/from16 v18, v16

    goto :goto_5

    :goto_6
    const/16 v19, 0xe

    move-object v3, v12

    move-object/from16 v17, v13

    const-wide/16 v12, 0x0

    move-wide/from16 v26, v14

    const-wide/16 v14, 0x0

    move-object/from16 v30, v16

    move-object/from16 v28, v17

    const-wide/16 v16, 0x0

    move-wide v7, v9

    move-object/from16 v10, v21

    move-object v9, v3

    move-object/from16 v3, v30

    invoke-static/range {v10 .. v19}, Lad/x1;->e(Lad/x1;Lua/nav/routing/GeoPoint;DDDLjava/lang/Double;I)Lad/w1;

    move-result-object v11

    iget-wide v12, v11, Lad/w1;->a:D

    iget-wide v14, v11, Lad/w1;->b:D

    const-wide/32 v16, 0x2bf20

    cmp-long v11, v7, v16

    const-wide/16 v16, 0x2710

    if-lez v11, :cond_b

    move-object/from16 v18, v4

    move-wide/from16 v31, v7

    :cond_a
    const/4 v3, 0x0

    goto :goto_a

    :cond_b
    if-ne v9, v2, :cond_c

    cmp-long v11, v7, v16

    if-gtz v11, :cond_c

    move-object/from16 v18, v4

    move-wide/from16 v31, v7

    :goto_7
    const/4 v3, 0x1

    goto :goto_a

    :cond_c
    if-eqz v28, :cond_d

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v11

    :goto_8
    move-object/from16 v18, v4

    goto :goto_9

    :cond_d
    const/high16 v11, 0x43960000    # 300.0f

    goto :goto_8

    :goto_9
    float-to-double v3, v11

    const/4 v11, 0x2

    move-wide/from16 v31, v3

    int-to-double v3, v11

    mul-double v3, v3, v31

    move-wide/from16 v31, v7

    const-wide v7, 0x4062c00000000000L    # 150.0

    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    cmpg-double v3, v14, v3

    if-gtz v3, :cond_a

    goto :goto_7

    :goto_a
    const/16 v4, 0x3e8

    int-to-long v7, v4

    div-long v7, v31, v7

    if-eqz v28, :cond_e

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Float;->floatValue()F

    move-result v4

    float-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_b

    :cond_e
    const/4 v11, 0x0

    :goto_b
    double-to-int v4, v14

    double-to-int v14, v12

    new-instance v15, Ljava/lang/StringBuilder;

    move-object/from16 v19, v5

    const-string v5, "nav_start_pos src="

    invoke-direct {v15, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " age_s="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " acc="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " off="

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " s="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " accepted="

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_10

    move-object/from16 v3, v18

    const/4 v11, 0x0

    iput-boolean v11, v3, Lad/j0;->l0:Z

    invoke-virtual {v10, v12, v13}, Lad/x1;->g(D)V

    if-ne v9, v2, :cond_f

    cmp-long v2, v31, v16

    if-gtz v2, :cond_f

    iget-wide v7, v6, Ldd/l0;->c:J

    iput-wide v7, v3, Lad/j0;->Y:J

    iget-object v2, v6, Ldd/l0;->g:Ljava/lang/Float;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    float-to-double v5, v2

    iput-wide v5, v3, Lad/j0;->X:D

    const/4 v2, 0x1

    iput-boolean v2, v3, Lad/j0;->a0:Z

    iput-wide v5, v3, Lad/j0;->b0:D

    goto :goto_c

    :cond_f
    const/4 v2, 0x1

    goto :goto_c

    :cond_10
    move-object/from16 v3, v18

    const/4 v2, 0x1

    const/4 v11, 0x0

    goto :goto_c

    :cond_11
    move-object/from16 v29, v2

    move-object/from16 v23, v3

    move-object v3, v4

    move-object/from16 v19, v5

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move v2, v9

    move-wide/from16 v26, v14

    const/4 v11, 0x0

    const-string v4, "nav_start_pos src=none"

    :goto_c
    iget-object v5, v3, Lad/j0;->j:Lx9/l0;

    move-object v6, v4

    new-instance v4, Lad/a0;

    move-wide/from16 v7, v26

    const/16 v27, 0x0

    const v28, -0x80004

    move-object v9, v6

    const/4 v6, 0x0

    move-wide v12, v7

    const-wide/16 v7, 0x0

    move-object v10, v9

    const/4 v9, 0x0

    move-object v14, v10

    move/from16 v22, v11

    const-wide/16 v10, 0x0

    move-wide v15, v12

    const-wide/16 v12, 0x0

    move-object/from16 v17, v14

    const/4 v14, 0x0

    move-wide/from16 v20, v15

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v26, v17

    const-wide/16 v17, 0x0

    move-object/from16 v31, v5

    move-object/from16 v5, v19

    const/16 v19, 0x0

    move-wide/from16 v32, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v34, v22

    move-object/from16 v22, v23

    const/16 v23, 0x0

    move-object/from16 v35, v24

    move-object/from16 v36, v25

    const-wide/16 v24, 0x0

    move-object/from16 v37, v26

    const/16 v26, 0x0

    move-object/from16 v0, v31

    move-object/from16 v31, v1

    move-object v1, v0

    move-object v0, v3

    move-object/from16 v2, v35

    move-object/from16 v3, v36

    invoke-direct/range {v4 .. v28}, Lad/a0;-><init>(Lua/nav/routing/Route;Lua/nav/routing/Step;DLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLua/nav/routing/GeoPoint;IDZLjava/lang/String;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v9, 0x0

    invoke-virtual {v1, v9, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v2, v5}, Ldd/k0;->j(Lua/nav/routing/Route;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lad/j0;->g:Lua/nav/a;

    iget-object v4, v4, Lua/nav/a;->m:Lx9/l0;

    invoke-virtual {v4}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v3, v3, Ldd/m;->h:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldd/n;

    iget-boolean v3, v3, Ldd/n;->l:Z

    if-nez v3, :cond_12

    invoke-virtual {v2}, Ldd/k0;->l()V

    goto :goto_d

    :cond_12
    const-string v3, "nav_start"

    invoke-virtual {v2, v3}, Ldd/k0;->i(Ljava/lang/String;)Ljava/io/File;

    :goto_d
    invoke-virtual {v5}, Lua/nav/routing/Route;->c()D

    move-result-wide v3

    double-to-int v3, v3

    iget-object v4, v5, Lua/nav/routing/Route;->a:Ljava/lang/String;

    iget-object v6, v0, Lad/j0;->U:Ljava/lang/Object;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "nav_start len="

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " provider="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " cams="

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " via="

    const-string v4, " route="

    invoke-static {v8, v6, v3, v7, v4}, Lm/a;->u(Ljava/lang/StringBuilder;ILjava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    move-object/from16 v6, v37

    invoke-virtual {v2, v6}, Ldd/k0;->n(Ljava/lang/String;)V

    const-string v1, "GPS"

    invoke-virtual {v0, v1}, Lad/j0;->y(Ljava/lang/String;)V

    iget-object v1, v0, Lad/j0;->b:Lad/r2;

    iget-object v2, v5, Lua/nav/routing/Route;->f:Ljava/util/List;

    invoke-static {v2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/routing/Step;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lua/nav/routing/Step;->b()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_13

    goto :goto_e

    :cond_13
    const/4 v9, 0x0

    goto :goto_f

    :cond_14
    :goto_e
    sget-object v2, Lcd/d;->h1:Lcd/c;

    const/4 v9, 0x0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_f
    const/4 v3, 0x4

    invoke-static {v1, v2, v9, v3}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    move-wide/from16 v7, v32

    iput-wide v7, v0, Lad/j0;->M1:J

    iget-object v1, v0, Lad/j0;->p:Lid/d0;

    if-eqz v1, :cond_15

    invoke-virtual {v1, v5}, Lid/d0;->b(Lua/nav/routing/Route;)V

    :cond_15
    const/4 v9, 0x0

    iput-object v9, v0, Lad/j0;->q:Lad/q1;

    const-wide/16 v12, 0x0

    iput-wide v12, v0, Lad/j0;->r:J

    const-wide/high16 v1, 0x7ff8000000000000L    # Double.NaN

    iput-wide v1, v0, Lad/j0;->D:D

    iget-object v1, v0, Lad/j0;->c:Lu9/t;

    new-instance v2, Lad/w;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v9, v3}, Lad/w;-><init>(Ljava/lang/Object;Ly8/c;I)V

    const/4 v3, 0x3

    invoke-static {v1, v9, v9, v2, v3}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v1

    iput-object v1, v0, Lad/j0;->V:Lu9/j1;

    :goto_10
    invoke-virtual/range {v31 .. v31}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lsc/q0;

    invoke-static {v5}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v17

    const/16 v22, 0x0

    const v23, 0xf3ff

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-static/range {v6 .. v23}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    move-object/from16 v2, v31

    invoke-virtual {v2, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual/range {p0 .. p0}, Lua/nav/c;->G()V

    sget-object v0, Lua/nav/guidance/NavService;->Companion:Lad/s0;

    const-string v1, "null cannot be cast to non-null type T of androidx.lifecycle.AndroidViewModel.getApplication"

    move-object/from16 v3, p0

    iget-object v2, v3, Landroidx/lifecycle/a;->b:Landroid/app/Application;

    invoke-static {v2, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Lad/s0;->a(Landroid/app/Application;)V

    return-void

    :cond_16
    move-object/from16 v3, p0

    move-object/from16 v31, v2

    goto :goto_10
.end method

.method public final W()V
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lua/nav/c;->d:Lad/j0;

    iget-object v2, v1, Lad/j0;->k:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lad/a0;

    iget-boolean v3, v2, Lad/a0;->a:Z

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Lad/a0;->p:Z

    if-nez v3, :cond_0

    iget-wide v2, v2, Lad/a0;->j:D

    const-wide v4, 0x4072c00000000000L    # 300.0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Lad/j0;->K()V

    if-eqz v2, :cond_3

    :cond_2
    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lsc/q0;

    sget-object v9, Lsc/d;->m:Lsc/d;

    const/16 v19, 0x0

    const v20, 0xf3c3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    sget-object v8, Lu8/r;->l:Lu8/r;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v14, v8

    invoke-static/range {v3 .. v20}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Lsc/d;->l:Lsc/d;

    invoke-virtual {v0, v1}, Lua/nav/c;->Y(Lsc/d;)Z

    invoke-virtual {v0}, Lua/nav/c;->G()V

    :cond_3
    sget-object v1, Lua/nav/guidance/NavService;->Companion:Lad/s0;

    const-string v2, "null cannot be cast to non-null type T of androidx.lifecycle.AndroidViewModel.getApplication"

    iget-object v3, v0, Landroidx/lifecycle/a;->b:Landroid/app/Application;

    invoke-static {v3, v2}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lua/nav/guidance/NavService;

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v3, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iget-object v2, v0, Lua/nav/c;->x:Lx9/l0;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iget-object v0, v0, Lua/nav/c;->z:Lx9/l0;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v3, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    return-void
.end method

.method public final X(Lsc/e;)Z
    .locals 22

    move-object/from16 v0, p0

    sget-object v1, Lsc/e;->l:Lsc/e;

    iget-object v2, v0, Lua/nav/c;->h:Lx9/l0;

    move-object/from16 v3, p1

    if-ne v3, v1, :cond_0

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/Favorites;

    iget-object v1, v1, Lua/nav/routing/Favorites;->a:Lua/nav/routing/Favorite;

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lua/nav/routing/Favorites;

    iget-object v1, v1, Lua/nav/routing/Favorites;->b:Lua/nav/routing/Favorite;

    :goto_0
    if-nez v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    iget-object v2, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsc/q0;

    iget-object v3, v3, Lsc/q0;->f:Lsc/d;

    sget-object v4, Lsc/d;->n:Lsc/d;

    if-ne v3, v4, :cond_2

    sget-object v3, Lsc/d;->m:Lsc/d;

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lsc/q0;

    iget-object v3, v3, Lsc/q0;->f:Lsc/d;

    :goto_1
    iget-object v4, v1, Lua/nav/routing/Favorite;->a:Lua/nav/routing/GeoPoint;

    iget-object v1, v1, Lua/nav/routing/Favorite;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v1}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lsc/q0;

    sget-object v1, Lsc/d;->l:Lsc/d;

    if-ne v3, v1, :cond_4

    sget-object v1, Lsc/d;->m:Lsc/d;

    :cond_4
    move-object v10, v1

    const/16 v20, 0x0

    const v21, 0xffdf

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v4 .. v21}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    return v0
.end method

.method public final Y(Lsc/d;)Z
    .locals 16

    move-object/from16 v2, p0

    move-object/from16 v9, p1

    invoke-virtual {v2}, Lua/nav/c;->i()Lad/p1;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, v0, Lad/p1;->a:Ldd/l0;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v10, Lua/nav/routing/GeoPoint;

    iget-wide v11, v0, Ldd/l0;->d:D

    iget-wide v13, v0, Ldd/l0;->e:D

    invoke-direct {v10, v11, v12, v13, v14}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-static {v11, v12, v13, v14}, Ldd/w0;->a(DD)Z

    move-result v0

    const/4 v15, 0x1

    if-nez v0, :cond_1

    invoke-virtual {v2, v9, v10}, Lua/nav/c;->S(Lsc/d;Lua/nav/routing/GeoPoint;)V

    return v15

    :cond_1
    new-instance v0, Lb0/k2;

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v1, 0x1

    const-class v3, Lua/nav/c;

    const-string v4, "inUkraine"

    const-string v5, "inUkraine(Lua/nav/routing/GeoPoint;)Z"

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v8}, Lb0/k2;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;III)V

    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->e()Ldd/i;

    move-result-object v1

    invoke-virtual {v1}, Ldd/i;->b()Lid/h1;

    move-result-object v1

    invoke-static {v10, v0, v1}, Lid/i1;->b(Lua/nav/routing/GeoPoint;Li9/c;Lid/h1;)Lt8/j;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Lt8/j;->l:Ljava/lang/Object;

    check-cast v1, Lua/nav/routing/GeoPoint;

    iget-object v0, v0, Lt8/j;->m:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    const-string v5, "start_cell_area reason=gps_far gps=%.4f,%.4f"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v2, Lua/nav/c;->c:Ldd/k0;

    invoke-virtual {v4, v3}, Ldd/k0;->n(Ljava/lang/String;)V

    sget-object v3, Lsc/d;->n:Lsc/d;

    if-ne v9, v3, :cond_2

    invoke-virtual {v2, v1}, Lua/nav/c;->g(Lua/nav/routing/GeoPoint;)V

    return v15

    :cond_2
    invoke-virtual {v2, v9, v1, v0}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    return v15

    :cond_3
    sget-object v0, Lsc/d;->n:Lsc/d;

    if-ne v9, v0, :cond_4

    invoke-virtual {v2, v10}, Lua/nav/c;->g(Lua/nav/routing/GeoPoint;)V

    return v15

    :cond_4
    const-string v0, "\u041c\u043e\u0454 \u043c\u0456\u0441\u0446\u0435"

    invoke-virtual {v2, v9, v10, v0}, Lua/nav/c;->U(Lsc/d;Lua/nav/routing/GeoPoint;Ljava/lang/String;)V

    return v15

    :cond_5
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()V
    .locals 0

    return-void
.end method

.method public final g(Lua/nav/routing/GeoPoint;)V
    .locals 22

    move-object/from16 v0, p1

    const-string v1, "p"

    invoke-static {v0, v1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p1}, Lua/nav/c;->L(Lua/nav/routing/GeoPoint;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v1

    move-object/from16 v2, p0

    iget-object v3, v2, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lsc/q0;

    iget-object v4, v4, Lsc/q0;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Luc/f;->b(I)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lsc/q0;

    const-string v1, "\u0423 \u0431\u0435\u0437\u043a\u043e\u0448\u0442\u043e\u0432\u043d\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u2014 \u043d\u0435 \u0431\u0456\u043b\u044c\u0448\u0435 1 \u043f\u0440\u043e\u043c\u0456\u0436\u043d\u043e\u0457 \u0442\u043e\u0447\u043a\u0438. \u041e\u0444\u043e\u0440\u043c\u0456\u0442\u044c \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443 \u0434\u043b\u044f \u0431\u0456\u043b\u044c\u0448\u043e\u0457 \u043a\u0456\u043b\u044c\u043a\u043e\u0441\u0442\u0456."

    invoke-static {v1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x7fff

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

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v4 .. v21}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    :cond_2
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lsc/q0;

    iget-object v5, v4, Lsc/q0;->e:Ljava/util/List;

    invoke-static {v5, v0}, Lu8/m;->q0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v9

    const/16 v20, 0x0

    const v21, 0xdbef

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v15, Lu8/r;->l:Lu8/r;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v4 .. v21}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lua/nav/c;->G()V

    return-void
.end method

.method public final h(Lua/nav/routing/GeoPoint;La9/c;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lsc/k0;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lsc/k0;

    iget v4, v3, Lsc/k0;->o:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lsc/k0;->o:I

    goto :goto_0

    :cond_0
    new-instance v3, Lsc/k0;

    invoke-direct {v3, v0, v2}, Lsc/k0;-><init>(Lua/nav/c;La9/c;)V

    :goto_0
    iget-object v2, v3, Lsc/k0;->m:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lsc/k0;->o:I

    iget-object v6, v0, Lua/nav/c;->c:Ldd/k0;

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v5, :cond_2

    if-ne v5, v7, :cond_1

    iget-object v1, v3, Lsc/k0;->l:Lua/nav/routing/GeoPoint;

    :try_start_0
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lsc/q0;

    iget-object v2, v2, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-nez v2, :cond_4

    invoke-virtual {v0}, Lua/nav/c;->i()Lad/p1;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, v2, Lad/p1;->a:Ldd/l0;

    if-eqz v2, :cond_3

    new-instance v5, Lua/nav/routing/GeoPoint;

    iget-wide v9, v2, Ldd/l0;->d:D

    iget-wide v11, v2, Ldd/l0;->e:D

    invoke-direct {v5, v9, v10, v11, v12}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    move-object v2, v5

    goto :goto_1

    :cond_3
    move-object v2, v8

    :goto_1
    if-nez v2, :cond_4

    const-string v0, "approx_end no_start"

    invoke-virtual {v6, v0}, Ldd/k0;->n(Ljava/lang/String;)V

    return-object v8

    :cond_4
    :try_start_1
    iget-object v0, v0, Lua/nav/c;->f:Lid/d1;

    filled-new-array {v2, v1}, [Lua/nav/routing/GeoPoint;

    move-result-object v2

    invoke-static {v2}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v1, v3, Lsc/k0;->l:Lua/nav/routing/GeoPoint;

    iput v7, v3, Lsc/k0;->o:I

    invoke-interface {v0, v2, v3}, Lid/d1;->d(Ljava/util/List;La9/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    :goto_2
    check-cast v2, Ljava/util/List;

    invoke-static {v2}, Lu8/m;->g0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/Route;

    if-eqz v0, :cond_6

    iget-object v0, v0, Lua/nav/routing/Route;->e:Ljava/util/List;

    if-eqz v0, :cond_6

    invoke-static {v0}, Lu8/m;->m0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/GeoPoint;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :cond_6
    move-object v0, v8

    goto :goto_4

    :goto_3
    invoke-static {v0}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object v0

    :goto_4
    instance-of v2, v0, Lt8/l;

    if-eqz v2, :cond_7

    move-object v0, v8

    :cond_7
    check-cast v0, Lua/nav/routing/GeoPoint;

    if-eqz v0, :cond_8

    sget-object v2, Ldd/t0;->Companion:Ldd/s0;

    iget-wide v9, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v11, v0, Lua/nav/routing/GeoPoint;->b:D

    iget-wide v13, v1, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v3, v1, Lua/nav/routing/GeoPoint;->b:D

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v15, v3

    invoke-static/range {v9 .. v16}, Ldd/s0;->a(DDDD)D

    move-result-wide v1

    new-instance v3, Ljava/lang/Double;

    invoke-direct {v3, v1, v2}, Ljava/lang/Double;-><init>(D)V

    goto :goto_5

    :cond_8
    move-object v3, v8

    :goto_5
    if-nez v0, :cond_9

    const-string v1, "route_failed"

    goto :goto_6

    :cond_9
    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    double-to-int v1, v1

    const-string v2, "d="

    invoke-static {v1, v2}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "approx_end "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ldd/k0;->n(Ljava/lang/String;)V

    if-eqz v0, :cond_a

    iget-wide v1, v0, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v4, v0, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v1, v2, v4, v5}, Ldd/w0;->a(DD)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {v3}, Lj9/n;->d(Ljava/lang/Object;)V

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    const-wide v3, 0x40a7700000000000L    # 3000.0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_a

    move-object v8, v0

    :cond_a
    return-object v8
.end method

.method public final i()Lad/p1;
    .locals 4

    iget-object p0, p0, Lua/nav/c;->c:Ldd/k0;

    iget-object p0, p0, Ldd/k0;->j:Ldd/m;

    iget-object p0, p0, Ldd/m;->h:Lx9/l0;

    invoke-virtual {p0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ldd/n;

    iget-object v0, p0, Ldd/n;->c:Ldd/l0;

    iget-object p0, p0, Ldd/n;->d:Ldd/l0;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sget-object v3, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->i()Lad/x;

    move-result-object v3

    invoke-virtual {v3}, Lad/x;->a()Ldd/l0;

    move-result-object v3

    invoke-static {v0, p0, v1, v2, v3}, Lad/t2;->f(Ldd/l0;Ldd/l0;JLdd/l0;)Lad/p1;

    move-result-object p0

    return-object p0
.end method

.method public final j()V
    .locals 26

    move-object/from16 v1, p0

    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->v()Lua/nav/update/a;

    move-result-object v0

    iget-object v0, v0, Lua/nav/update/a;->e:Lx9/l0;

    invoke-virtual {v0}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lqd/q;

    iget-object v0, v0, Lqd/q;->a:Lqd/o;

    sget-object v2, Lqd/o;->n:Lqd/o;

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lsc/i0;->h()Luc/f;

    move-result-object v0

    iget-object v2, v0, Luc/f;->g:Lx9/l0;

    invoke-virtual {v0}, Luc/f;->d()Luc/c;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x0

    invoke-virtual {v2, v7, v3}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Luc/c;

    const-string v3, "unlimited_builds"

    invoke-virtual {v2, v3}, Luc/c;->b(Ljava/lang/String;)Z

    move-result v2

    iget-object v3, v1, Lua/nav/c;->q:Lx9/l0;

    if-nez v2, :cond_2

    invoke-virtual {v0}, Luc/f;->j()I

    move-result v0

    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lsc/q0;

    const-string v1, "\u041b\u0456\u043c\u0456\u0442 \u043f\u043e\u0431\u0443\u0434\u043e\u0432 \u043d\u0430 \u0441\u044c\u043e\u0433\u043e\u0434\u043d\u0456 \u0432\u0438\u0447\u0435\u0440\u043f\u0430\u043d\u043e (5/\u0434\u043e\u0431\u0443). \u0421\u043f\u0440\u043e\u0431\u0443\u0439\u0442\u0435 \u0437\u0430\u0432\u0442\u0440\u0430 \u0430\u0431\u043e \u043e\u0444\u043e\u0440\u043c\u0456\u0442\u044c \u043f\u0456\u0434\u043f\u0438\u0441\u043a\u0443."

    invoke-static {v1}, Lcd/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v20, 0x0

    const v21, 0xdfff

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

    const/16 v19, 0x0

    invoke-static/range {v4 .. v21}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_2
    :goto_0
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsc/q0;

    iget-object v0, v0, Lsc/q0;->b:Ljava/lang/String;

    const-string v2, "\u041c\u043e\u0454 \u043c\u0456\u0441\u0446\u0435"

    invoke-static {v0, v2}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1}, Lua/nav/c;->i()Lad/p1;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, v0, Lad/p1;->a:Ldd/l0;

    if-eqz v0, :cond_4

    :cond_3
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Lsc/q0;

    new-instance v9, Lua/nav/routing/GeoPoint;

    iget-wide v4, v0, Ldd/l0;->d:D

    iget-wide v10, v0, Ldd/l0;->e:D

    invoke-direct {v9, v4, v5, v10, v11}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    const/16 v24, 0x0

    const v25, 0xfffe

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v8 .. v25}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_4
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lsc/q0;

    iget-object v0, v2, Lsc/q0;->a:Lua/nav/routing/GeoPoint;

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    iget-object v4, v2, Lsc/q0;->c:Lua/nav/routing/GeoPoint;

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    filled-new-array {v0, v4}, [Lua/nav/routing/GeoPoint;

    move-result-object v5

    invoke-static {v5}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v6, v2, Lsc/q0;->e:Ljava/util/List;

    invoke-static {v5, v6}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v8, 0x0

    :cond_8
    if-ge v8, v6, :cond_a

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    check-cast v9, Lua/nav/routing/GeoPoint;

    iget-wide v10, v9, Lua/nav/routing/GeoPoint;->a:D

    iget-wide v12, v9, Lua/nav/routing/GeoPoint;->b:D

    invoke-static {v10, v11, v12, v13}, Ldd/w0;->b(DD)Z

    move-result v9

    if-nez v9, :cond_8

    :cond_9
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lsc/q0;

    const/16 v20, 0x0

    const v21, 0xdfff

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

    const-string v18, "\u0422\u043e\u0447\u043a\u0430 \u0437\u0430 \u043c\u0435\u0436\u0430\u043c\u0438 \u0423\u043a\u0440\u0430\u0457\u043d\u0438. \u0423 \u0446\u0456\u0439 \u0432\u0435\u0440\u0441\u0456\u0457 \u043f\u0456\u0434\u0442\u0440\u0438\u043c\u0443\u0454\u0442\u044c\u0441\u044f \u043b\u0438\u0448\u0435 \u0423\u043a\u0440\u0430\u0457\u043d\u0430."

    const/16 v19, 0x0

    invoke-static/range {v4 .. v21}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_1
    return-void

    :cond_a
    :goto_2
    invoke-virtual {v3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lsc/q0;

    const/16 v24, 0x0

    const v25, 0xcfff

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-static/range {v8 .. v25}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v3, v1, Lua/nav/c;->u:Lu9/j1;

    if-eqz v3, :cond_b

    invoke-virtual {v3, v7}, Lu9/c1;->c(Ljava/util/concurrent/CancellationException;)V

    :cond_b
    invoke-static {v1}, Landroidx/lifecycle/t0;->h(Landroidx/lifecycle/z0;)Lf4/a;

    move-result-object v8

    move-object v3, v0

    new-instance v0, Landroidx/lifecycle/l0;

    const/4 v5, 0x0

    const/16 v6, 0x9

    invoke-direct/range {v0 .. v6}, Landroidx/lifecycle/l0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    const/4 v2, 0x3

    invoke-static {v8, v7, v7, v0, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    move-result-object v0

    iput-object v0, v1, Lua/nav/c;->u:Lu9/j1;

    return-void
.end method

.method public final k(Lsc/d;)V
    .locals 21

    move-object/from16 v0, p0

    :cond_0
    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lsc/q0;

    sget-object v9, Lsc/d;->l:Lsc/d;

    sget-object v14, Lu8/r;->l:Lu8/r;

    move-object/from16 v4, p1

    if-ne v4, v9, :cond_1

    const/16 v19, 0x0

    const v20, 0xfbdc

    const/4 v4, 0x0

    const-string v5, ""

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

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

    goto :goto_0

    :cond_1
    sget-object v9, Lsc/d;->m:Lsc/d;

    const/16 v19, 0x0

    const v20, 0xfbd3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v7, ""

    const/4 v8, 0x0

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

    :goto_0
    invoke-virtual {v1, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lua/nav/c;->G()V

    return-void
.end method

.method public final l()V
    .locals 21

    move-object/from16 v0, p0

    :cond_0
    iget-object v1, v0, Lua/nav/c;->q:Lx9/l0;

    invoke-virtual {v1}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lsc/q0;

    const/16 v19, 0x0

    const v20, 0xfeff

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    sget-object v12, Lu8/r;->l:Lu8/r;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v3 .. v20}, Lsc/q0;->a(Lsc/q0;Lua/nav/routing/GeoPoint;Ljava/lang/String;Lua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/util/List;Lsc/d;Lsc/d;Ljava/lang/String;Ljava/util/List;ZLjava/util/List;IZLjava/lang/String;ZLjava/lang/String;I)Lsc/q0;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void
.end method

.method public final m()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->i:Lx9/l0;

    return-object p0
.end method

.method public final n()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->E:Lx9/l0;

    return-object p0
.end method

.method public final o()Lbd/l;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->o:Lbd/l;

    return-object p0
.end method

.method public final p()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->p:Lx9/l0;

    return-object p0
.end method

.method public final q()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->n:Lx9/l0;

    return-object p0
.end method

.method public final r()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->m:Lx9/l0;

    return-object p0
.end method

.method public final s()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->h:Lx9/l0;

    return-object p0
.end method

.method public final t()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->e:Lx9/l0;

    return-object p0
.end method

.method public final u()Lad/j0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->d:Lad/j0;

    return-object p0
.end method

.method public final v()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->l:Lx9/l0;

    return-object p0
.end method

.method public final w()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->K:Lx9/l0;

    return-object p0
.end method

.method public final x()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->A:Lx9/l0;

    return-object p0
.end method

.method public final y()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->r:Lx9/l0;

    return-object p0
.end method

.method public final z()Lx9/l0;
    .locals 0

    iget-object p0, p0, Lua/nav/c;->y:Lx9/l0;

    return-object p0
.end method
