.class public final synthetic Lid/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/graphhopper/storage/index/LocationIndex$Visitor;
.implements Lg3/j;


# instance fields
.field public final synthetic l:Ljava/lang/Object;

.field public final synthetic m:Ljava/lang/Object;

.field public final synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lid/c;->l:Ljava/lang/Object;

    iput-object p2, p0, Lid/c;->m:Ljava/lang/Object;

    iput-object p3, p0, Lid/c;->n:Ljava/lang/Object;

    iput-object p4, p0, Lid/c;->o:Ljava/lang/Object;

    iput-object p5, p0, Lid/c;->p:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Lg3/i;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lid/c;->l:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    iget-object v1, p0, Lid/c;->m:Ljava/lang/Object;

    move-object v3, v1

    check-cast v3, Lx4/j;

    iget-object v1, p0, Lid/c;->n:Ljava/lang/Object;

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    iget-object v1, p0, Lid/c;->o:Ljava/lang/Object;

    move-object v5, v1

    check-cast v5, Li9/a;

    iget-object p0, p0, Lid/c;->p:Ljava/lang/Object;

    move-object v6, p0

    check-cast v6, Landroidx/lifecycle/d0;

    new-instance v2, Lb/r;

    const/4 v8, 0x3

    move-object v7, p1

    invoke-direct/range {v2 .. v8}, Lb/r;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public onEdge(I)V
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget-object v2, v0, Lid/c;->l:Ljava/lang/Object;

    check-cast v2, Ljava/util/HashSet;

    iget-object v3, v0, Lid/c;->m:Ljava/lang/Object;

    check-cast v3, Lcom/graphhopper/storage/BaseGraph;

    iget-object v4, v0, Lid/c;->n:Ljava/lang/Object;

    check-cast v4, Lcom/graphhopper/routing/ev/BooleanEncodedValue;

    iget-object v5, v0, Lid/c;->o:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    iget-object v0, v0, Lid/c;->p:Ljava/lang/Object;

    check-cast v0, Lcom/graphhopper/routing/ev/EnumEncodedValue;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v2, -0x80000000

    invoke-virtual {v3, v1, v2}, Lcom/graphhopper/storage/BaseGraph;->getEdgeIteratorState(II)Lcom/graphhopper/util/EdgeIteratorState;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v3

    invoke-interface {v2, v4}, Lcom/graphhopper/util/EdgeIteratorState;->getReverse(Lcom/graphhopper/routing/ev/BooleanEncodedValue;)Z

    move-result v4

    if-nez v3, :cond_1

    if-nez v4, :cond_1

    :goto_0
    return-void

    :cond_1
    sget-object v6, Lcom/graphhopper/util/FetchMode;->ALL:Lcom/graphhopper/util/FetchMode;

    invoke-interface {v2, v6}, Lcom/graphhopper/util/EdgeIteratorState;->fetchWayGeometry(Lcom/graphhopper/util/FetchMode;)Lcom/graphhopper/util/PointList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/graphhopper/util/PointList;->size()I

    move-result v7

    const/4 v8, 0x0

    invoke-static {v8, v7}, Lg6/c1;->G(II)Lo9/d;

    move-result-object v7

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0xa

    invoke-static {v7, v10}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v7}, Lo9/b;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    move-object v10, v7

    check-cast v10, Lo9/c;

    iget-boolean v11, v10, Lo9/c;->n:Z

    if-eqz v11, :cond_2

    invoke-virtual {v10}, Lo9/c;->nextInt()I

    move-result v10

    new-instance v11, Lua/nav/routing/GeoPoint;

    invoke-virtual {v6, v10}, Lcom/graphhopper/util/PointList;->getLat(I)D

    move-result-wide v12

    invoke-virtual {v6, v10}, Lcom/graphhopper/util/PointList;->getLon(I)D

    move-result-wide v14

    invoke-direct {v11, v12, v13, v14, v15}, Lua/nav/routing/GeoPoint;-><init>(DD)V

    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    new-instance v16, Lid/a0;

    int-to-long v6, v1

    sget-object v1, Lid/f0;->Companion:Lid/e0;

    invoke-interface {v2, v0}, Lcom/graphhopper/util/EdgeIteratorState;->get(Lcom/graphhopper/routing/ev/EnumEncodedValue;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/graphhopper/routing/ev/RoadClass;

    invoke-virtual {v0}, Lcom/graphhopper/routing/ev/RoadClass;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lid/e0;->a(Ljava/lang/String;)Lid/f0;

    move-result-object v19

    if-nez v3, :cond_3

    invoke-static {v9}, Lu8/m;->t0(Ljava/util/List;)Ljava/util/List;

    move-result-object v9

    :cond_3
    move-object/from16 v20, v9

    if-eq v3, v4, :cond_4

    const/4 v8, 0x1

    :cond_4
    move-wide/from16 v17, v6

    move/from16 v21, v8

    invoke-direct/range {v16 .. v21}, Lid/a0;-><init>(JLid/f0;Ljava/util/List;Z)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
