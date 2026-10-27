.class public final Lr/e0;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Lod/v2;

.field public final synthetic p:Lod/w2;

.field public final synthetic q:Lod/x2;

.field public final synthetic r:Lod/y2;


# direct methods
.method public constructor <init>(Lod/v2;Lod/w2;Lod/x2;Lod/y2;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lr/e0;->o:Lod/v2;

    iput-object p2, p0, Lr/e0;->p:Lod/w2;

    iput-object p3, p0, Lr/e0;->q:Lod/x2;

    iput-object p4, p0, Lr/e0;->r:Lod/y2;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 6

    new-instance v0, Lr/e0;

    iget-object v3, p0, Lr/e0;->q:Lod/x2;

    iget-object v4, p0, Lr/e0;->r:Lod/y2;

    iget-object v1, p0, Lr/e0;->o:Lod/v2;

    iget-object v2, p0, Lr/e0;->p:Lod/w2;

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lr/e0;-><init>(Lod/v2;Lod/w2;Lod/x2;Lod/y2;Ly8/c;)V

    iput-object p1, v0, Lr/e0;->n:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ly1/j0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr/e0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/e0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/e0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr/e0;->m:I

    const/4 v2, 0x0

    iget-object v3, p0, Lr/e0;->q:Lod/x2;

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v6, :cond_2

    if-eq v1, v5, :cond_1

    if-ne v1, v4, :cond_0

    iget-object v0, p0, Lr/e0;->n:Ljava/lang/Object;

    check-cast v0, Ly1/j0;

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    :catch_0
    move-exception p0

    goto/16 :goto_8

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lr/e0;->n:Ljava/lang/Object;

    check-cast v1, Ly1/j0;

    :try_start_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lr/e0;->n:Ljava/lang/Object;

    check-cast v1, Ly1/j0;

    :try_start_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/util/concurrent/CancellationException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :cond_3
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr/e0;->n:Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ly1/j0;

    :try_start_3
    iput-object v1, p0, Lr/e0;->n:Ljava/lang/Object;

    iput v6, p0, Lr/e0;->m:I

    invoke-static {v1, p0, v5}, Lr/x2;->c(Ly1/j0;La9/h;I)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    goto :goto_4

    :cond_4
    :goto_0
    check-cast p1, Ly1/u;

    iget-wide v6, p1, Ly1/u;->a:J

    iput-object v1, p0, Lr/e0;->n:Ljava/lang/Object;

    iput v5, p0, Lr/e0;->m:I

    invoke-static {v1, v6, v7, p0}, Lr/i0;->d(Ly1/j0;JLa9/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    goto :goto_4

    :cond_5
    :goto_1
    check-cast p1, Ly1/u;

    if-eqz p1, :cond_c

    iget-object v5, p0, Lr/e0;->o:Lod/v2;

    iget-object v6, v5, Lod/v2;->n:Lr0/u0;

    iget-object v7, v5, Lod/v2;->l:Ld1/v;

    iget-object v8, v5, Lod/v2;->m:Lua/nav/routing/SavedAddress;

    invoke-virtual {v7}, Ld1/v;->listIterator()Ljava/util/ListIterator;

    move-result-object v7

    move v9, v2

    :goto_2
    move-object v10, v7

    check-cast v10, Ld1/d0;

    invoke-virtual {v10}, Ld1/d0;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-virtual {v10}, Ld1/d0;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lua/nav/routing/SavedAddress;

    iget-wide v10, v10, Lua/nav/routing/SavedAddress;->a:J

    iget-wide v12, v8, Lua/nav/routing/SavedAddress;->a:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_6

    goto :goto_3

    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_7
    const/4 v9, -0x1

    :goto_3
    sget-object v7, Lod/g3;->a:Lorg/maplibre/android/geometry/LatLng;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-object v5, v5, Lod/v2;->o:Lr0/u0;

    const/4 v6, 0x0

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v5, v6}, Lr0/u0;->setValue(Ljava/lang/Object;)V

    iget-wide v5, p1, Ly1/u;->a:J

    iget-object p1, p0, Lr/e0;->r:Lod/y2;

    new-instance v7, Lb0/a;

    const/16 v8, 0x1b

    invoke-direct {v7, v8, p1}, Lb0/a;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lr/e0;->n:Ljava/lang/Object;

    iput v4, p0, Lr/e0;->m:I

    invoke-static {v1, v5, v6, v7, p0}, Lr/i0;->g(Ly1/j0;JLi9/c;La9/a;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    :goto_4
    return-object v0

    :cond_8
    move-object v0, v1

    :goto_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, v0, Ly1/j0;->q:Ly1/k0;

    iget-object p1, p1, Ly1/k0;->D:Ly1/l;

    iget-object p1, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_6
    if-ge v2, v0, :cond_a

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ly1/u;

    invoke-static {v1}, Ly1/t;->c(Ly1/u;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-virtual {v1}, Ly1/u;->a()V

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    iget-object p0, p0, Lr/e0;->p:Lod/w2;

    invoke-virtual {p0}, Lod/w2;->invoke()Ljava/lang/Object;

    goto :goto_7

    :cond_b
    invoke-virtual {v3}, Lod/x2;->invoke()Ljava/lang/Object;
    :try_end_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_c
    :goto_7
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :goto_8
    invoke-virtual {v3}, Lod/x2;->invoke()Ljava/lang/Object;

    throw p0
.end method
