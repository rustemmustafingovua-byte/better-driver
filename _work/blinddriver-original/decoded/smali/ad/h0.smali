.class public final Lad/h0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lua/nav/routing/GeoPoint;

.field public final synthetic o:Lad/j0;

.field public final synthetic p:Lua/nav/routing/GeoPoint;

.field public final synthetic q:Lad/o0;

.field public final synthetic r:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Lua/nav/routing/GeoPoint;Lad/j0;Lua/nav/routing/GeoPoint;Lad/o0;ZLy8/c;)V
    .locals 0

    iput-object p1, p0, Lad/h0;->m:Ljava/lang/Object;

    iput-object p2, p0, Lad/h0;->n:Lua/nav/routing/GeoPoint;

    iput-object p3, p0, Lad/h0;->o:Lad/j0;

    iput-object p4, p0, Lad/h0;->p:Lua/nav/routing/GeoPoint;

    iput-object p5, p0, Lad/h0;->q:Lad/o0;

    iput-boolean p6, p0, Lad/h0;->r:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p7}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 8

    new-instance v0, Lad/h0;

    iget-object v5, p0, Lad/h0;->q:Lad/o0;

    iget-boolean v6, p0, Lad/h0;->r:Z

    iget-object v1, p0, Lad/h0;->m:Ljava/lang/Object;

    iget-object v2, p0, Lad/h0;->n:Lua/nav/routing/GeoPoint;

    iget-object v3, p0, Lad/h0;->o:Lad/j0;

    iget-object v4, p0, Lad/h0;->p:Lua/nav/routing/GeoPoint;

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Lad/h0;-><init>(Ljava/util/List;Lua/nav/routing/GeoPoint;Lad/j0;Lua/nav/routing/GeoPoint;Lad/o0;ZLy8/c;)V

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/h0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/h0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/h0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 52

    move-object/from16 v6, p0

    iget-object v7, v6, Lad/h0;->o:Lad/j0;

    iget-object v8, v7, Lad/j0;->b:Lad/r2;

    iget-object v9, v7, Lad/j0;->j:Lx9/l0;

    sget-object v10, Lz8/a;->l:Lz8/a;

    iget v0, v6, Lad/h0;->l:I

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v11, :cond_0

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v0, v6, Lad/h0;->n:Lua/nav/routing/GeoPoint;

    invoke-static {v0}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, v6, Lad/h0;->m:Ljava/lang/Object;

    invoke-static {v1, v0}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v1, v7, Lad/j0;->d:Lid/d1;

    new-instance v5, Lad/b0;

    const/4 v0, 0x2

    invoke-direct {v5, v7, v0}, Lad/b0;-><init>(Lad/j0;I)V

    iput v11, v6, Lad/h0;->l:I

    sget-object v0, Lad/t1;->a:Lad/t1;

    iget-object v2, v6, Lad/h0;->p:Lua/nav/routing/GeoPoint;

    iget-object v4, v6, Lad/h0;->q:Lad/o0;

    invoke-virtual/range {v0 .. v6}, Lad/t1;->a(Lid/d1;Lua/nav/routing/GeoPoint;Ljava/util/ArrayList;Lad/o0;Li9/c;La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_2

    return-object v10

    :cond_2
    :goto_0
    check-cast v0, Lad/r1;

    iget-object v0, v0, Lad/r1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    sget-object v3, Lt8/z;->a:Lt8/z;

    if-eqz v1, :cond_4

    :cond_3
    invoke-virtual {v9}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lad/a0;

    const v48, -0x20001

    const/16 v49, 0x1

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const-wide/16 v18, 0x0

    const/16 v20, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

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

    const-wide/16 v36, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    invoke-static/range {v10 .. v49}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v1

    invoke-virtual {v9, v0, v1}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcd/d;->k1:Lcd/c;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v8, v0, v2, v1}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    return-object v3

    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-boolean v4, v6, Lad/h0;->r:Z

    if-eq v1, v11, :cond_5

    if-eqz v4, :cond_6

    :cond_5
    move-object v5, v0

    goto :goto_2

    :cond_6
    :goto_1
    invoke-virtual {v9}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lad/a0;

    const v50, -0x60001

    const/16 v51, 0x1

    const/4 v13, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const-wide/16 v20, 0x0

    const/16 v22, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const-wide/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const/16 v43, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v47, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v35, v0

    invoke-static/range {v12 .. v51}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v0

    move-object/from16 v5, v35

    invoke-virtual {v9, v1, v0}, Lx9/l0;->i(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v0}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcd/d;->l1:Lcd/c;

    invoke-virtual {v1, v0}, Lcd/c;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v8, v0, v2, v1}, Lad/r2;->g(Lad/r2;Ljava/lang/String;ZI)V

    return-object v3

    :cond_7
    move-object v0, v5

    goto :goto_1

    :goto_2
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lua/nav/routing/Route;

    sget-object v1, Lad/j0;->Companion:Lad/d0;

    invoke-virtual {v7, v0, v4}, Lad/j0;->f(Lua/nav/routing/Route;Z)V

    return-object v3
.end method
