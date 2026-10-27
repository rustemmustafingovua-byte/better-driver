.class public final synthetic Lsc/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lsc/u0;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 83

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iget v1, v1, Lsc/u0;->l:I

    const-string v2, "element"

    const-string v3, "acc"

    const-string v4, "b"

    const-string v5, "a"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const-string v8, "t"

    packed-switch v1, :pswitch_data_0

    check-cast v0, Lz9/v;

    move-object/from16 v1, p2

    check-cast v1, Ly8/f;

    return-object v0

    :pswitch_0
    check-cast v0, Lu9/m1;

    move-object/from16 v1, p2

    check-cast v1, Ly8/f;

    if-eqz v0, :cond_0

    move-object v7, v0

    goto :goto_0

    :cond_0
    instance-of v0, v1, Lu9/m1;

    if-eqz v0, :cond_1

    move-object v7, v1

    check-cast v7, Lu9/m1;

    :cond_1
    :goto_0
    return-object v7

    :pswitch_1
    move-object/from16 v1, p2

    check-cast v1, Ly8/f;

    instance-of v2, v1, Lu9/m1;

    if-eqz v2, :cond_5

    instance-of v2, v0, Ljava/lang/Integer;

    if-eqz v2, :cond_2

    move-object v7, v0

    check-cast v7, Ljava/lang/Integer;

    :cond_2
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v6

    :goto_1
    if-nez v0, :cond_4

    move-object v0, v1

    goto :goto_2

    :cond_4
    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_5
    :goto_2
    return-object v0

    :pswitch_2
    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_3
    check-cast v0, Ljava/lang/Integer;

    move-object/from16 v1, p2

    check-cast v1, Ljava/lang/Integer;

    invoke-static {v0, v5}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_4
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v1, p2

    check-cast v1, Ly8/f;

    add-int/2addr v0, v6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_5
    check-cast v0, Ly8/h;

    move-object/from16 v1, p2

    check-cast v1, Ly8/f;

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1}, Ly8/f;->getKey()Ly8/g;

    move-result-object v2

    invoke-interface {v0, v2}, Ly8/h;->k(Ly8/g;)Ly8/h;

    move-result-object v0

    sget-object v2, Ly8/i;->l:Ly8/i;

    if-ne v0, v2, :cond_6

    goto :goto_4

    :cond_6
    sget-object v3, Ly8/d;->l:Ly8/d;

    invoke-interface {v0, v3}, Ly8/h;->n(Ly8/g;)Ly8/f;

    move-result-object v4

    check-cast v4, Ly8/e;

    if-nez v4, :cond_7

    new-instance v2, Ly8/b;

    invoke-direct {v2, v1, v0}, Ly8/b;-><init>(Ly8/f;Ly8/h;)V

    :goto_3
    move-object v1, v2

    goto :goto_4

    :cond_7
    invoke-interface {v0, v3}, Ly8/h;->k(Ly8/g;)Ly8/h;

    move-result-object v0

    if-ne v0, v2, :cond_8

    new-instance v0, Ly8/b;

    invoke-direct {v0, v4, v1}, Ly8/b;-><init>(Ly8/f;Ly8/h;)V

    move-object v1, v0

    goto :goto_4

    :cond_8
    new-instance v2, Ly8/b;

    new-instance v3, Ly8/b;

    invoke-direct {v3, v1, v0}, Ly8/b;-><init>(Ly8/f;Ly8/h;)V

    invoke-direct {v2, v4, v3}, Ly8/b;-><init>(Ly8/f;Ly8/h;)V

    goto :goto_3

    :goto_4
    return-object v1

    :pswitch_6
    check-cast v0, Ljava/lang/String;

    move-object/from16 v1, p2

    check-cast v1, Ly8/f;

    invoke-static {v0, v3}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_5
    return-object v0

    :pswitch_7
    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lx/m0;

    invoke-virtual {v0}, Lx/m0;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    move-object v7, v0

    :goto_6
    return-object v7

    :pswitch_8
    check-cast v0, Lc1/b;

    move-object/from16 v0, p2

    check-cast v0, Lw/p;

    iget-object v1, v0, Lw/p;->e:Lf8/p2;

    iget-object v1, v1, Lf8/p2;->b:Ljava/lang/Object;

    check-cast v1, Lr0/b1;

    invoke-virtual {v1}, Lr0/b1;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v0, v0, Lw/p;->e:Lf8/p2;

    iget-object v0, v0, Lf8/p2;->c:Ljava/lang/Object;

    check-cast v0, Lr0/b1;

    invoke-virtual {v0}, Lr0/b1;->g()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Lg5/f;->F([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :pswitch_9
    check-cast v0, Ly8/h;

    move-object/from16 v1, p2

    check-cast v1, Ly8/f;

    invoke-interface {v0, v1}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v0

    return-object v0

    :pswitch_a
    check-cast v0, Ly8/h;

    move-object/from16 v1, p2

    check-cast v1, Ly8/f;

    invoke-interface {v0, v1}, Ly8/h;->y(Ly8/h;)Ly8/h;

    move-result-object v0

    return-object v0

    :pswitch_b
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-object/from16 v1, p2

    check-cast v1, Ly8/f;

    return-object v0

    :pswitch_c
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object/from16 v1, p2

    check-cast v1, Lb3/m;

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sget-object v2, Lb3/m;->l:Lb3/m;

    const/high16 v3, -0x40800000    # -1.0f

    if-ne v1, v2, :cond_b

    goto :goto_7

    :cond_b
    const/4 v1, -0x1

    int-to-float v1, v1

    mul-float/2addr v3, v1

    :goto_7
    int-to-float v1, v6

    add-float/2addr v1, v3

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :pswitch_d
    move-object v1, v0

    check-cast v1, Lua/nav/Tuning;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v19

    sget-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-static {v1, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v81, -0x201

    const/16 v82, 0x3fff

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0

    :pswitch_e
    move-object v1, v0

    check-cast v1, Lua/nav/Tuning;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v17

    sget-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-static {v1, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v81, -0x101

    const/16 v82, 0x3fff

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0

    :pswitch_f
    move-object v1, v0

    check-cast v1, Lua/nav/Tuning;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v9

    sget-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-static {v1, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v81, -0x11

    const/16 v82, 0x3fff

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0

    :pswitch_10
    move-object v1, v0

    check-cast v1, Lua/nav/Tuning;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sget-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-static {v1, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    double-to-int v0, v2

    const/16 v81, -0x1

    const/16 v82, 0x1fff

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    move/from16 v80, v0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0

    :pswitch_11
    move-object v1, v0

    check-cast v1, Lua/nav/Tuning;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sget-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-static {v1, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    double-to-int v0, v2

    const/16 v81, -0x1

    const/16 v82, 0x2fff

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v80, 0x0

    move/from16 v79, v0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0

    :pswitch_12
    move-object v1, v0

    check-cast v1, Lua/nav/Tuning;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v77

    sget-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-static {v1, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v81, -0x1

    const/16 v82, 0x37ff

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0

    :pswitch_13
    move-object v1, v0

    check-cast v1, Lua/nav/Tuning;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sget-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-static {v1, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    double-to-int v0, v2

    const/16 v81, -0x1

    const/16 v82, 0x3bff

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    move/from16 v76, v0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0

    :pswitch_14
    move-object v1, v0

    check-cast v1, Lua/nav/Tuning;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sget-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-static {v1, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v81, -0x9

    const/16 v82, 0x3fff

    move-wide v7, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const-wide/16 v74, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0

    :pswitch_15
    move-object v1, v0

    check-cast v1, Lua/nav/Tuning;

    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v74

    sget-object v0, Lua/nav/Tuning;->Companion:Lua/nav/Tuning$Companion;

    invoke-static {v1, v8}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v81, -0x1

    const/16 v82, 0x3dff

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const-wide/16 v11, 0x0

    const-wide/16 v13, 0x0

    const-wide/16 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const-wide/16 v25, 0x0

    const-wide/16 v27, 0x0

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    const-wide/16 v33, 0x0

    const-wide/16 v35, 0x0

    const-wide/16 v37, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    const-wide/16 v43, 0x0

    const-wide/16 v45, 0x0

    const-wide/16 v47, 0x0

    const-wide/16 v49, 0x0

    const-wide/16 v51, 0x0

    const-wide/16 v53, 0x0

    const-wide/16 v55, 0x0

    const-wide/16 v57, 0x0

    const/16 v59, 0x0

    const/16 v60, 0x0

    const/16 v61, 0x0

    const-wide/16 v62, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const-wide/16 v66, 0x0

    const-wide/16 v68, 0x0

    const-wide/16 v70, 0x0

    const-wide/16 v72, 0x0

    const/16 v76, 0x0

    const-wide/16 v77, 0x0

    const/16 v79, 0x0

    const/16 v80, 0x0

    invoke-static/range {v1 .. v82}, Lua/nav/Tuning;->b(Lua/nav/Tuning;Ljava/lang/String;JJDDDDDDDJJJDDDDDJZZZIDJDDJDDDZZZDIZDDDDDIDIIII)Lua/nav/Tuning;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
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
