.class public abstract Lq3/l0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq3/x0;

.field public b:[Ll3/b;

.field public final c:[[Landroid/graphics/Rect;

.field public final d:[[Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lq3/x0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq3/x0;-><init>(Lq3/x0;)V

    invoke-direct {p0, v0}, Lq3/l0;-><init>(Lq3/x0;)V

    return-void
.end method

.method public constructor <init>(Lq3/x0;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 3
    new-array v1, v0, [[Landroid/graphics/Rect;

    iput-object v1, p0, Lq3/l0;->c:[[Landroid/graphics/Rect;

    .line 4
    new-array v0, v0, [[Landroid/graphics/Rect;

    iput-object v0, p0, Lq3/l0;->d:[[Landroid/graphics/Rect;

    .line 5
    iput-object p1, p0, Lq3/l0;->a:Lq3/x0;

    .line 6
    invoke-virtual {p0, p1}, Lq3/l0;->c(Lq3/x0;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lq3/l0;->b:[Ll3/b;

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    iget-object v3, p0, Lq3/l0;->a:Lq3/x0;

    if-nez v0, :cond_0

    const/4 v0, 0x2

    iget-object v4, v3, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v4, v0}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v0

    :cond_0
    if-nez v1, :cond_1

    iget-object v1, v3, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v1, v2}, Lq3/u0;->i(I)Ll3/b;

    move-result-object v1

    :cond_1
    invoke-static {v1, v0}, Ll3/b;->a(Ll3/b;Ll3/b;)Ll3/b;

    move-result-object v0

    invoke-virtual {p0, v0}, Lq3/l0;->h(Ll3/b;)V

    iget-object v0, p0, Lq3/l0;->b:[Ll3/b;

    const/16 v1, 0x10

    invoke-static {v1}, Ly4/s;->v(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lq3/l0;->g(Ll3/b;)V

    :cond_2
    iget-object v0, p0, Lq3/l0;->b:[Ll3/b;

    const/16 v1, 0x20

    invoke-static {v1}, Ly4/s;->v(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Lq3/l0;->e(Ll3/b;)V

    :cond_3
    iget-object v0, p0, Lq3/l0;->b:[Ll3/b;

    const/16 v1, 0x40

    invoke-static {v1}, Ly4/s;->v(I)I

    move-result v1

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lq3/l0;->i(Ll3/b;)V

    :cond_4
    return-void
.end method

.method public abstract b()Lq3/x0;
.end method

.method public c(Lq3/x0;)V
    .locals 4

    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_1

    iget-object v1, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v1, v0}, Lq3/u0;->f(I)Ljava/util/List;

    move-result-object v1

    invoke-static {v0}, Ly4/s;->v(I)I

    move-result v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Rect;

    iget-object v3, p0, Lq3/l0;->c:[[Landroid/graphics/Rect;

    aput-object v1, v3, v2

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-object v1, p1, Lq3/x0;->a:Lq3/u0;

    invoke-virtual {v1, v0}, Lq3/u0;->g(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Landroid/graphics/Rect;

    invoke-interface {v1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/graphics/Rect;

    iget-object v3, p0, Lq3/l0;->d:[[Landroid/graphics/Rect;

    aput-object v1, v3, v2

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public d(ILl3/b;)V
    .locals 3

    iget-object v0, p0, Lq3/l0;->b:[Ll3/b;

    if-nez v0, :cond_0

    const/16 v0, 0xa

    new-array v0, v0, [Ll3/b;

    iput-object v0, p0, Lq3/l0;->b:[Ll3/b;

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/16 v1, 0x200

    if-gt v0, v1, :cond_2

    and-int v1, p1, v0

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lq3/l0;->b:[Ll3/b;

    invoke-static {v0}, Ly4/s;->v(I)I

    move-result v2

    aput-object p2, v1, v2

    :goto_1
    shl-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public abstract e(Ll3/b;)V
.end method

.method public abstract f(Ll3/b;)V
.end method

.method public abstract g(Ll3/b;)V
.end method

.method public abstract h(Ll3/b;)V
.end method

.method public abstract i(Ll3/b;)V
.end method
