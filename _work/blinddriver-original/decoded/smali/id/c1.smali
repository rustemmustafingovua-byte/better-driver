.class public final Lid/c1;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Companion:Lid/p0;


# instance fields
.field public final a:Ljava/io/File;

.field public final b:Ljava/io/File;

.field public final c:Ljava/io/File;

.field public final d:Lx9/l0;

.field public final e:Lx9/l0;

.field public final f:Lx9/l0;

.field public final g:Lx9/l0;

.field public final h:Lx9/l0;

.field public final i:Lx9/l0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lid/p0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lid/c1;->Companion:Lid/p0;

    return-void
.end method

.method public constructor <init>(Landroid/app/Application;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    const-string v1, "saved_routes.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lid/c1;->a:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "favorites.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lid/c1;->b:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "addresses.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lid/c1;->c:Ljava/io/File;

    sget-object p1, Lu8/r;->l:Lu8/r;

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, p0, Lid/c1;->d:Lx9/l0;

    iput-object v0, p0, Lid/c1;->e:Lx9/l0;

    new-instance v0, Lua/nav/routing/Favorites;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lua/nav/routing/Favorites;-><init>(Lua/nav/routing/Favorite;Lua/nav/routing/Favorite;)V

    invoke-static {v0}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object v0

    iput-object v0, p0, Lid/c1;->f:Lx9/l0;

    iput-object v0, p0, Lid/c1;->g:Lx9/l0;

    invoke-static {p1}, Lx9/c0;->b(Ljava/lang/Object;)Lx9/l0;

    move-result-object p1

    iput-object p1, p0, Lid/c1;->h:Lx9/l0;

    iput-object p1, p0, Lid/c1;->i:Lx9/l0;

    return-void
.end method


# virtual methods
.method public final a(Lua/nav/routing/SavedRoute;Ljava/lang/Integer;La9/c;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p3, Lid/q0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lid/q0;

    iget v1, v0, Lid/q0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/q0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/q0;

    invoke-direct {v0, p0, p3}, Lid/q0;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p3, v0, Lid/q0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/q0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    check-cast p3, Lt8/m;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {p1}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    iget-object v2, p0, Lid/c1;->d:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Iterable;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lua/nav/routing/SavedRoute;

    iget-wide v7, v7, Lua/nav/routing/SavedRoute;->a:J

    iget-wide v9, p1, Lua/nav/routing/SavedRoute;->a:J

    cmp-long v7, v7, v9

    if-eqz v7, :cond_3

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-static {p3, v5}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-le p3, v4, :cond_5

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p2, 0x0

    invoke-virtual {v2, p2, p1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput v3, v0, Lid/q0;->n:I

    invoke-virtual {p0, v0}, Lid/c1;->e(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final b(La9/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lid/r0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lid/r0;

    iget v1, v0, Lid/r0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/r0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/r0;

    invoke-direct {v0, p0, p1}, Lid/r0;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p1, v0, Lid/r0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/r0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lu9/e0;->a:Lba/e;

    sget-object p1, Lba/d;->n:Lba/d;

    new-instance v2, Lua/nav/routing/c;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lua/nav/routing/c;-><init>(Lid/c1;Ly8/c;)V

    iput v3, v0, Lid/r0;->n:I

    invoke-static {p1, v2, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lt8/m;

    iget-object p0, p1, Lt8/m;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final c(La9/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lid/s0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lid/s0;

    iget v1, v0, Lid/s0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/s0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/s0;

    invoke-direct {v0, p0, p1}, Lid/s0;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p1, v0, Lid/s0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/s0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lu9/e0;->a:Lba/e;

    sget-object p1, Lba/d;->n:Lba/d;

    new-instance v2, Lua/nav/routing/d;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lua/nav/routing/d;-><init>(Lid/c1;Ly8/c;)V

    iput v3, v0, Lid/s0;->n:I

    invoke-static {p1, v2, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lt8/m;

    iget-object p0, p1, Lt8/m;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final d(La9/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lid/t0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lid/t0;

    iget v1, v0, Lid/t0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/t0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/t0;

    invoke-direct {v0, p0, p1}, Lid/t0;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p1, v0, Lid/t0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/t0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lu9/e0;->a:Lba/e;

    sget-object p1, Lba/d;->n:Lba/d;

    new-instance v2, Lua/nav/routing/e;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lua/nav/routing/e;-><init>(Lid/c1;Ly8/c;)V

    iput v3, v0, Lid/t0;->n:I

    invoke-static {p1, v2, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lt8/m;

    iget-object p0, p1, Lt8/m;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final e(La9/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p1, Lid/u0;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lid/u0;

    iget v1, v0, Lid/u0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/u0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/u0;

    invoke-direct {v0, p0, p1}, Lid/u0;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p1, v0, Lid/u0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/u0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lu9/e0;->a:Lba/e;

    sget-object p1, Lba/d;->n:Lba/d;

    new-instance v2, Lua/nav/routing/f;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lua/nav/routing/f;-><init>(Lid/c1;Ly8/c;)V

    iput v3, v0, Lid/u0;->n:I

    invoke-static {p1, v2, v0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast p1, Lt8/m;

    iget-object p0, p1, Lt8/m;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public final f(JLa9/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lid/v0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lid/v0;

    iget v1, v0, Lid/v0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/v0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/v0;

    invoke-direct {v0, p0, p3}, Lid/v0;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p3, v0, Lid/v0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/v0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    check-cast p3, Lt8/m;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    iget-object p3, p0, Lid/c1;->d:Lx9/l0;

    invoke-virtual {p3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lua/nav/routing/SavedRoute;

    iget-wide v6, v6, Lua/nav/routing/SavedRoute;->a:J

    cmp-long v6, v6, p1

    if-eqz v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p3, p1, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput v3, v0, Lid/v0;->n:I

    invoke-virtual {p0, v0}, Lid/c1;->e(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final g(JLa9/c;)Ljava/lang/Object;
    .locals 8

    instance-of v0, p3, Lid/w0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lid/w0;

    iget v1, v0, Lid/w0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/w0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/w0;

    invoke-direct {v0, p0, p3}, Lid/w0;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p3, v0, Lid/w0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/w0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    check-cast p3, Lt8/m;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    iget-object p3, p0, Lid/c1;->h:Lx9/l0;

    invoke-virtual {p3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    move-object v6, v5

    check-cast v6, Lua/nav/routing/SavedAddress;

    iget-wide v6, v6, Lua/nav/routing/SavedAddress;->a:J

    cmp-long v6, v6, p1

    if-eqz v6, :cond_3

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p3, p1, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput v3, v0, Lid/w0;->n:I

    invoke-virtual {p0, v0}, Lid/c1;->c(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final h(JLa9/c;Ljava/lang/String;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p3, Lid/x0;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lid/x0;

    iget v1, v0, Lid/x0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/x0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/x0;

    invoke-direct {v0, p0, p3}, Lid/x0;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p3, v0, Lid/x0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/x0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    check-cast p3, Lt8/m;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p3}, La/a;->E(Ljava/lang/Object;)V

    iget-object p3, p0, Lid/c1;->h:Lx9/l0;

    invoke-virtual {p3}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v2, v5}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lua/nav/routing/SavedAddress;

    iget-wide v7, v5, Lua/nav/routing/SavedAddress;->a:J

    cmp-long v7, v7, p1

    if-nez v7, :cond_3

    const/4 v7, 0x7

    invoke-static {v5, v6, p4, v7}, Lua/nav/routing/SavedAddress;->a(Lua/nav/routing/SavedAddress;Ljava/lang/String;Ljava/lang/String;I)Lua/nav/routing/SavedAddress;

    move-result-object v5

    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3, v6, v4}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput v3, v0, Lid/x0;->n:I

    invoke-virtual {p0, v0}, Lid/c1;->c(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final i(Ljava/util/List;La9/c;)Ljava/lang/Object;
    .locals 9

    instance-of v0, p2, Lid/y0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lid/y0;

    iget v1, v0, Lid/y0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/y0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/y0;

    invoke-direct {v0, p0, p2}, Lid/y0;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p2, v0, Lid/y0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/y0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    check-cast p2, Lt8/m;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_3

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lid/c1;->h:Lx9/l0;

    invoke-virtual {p2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Iterable;

    const/16 v4, 0xa

    invoke-static {v2, v4}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v4

    invoke-static {v4}, Lu8/v;->J(I)I

    move-result v4

    const/16 v5, 0x10

    if-ge v4, v5, :cond_3

    move v4, v5

    :cond_3
    new-instance v5, Ljava/util/LinkedHashMap;

    invoke-direct {v5, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lua/nav/routing/SavedAddress;

    iget-wide v6, v6, Lua/nav/routing/SavedAddress;->a:J

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-interface {v5, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v6, v7}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v5, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lua/nav/routing/SavedAddress;

    if-eqz v4, :cond_5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput v3, v0, Lid/y0;->n:I

    invoke-virtual {p0, v0}, Lid/c1;->c(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_7

    return-object v1

    :cond_7
    :goto_3
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final j(Lua/nav/routing/Favorite;La9/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lid/z0;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lid/z0;

    iget v1, v0, Lid/z0;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/z0;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/z0;

    invoke-direct {v0, p0, p2}, Lid/z0;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p2, v0, Lid/z0;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/z0;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    check-cast p2, Lt8/m;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lid/c1;->f:Lx9/l0;

    invoke-virtual {p2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/routing/Favorites;

    iget-object v4, v2, Lua/nav/routing/Favorites;->b:Lua/nav/routing/Favorite;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lua/nav/routing/Favorites;

    invoke-direct {v2, p1, v4}, Lua/nav/routing/Favorites;-><init>(Lua/nav/routing/Favorite;Lua/nav/routing/Favorite;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput v3, v0, Lid/z0;->n:I

    invoke-virtual {p0, v0}, Lid/c1;->d(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final k(Lua/nav/routing/Favorite;La9/c;)Ljava/lang/Object;
    .locals 5

    instance-of v0, p2, Lid/a1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lid/a1;

    iget v1, v0, Lid/a1;->n:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lid/a1;->n:I

    goto :goto_0

    :cond_0
    new-instance v0, Lid/a1;

    invoke-direct {v0, p0, p2}, Lid/a1;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object p2, v0, Lid/a1;->l:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lid/a1;->n:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    check-cast p2, Lt8/m;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lid/c1;->f:Lx9/l0;

    invoke-virtual {p2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lua/nav/routing/Favorites;

    iget-object v4, v2, Lua/nav/routing/Favorites;->a:Lua/nav/routing/Favorite;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lua/nav/routing/Favorites;

    invoke-direct {v2, v4, p1}, Lua/nav/routing/Favorites;-><init>(Lua/nav/routing/Favorite;Lua/nav/routing/Favorite;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    invoke-virtual {p2, p1, v2}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    iput v3, v0, Lid/a1;->n:I

    invoke-virtual {p0, v0}, Lid/c1;->d(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0
.end method

.method public final l(ILa9/c;Ljava/lang/String;Lua/nav/routing/GeoPoint;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lid/b1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lid/b1;

    iget v4, v3, Lid/b1;->n:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lid/b1;->n:I

    goto :goto_0

    :cond_0
    new-instance v3, Lid/b1;

    invoke-direct {v3, v0, v2}, Lid/b1;-><init>(Lid/c1;La9/c;)V

    :goto_0
    iget-object v2, v3, Lid/b1;->l:Ljava/lang/Object;

    sget-object v4, Lz8/a;->l:Lz8/a;

    iget v5, v3, Lid/b1;->n:I

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-ne v5, v6, :cond_1

    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    check-cast v2, Lt8/m;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/16 :goto_5

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {v2}, La/a;->E(Ljava/lang/Object;)V

    iget-object v2, v0, Lid/c1;->h:Lx9/l0;

    invoke-virtual {v2}, Lx9/l0;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v10, v8

    check-cast v10, Lua/nav/routing/SavedAddress;

    iget-object v10, v10, Lua/nav/routing/SavedAddress;->b:Lua/nav/routing/GeoPoint;

    move-object/from16 v14, p4

    invoke-static {v10, v14}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    goto :goto_1

    :cond_4
    move-object/from16 v14, p4

    move-object v8, v9

    :goto_1
    check-cast v8, Lua/nav/routing/SavedAddress;

    if-eqz v8, :cond_7

    new-instance v1, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v5, v7}, Lu8/n;->R(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lua/nav/routing/SavedAddress;

    iget-wide v10, v7, Lua/nav/routing/SavedAddress;->a:J

    iget-wide v12, v8, Lua/nav/routing/SavedAddress;->a:J

    cmp-long v10, v10, v12

    if-nez v10, :cond_5

    const/16 v10, 0xb

    move-object/from16 v15, p3

    invoke-static {v7, v15, v9, v10}, Lua/nav/routing/SavedAddress;->a(Lua/nav/routing/SavedAddress;Ljava/lang/String;Ljava/lang/String;I)Lua/nav/routing/SavedAddress;

    move-result-object v7

    goto :goto_3

    :cond_5
    move-object/from16 v15, p3

    :goto_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v9, v1}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_4

    :cond_7
    move-object/from16 v15, p3

    new-instance v11, Lua/nav/routing/SavedAddress;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-string v16, ""

    invoke-direct/range {v11 .. v16}, Lua/nav/routing/SavedAddress;-><init>(JLua/nav/routing/GeoPoint;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v11}, Lg5/f;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-static {v7, v5}, Lu8/m;->p0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-le v7, v1, :cond_8

    new-instance v7, Lbd/d;

    const/4 v8, 0x7

    invoke-direct {v7, v8}, Lbd/d;-><init>(I)V

    invoke-static {v5, v7}, Lu8/m;->w0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5, v1}, Lu8/m;->x0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object v5

    :cond_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v9, v5}, Lx9/l0;->k(Ljava/lang/Object;Ljava/lang/Object;)Z

    :goto_4
    iput v6, v3, Lid/b1;->n:I

    invoke-virtual {v0, v3}, Lid/c1;->c(La9/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v4, :cond_9

    return-object v4

    :cond_9
    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    return-object v0
.end method
