.class public final Lc2/k0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/p1;


# instance fields
.field public final a:Lk/y;

.field public final synthetic b:Lc2/n0;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lc2/n0;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/k0;->b:Lc2/n0;

    iput-object p2, p0, Lc2/k0;->c:Ljava/lang/Object;

    sget-object p1, Lk/m;->a:[I

    new-instance p1, Lk/y;

    invoke-direct {p1}, Lk/y;-><init>()V

    iput-object p1, p0, Lc2/k0;->a:Lk/y;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lc2/k0;->b:Lc2/n0;

    iget-object p0, p0, Lc2/k0;->c:Ljava/lang/Object;

    invoke-static {v0, p0}, Lc2/n0;->c(Lc2/n0;Ljava/lang/Object;)V

    return-void
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lc2/k0;->b:Lc2/n0;

    iget-object v0, v0, Lc2/n0;->u:Lk/m0;

    iget-object p0, p0, Lc2/k0;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le2/g0;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Le2/g0;->n()Ljava/util/List;

    move-result-object p0

    check-cast p0, Lk/f0;

    iget-object p0, p0, Lk/f0;->m:Ljava/lang/Object;

    check-cast p0, Lt0/b;

    iget p0, p0, Lt0/b;->n:I

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final c(IJ)V
    .locals 5

    iget-object v0, p0, Lc2/k0;->b:Lc2/n0;

    iget-object v1, v0, Lc2/n0;->u:Lk/m0;

    iget-object v2, p0, Lc2/k0;->c:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le2/g0;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Le2/g0;->H()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Le2/g0;->n()Ljava/util/List;

    move-result-object v2

    check-cast v2, Lk/f0;

    iget-object v2, v2, Lk/f0;->m:Ljava/lang/Object;

    check-cast v2, Lt0/b;

    iget v2, v2, Lt0/b;->n:I

    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Index ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") is out of bound of [0, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lb2/a;->d(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v1}, Le2/g0;->I()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Pre-measure called on node that is not placed"

    invoke-static {v2}, Lb2/a;->a(Ljava/lang/String;)V

    :cond_2
    iget-object v0, v0, Lc2/n0;->l:Le2/g0;

    const/4 v2, 0x1

    iput-boolean v2, v0, Le2/g0;->C:Z

    invoke-static {v1}, Le2/k0;->a(Le2/g0;)Le2/q1;

    move-result-object v2

    invoke-virtual {v1}, Le2/g0;->n()Ljava/util/List;

    move-result-object v1

    check-cast v1, Lk/f0;

    invoke-virtual {v1, p1}, Lk/f0;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le2/g0;

    check-cast v2, Lf2/y;

    invoke-virtual {v2, v1, p2, p3}, Lf2/y;->v(Le2/g0;J)V

    const/4 p2, 0x0

    iput-boolean p2, v0, Le2/g0;->C:Z

    iget-object p0, p0, Lc2/k0;->a:Lk/y;

    invoke-virtual {p0, p1}, Lk/y;->a(I)Z

    :cond_3
    return-void
.end method

.method public final d(Lr0/o1;)V
    .locals 1

    iget-object v0, p0, Lc2/k0;->b:Lc2/n0;

    iget-object v0, v0, Lc2/n0;->u:Lk/m0;

    iget-object p0, p0, Lc2/k0;->c:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Le2/g0;

    if-eqz p0, :cond_0

    iget-object p0, p0, Le2/g0;->R:Le2/c1;

    if-eqz p0, :cond_0

    iget-object p0, p0, Le2/c1;->f:Lf1/q;

    if-eqz p0, :cond_0

    const-string v0, "androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode"

    invoke-static {p0, v0, p1}, Le2/l;->A(Le2/j;Ljava/lang/String;Li9/c;)V

    :cond_0
    return-void
.end method
