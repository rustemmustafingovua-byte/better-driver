.class public final Lad/v;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public l:I

.field public synthetic m:Ljava/lang/Object;

.field public final synthetic n:Lad/x;

.field public final synthetic o:Lua/nav/routing/GeoPoint;

.field public final synthetic p:Li9/g;

.field public final synthetic q:D


# direct methods
.method public constructor <init>(Lad/x;Lua/nav/routing/GeoPoint;Li9/g;DLy8/c;)V
    .locals 0

    iput-object p1, p0, Lad/v;->n:Lad/x;

    iput-object p2, p0, Lad/v;->o:Lua/nav/routing/GeoPoint;

    iput-object p3, p0, Lad/v;->p:Li9/g;

    iput-wide p4, p0, Lad/v;->q:D

    const/4 p1, 0x2

    invoke-direct {p0, p1, p6}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 7

    new-instance v0, Lad/v;

    iget-object v3, p0, Lad/v;->p:Li9/g;

    iget-wide v4, p0, Lad/v;->q:D

    iget-object v1, p0, Lad/v;->n:Lad/x;

    iget-object v2, p0, Lad/v;->o:Lua/nav/routing/GeoPoint;

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lad/v;-><init>(Lad/x;Lua/nav/routing/GeoPoint;Li9/g;DLy8/c;)V

    iput-object p1, v0, Lad/v;->m:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lad/v;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lad/v;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lad/v;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget-object v0, p0, Lad/v;->m:Ljava/lang/Object;

    check-cast v0, Lu9/t;

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lad/v;->l:I

    iget-object v2, p0, Lad/v;->o:Lua/nav/routing/GeoPoint;

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lad/v;->p:Li9/g;

    iget-wide v4, p0, Lad/v;->q:D

    :try_start_1
    iget-wide v6, v2, Lua/nav/routing/GeoPoint;->a:D

    new-instance v1, Ljava/lang/Double;

    invoke-direct {v1, v6, v7}, Ljava/lang/Double;-><init>(D)V

    iget-wide v6, v2, Lua/nav/routing/GeoPoint;->b:D

    new-instance v8, Ljava/lang/Double;

    invoke-direct {v8, v6, v7}, Ljava/lang/Double;-><init>(D)V

    const-wide/high16 v6, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v4, v6

    new-instance v6, Ljava/lang/Double;

    invoke-direct {v6, v4, v5}, Ljava/lang/Double;-><init>(D)V

    const/4 v4, 0x0

    iput-object v4, p0, Lad/v;->m:Ljava/lang/Object;

    iput v3, p0, Lad/v;->l:I

    invoke-interface {p1, v1, v8, v6, p0}, Li9/g;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :goto_1
    invoke-static {p1}, La/a;->g(Ljava/lang/Throwable;)Lt8/l;

    move-result-object p1

    :goto_2
    instance-of v0, p1, Lt8/l;

    if-eqz v0, :cond_3

    sget-object p1, Lu8/r;->l:Lu8/r;

    :cond_3
    check-cast p1, Ljava/util/List;

    iget-object p0, p0, Lad/v;->n:Lad/x;

    iput-object p1, p0, Lad/x;->q:Ljava/util/List;

    iput-object v2, p0, Lad/x;->r:Lua/nav/routing/GeoPoint;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lad/x;->s:J

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method
