.class public abstract Ly1/f;
.super Lf1/q;
.source "SourceFile"

# interfaces
.implements Le2/e2;
.implements Le2/v1;
.implements Le2/i;


# instance fields
.field public A:Ly1/a;

.field public B:Z

.field public z:Le2/m;


# direct methods
.method public constructor <init>(Ly1/a;Le2/m;)V
    .locals 0

    invoke-direct {p0}, Lf1/q;-><init>()V

    iput-object p2, p0, Ly1/f;->z:Le2/m;

    iput-object p1, p0, Ly1/f;->A:Ly1/a;

    return-void
.end method


# virtual methods
.method public final F()V
    .locals 0

    invoke-virtual {p0}, Ly1/f;->Q0()V

    return-void
.end method

.method public final F0()V
    .locals 0

    invoke-virtual {p0}, Ly1/f;->Q0()V

    return-void
.end method

.method public final M0()V
    .locals 3

    new-instance v0, Lj9/y;

    invoke-direct {v0}, Lj9/y;-><init>()V

    new-instance v1, Ly1/e;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lj9/o;-><init>(I)V

    invoke-static {p0, v1}, Le2/l;->z(Le2/e2;Li9/c;)V

    iget-object v0, v0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Ly1/f;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ly1/f;->A:Ly1/a;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Ly1/f;->A:Ly1/a;

    :cond_1
    invoke-virtual {p0, v0}, Ly1/f;->N0(Ly1/r;)V

    return-void
.end method

.method public abstract N0(Ly1/r;)V
.end method

.method public final O0()V
    .locals 2

    new-instance v0, Lj9/u;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lj9/u;->l:Z

    new-instance v1, Li1/e;

    invoke-direct {v1, v0}, Li1/e;-><init>(Lj9/u;)V

    invoke-static {p0, v1}, Le2/l;->B(Le2/e2;Li9/c;)V

    iget-boolean v0, v0, Lj9/u;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ly1/f;->M0()V

    :cond_0
    return-void
.end method

.method public abstract P0(I)Z
.end method

.method public final Q0()V
    .locals 3

    iget-boolean v0, p0, Ly1/f;->B:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Ly1/f;->B:Z

    iget-boolean v0, p0, Lf1/q;->y:Z

    if-eqz v0, :cond_1

    new-instance v0, Lj9/y;

    invoke-direct {v0}, Lj9/y;-><init>()V

    new-instance v1, Lf2/q;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Lf2/q;-><init>(Lj9/y;I)V

    invoke-static {p0, v1}, Le2/l;->z(Le2/e2;Li9/c;)V

    iget-object v0, v0, Lj9/y;->m:Ljava/lang/Object;

    check-cast v0, Ly1/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ly1/f;->M0()V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ly1/f;->N0(Ly1/r;)V

    :cond_1
    return-void
.end method

.method public final k()J
    .locals 4

    iget-object v0, p0, Ly1/f;->z:Le2/m;

    if-eqz v0, :cond_0

    invoke-static {p0}, Le2/l;->v(Le2/j;)Le2/g0;

    move-result-object p0

    iget-object p0, p0, Le2/g0;->K:Lb3/c;

    sget v1, Le2/c2;->b:I

    iget v1, v0, Le2/m;->a:F

    invoke-interface {p0, v1}, Lb3/c;->h0(F)I

    move-result v1

    iget v2, v0, Le2/m;->b:F

    invoke-interface {p0, v2}, Lb3/c;->h0(F)I

    move-result v2

    iget v3, v0, Le2/m;->c:F

    invoke-interface {p0, v3}, Lb3/c;->h0(F)I

    move-result v3

    iget v0, v0, Le2/m;->d:F

    invoke-interface {p0, v0}, Lb3/c;->h0(F)I

    move-result p0

    invoke-static {v1, v2, v3, p0}, Le2/d1;->c(IIII)J

    move-result-wide v0

    return-wide v0

    :cond_0
    sget-wide v0, Le2/c2;->a:J

    return-wide v0
.end method

.method public final w0(Ly1/l;Ly1/m;J)V
    .locals 1

    sget-object p3, Ly1/m;->m:Ly1/m;

    if-ne p2, p3, :cond_2

    iget-object p2, p1, Ly1/l;->a:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p3

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p3, :cond_2

    invoke-interface {p2, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ly1/u;

    iget v0, v0, Ly1/u;->i:I

    invoke-virtual {p0, v0}, Ly1/f;->P0(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget p1, p1, Ly1/l;->f:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ly1/f;->B:Z

    invoke-virtual {p0}, Ly1/f;->O0()V

    return-void

    :cond_0
    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    invoke-virtual {p0}, Ly1/f;->Q0()V

    return-void

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
