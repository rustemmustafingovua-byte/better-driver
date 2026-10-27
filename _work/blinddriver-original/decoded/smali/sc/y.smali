.class public final Lsc/y;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public synthetic l:Lad/a0;

.field public synthetic m:Lad/s;


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lad/a0;

    check-cast p2, Lad/s;

    check-cast p3, Ly8/c;

    new-instance p0, Lsc/y;

    const/4 v0, 0x3

    invoke-direct {p0, v0, p3}, La9/i;-><init>(ILy8/c;)V

    iput-object p1, p0, Lsc/y;->l:Lad/a0;

    iput-object p2, p0, Lsc/y;->m:Lad/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 41

    move-object/from16 v0, p0

    iget-object v1, v0, Lsc/y;->l:Lad/a0;

    iget-object v0, v0, Lsc/y;->m:Lad/s;

    sget-object v2, Lz8/a;->l:Lz8/a;

    invoke-static/range {p1 .. p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v1, Lad/a0;->d:Lua/nav/routing/GeoPoint;

    if-nez v2, :cond_1

    iget-object v5, v0, Lad/s;->a:Lua/nav/routing/GeoPoint;

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    iget v6, v0, Lad/s;->b:F

    iget-wide v2, v0, Lad/s;->d:D

    const-wide v7, 0x400ccccccccccccdL    # 3.6

    mul-double/2addr v2, v7

    double-to-float v2, v2

    iget-wide v3, v0, Lad/s;->f:D

    const v39, -0x400819

    const/16 v40, 0x1

    move/from16 v16, v2

    const/4 v2, 0x0

    move-wide/from16 v27, v3

    const-wide/16 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const-wide/16 v19, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    invoke-static/range {v1 .. v40}, Lad/a0;->a(Lad/a0;Lua/nav/routing/Route;DLua/nav/routing/GeoPoint;FLua/nav/routing/Step;IDLua/nav/routing/Step;DDFZZDZLjava/lang/String;ZLjava/util/List;Ljava/lang/Integer;IDZZLjava/lang/String;ZIZLua/nav/routing/GeoPoint;ZIIII)Lad/a0;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    return-object v1
.end method
