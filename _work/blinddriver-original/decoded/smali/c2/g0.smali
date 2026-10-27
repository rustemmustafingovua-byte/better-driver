.class public final Lc2/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/s1;


# instance fields
.field public l:Lb3/m;

.field public m:F

.field public n:F

.field public final synthetic o:Lc2/n0;


# direct methods
.method public constructor <init>(Lc2/n0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/g0;->o:Lc2/n0;

    sget-object p1, Lb3/m;->m:Lb3/m;

    iput-object p1, p0, Lc2/g0;->l:Lb3/m;

    return-void
.end method


# virtual methods
.method public final S()F
    .locals 0

    iget p0, p0, Lc2/g0;->n:F

    return p0
.end method

.method public final T()Z
    .locals 1

    iget-object p0, p0, Lc2/g0;->o:Lc2/n0;

    iget-object p0, p0, Lc2/n0;->l:Le2/g0;

    iget-object p0, p0, Le2/g0;->S:Le2/l0;

    iget-object p0, p0, Le2/l0;->d:Le2/c0;

    sget-object v0, Le2/c0;->o:Le2/c0;

    if-eq p0, v0, :cond_1

    sget-object v0, Le2/c0;->m:Le2/c0;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final a()F
    .locals 0

    iget p0, p0, Lc2/g0;->m:F

    return p0
.end method

.method public final getLayoutDirection()Lb3/m;
    .locals 0

    iget-object p0, p0, Lc2/g0;->l:Lb3/m;

    return-object p0
.end method

.method public final i0(Li9/e;Ljava/lang/Object;)Ljava/util/List;
    .locals 9

    iget-object p0, p0, Lc2/g0;->o:Lc2/n0;

    invoke-virtual {p0}, Lc2/n0;->h()V

    iget-object v0, p0, Lc2/n0;->l:Le2/g0;

    iget-object v1, v0, Le2/g0;->S:Le2/l0;

    iget-object v1, v1, Le2/l0;->d:Le2/c0;

    sget-object v2, Le2/c0;->l:Le2/c0;

    if-eq v1, v2, :cond_1

    sget-object v3, Le2/c0;->n:Le2/c0;

    if-eq v1, v3, :cond_1

    sget-object v3, Le2/c0;->m:Le2/c0;

    if-eq v1, v3, :cond_1

    sget-object v3, Le2/c0;->o:Le2/c0;

    if-ne v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "subcompose can only be used inside the measure or layout blocks"

    invoke-static {v3}, Lb2/a;->b(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v3, p0, Lc2/n0;->r:Lk/m0;

    invoke-virtual {v3, p2}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_5

    iget-object v4, p0, Lc2/n0;->u:Lk/m0;

    invoke-virtual {v4, p2}, Lk/m0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le2/g0;

    if-eqz v4, :cond_3

    iget-object v7, p0, Lc2/n0;->q:Lk/m0;

    invoke-virtual {v7, v4}, Lk/m0;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lc2/e0;

    iget v7, p0, Lc2/n0;->z:I

    if-lez v7, :cond_2

    goto :goto_1

    :cond_2
    const-string v7, "Check failed."

    invoke-static {v7}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_1
    iget v7, p0, Lc2/n0;->z:I

    add-int/lit8 v7, v7, -0x1

    iput v7, p0, Lc2/n0;->z:I

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p2}, Lc2/n0;->n(Ljava/lang/Object;)Le2/g0;

    move-result-object v4

    if-nez v4, :cond_4

    iget v4, p0, Lc2/n0;->o:I

    new-instance v7, Le2/g0;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Le2/g0;-><init>(I)V

    iput-boolean v6, v0, Le2/g0;->C:Z

    invoke-virtual {v0, v4, v7}, Le2/g0;->B(ILe2/g0;)V

    iput-boolean v5, v0, Le2/g0;->C:Z

    move-object v4, v7

    :cond_4
    :goto_2
    invoke-virtual {v3, p2, v4}, Lk/m0;->m(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    check-cast v4, Le2/g0;

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v3

    iget v7, p0, Lc2/n0;->o:I

    invoke-static {v7, v3}, Lu8/m;->h0(ILjava/util/List;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v4, :cond_7

    invoke-virtual {v0}, Le2/g0;->o()Ljava/util/List;

    move-result-object v0

    check-cast v0, Lk/f0;

    iget-object v0, v0, Lk/f0;->m:Ljava/lang/Object;

    check-cast v0, Lt0/b;

    invoke-virtual {v0, v4}, Lt0/b;->i(Ljava/lang/Object;)I

    move-result v0

    iget v3, p0, Lc2/n0;->o:I

    if-lt v0, v3, :cond_6

    goto :goto_3

    :cond_6
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "Key \""

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\" was already used. If you are using LazyColumn/Row please make sure you provide a unique key for each item."

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lb2/a;->a(Ljava/lang/String;)V

    :goto_3
    iget v3, p0, Lc2/n0;->o:I

    if-eq v3, v0, :cond_7

    invoke-virtual {p0, v0, v3}, Lc2/n0;->j(II)V

    :cond_7
    iget v0, p0, Lc2/n0;->o:I

    add-int/2addr v0, v6

    iput v0, p0, Lc2/n0;->o:I

    invoke-virtual {p0, v4, p2, v5, p1}, Lc2/n0;->m(Le2/g0;Ljava/lang/Object;ZLi9/e;)V

    if-eq v1, v2, :cond_9

    sget-object p0, Le2/c0;->n:Le2/c0;

    if-ne v1, p0, :cond_8

    goto :goto_4

    :cond_8
    invoke-virtual {v4}, Le2/g0;->l()Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_4
    invoke-virtual {v4}, Le2/g0;->m()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final y0(IILjava/util/Map;Li9/c;Li9/c;)Lc2/s0;
    .locals 9

    const/high16 v0, -0x1000000

    and-int v1, p1, v0

    if-nez v1, :cond_0

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") is out of range. Each dimension must be between 0 and 16777215."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lb2/a;->b(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Lc2/f0;

    iget-object v7, p0, Lc2/g0;->o:Lc2/n0;

    move-object v6, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lc2/f0;-><init>(IILjava/util/Map;Li9/c;Lc2/g0;Lc2/n0;Li9/c;)V

    return-object v1
.end method
