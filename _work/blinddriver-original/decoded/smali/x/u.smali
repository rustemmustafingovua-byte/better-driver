.class public final Lx/u;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lc1/c;

.field public final b:Lod/a7;

.field public final c:Lk/m0;


# direct methods
.method public constructor <init>(Lc1/c;Lod/a7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx/u;->a:Lc1/c;

    iput-object p2, p0, Lx/u;->b:Lod/a7;

    sget-object p1, Lk/t0;->a:[J

    new-instance p1, Lk/m0;

    invoke-direct {p1}, Lk/m0;-><init>()V

    iput-object p1, p0, Lx/u;->c:Lk/m0;

    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/Object;Ljava/lang/Object;)Li9/e;
    .locals 5

    iget-object v0, p0, Lx/u;->c:Lk/m0;

    invoke-virtual {v0, p2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx/t;

    const/4 v2, 0x1

    const v3, 0x30c58c04

    if-eqz v1, :cond_1

    iget v4, v1, Lx/t;->c:I

    if-ne v4, p1, :cond_1

    iget-object v4, v1, Lx/t;->b:Ljava/lang/Object;

    invoke-static {v4, p3}, Lj9/n;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object p0, v1, Lx/t;->d:Lz0/d;

    if-nez p0, :cond_0

    iget-object p0, v1, Lx/t;->e:Lx/u;

    new-instance p1, Lg0/k;

    const/16 p2, 0x1a

    invoke-direct {p1, p2, p0, v1}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lz0/d;

    invoke-direct {p0, v3, v2, p1}, Lz0/d;-><init>(IZLt8/e;)V

    iput-object p0, v1, Lx/t;->d:Lz0/d;

    :cond_0
    return-object p0

    :cond_1
    new-instance v1, Lx/t;

    invoke-direct {v1, p0, p1, p2, p3}, Lx/t;-><init>(Lx/u;ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, v1, Lx/t;->d:Lz0/d;

    if-nez p1, :cond_2

    new-instance p1, Lg0/k;

    const/16 p2, 0x1a

    invoke-direct {p1, p2, p0, v1}, Lg0/k;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance p0, Lz0/d;

    invoke-direct {p0, v3, v2, p1}, Lz0/d;-><init>(IZLt8/e;)V

    iput-object p0, v1, Lx/t;->d:Lz0/d;

    return-object p0

    :cond_2
    return-object p1
.end method

.method public final b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lx/u;->c:Lk/m0;

    invoke-virtual {v0, p1}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lx/t;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lx/t;->b:Ljava/lang/Object;

    return-object p0

    :cond_1
    iget-object p0, p0, Lx/u;->b:Lod/a7;

    invoke-virtual {p0}, Lod/a7;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lw/g;

    iget-object v0, p0, Lw/g;->d:Ld1/c0;

    invoke-virtual {v0, p1}, Ld1/c0;->e(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    invoke-virtual {p0, p1}, Lw/g;->b(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method
