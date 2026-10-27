.class public final Lfc/a;
.super Ltb/b;
.source "SourceFile"


# instance fields
.field public s:Ljava/util/ArrayList;


# virtual methods
.method public final a(Lnb/a;)V
    .locals 11

    iget-object v0, p0, Lfc/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :cond_0
    :goto_0
    const/4 v5, 0x1

    if-ge v4, v1, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v4, v4, 0x1

    check-cast v6, Ltb/b;

    invoke-virtual {v6}, Ltb/b;->b()Lq3/k;

    move-result-object v6

    invoke-virtual {v6}, Lq3/k;->n()Z

    move-result v6

    if-eqz v6, :cond_0

    move v3, v5

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-eqz v3, :cond_2

    new-instance v4, Lq3/k;

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lq3/k;-><init>(IZ)V

    new-array v6, v1, [Lq5/a;

    iput-object v6, v4, Lq3/k;->m:Ljava/lang/Object;

    new-instance v7, Lq5/a;

    invoke-direct {v7}, Lq5/a;-><init>()V

    aput-object v7, v6, v2

    new-instance v7, Lq5/a;

    invoke-direct {v7}, Lq5/a;-><init>()V

    aput-object v7, v6, v5

    iput-object v4, p0, Ltb/b;->m:Lq3/k;

    goto :goto_1

    :cond_2
    new-instance v4, Lq3/k;

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-direct {v4, v6, v7}, Lq3/k;-><init>(IZ)V

    new-array v6, v1, [Lq5/a;

    iput-object v6, v4, Lq3/k;->m:Ljava/lang/Object;

    new-instance v7, Lq5/a;

    invoke-direct {v7, v2}, Lq5/a;-><init>(I)V

    aput-object v7, v6, v2

    new-instance v7, Lq5/a;

    invoke-direct {v7, v2}, Lq5/a;-><init>(I)V

    aput-object v7, v6, v5

    iput-object v4, p0, Ltb/b;->m:Lq3/k;

    :goto_1
    move v4, v2

    :goto_2
    if-ge v4, v1, :cond_9

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    move v7, v2

    move v8, v7

    move v9, v8

    :cond_3
    :goto_3
    if-ge v9, v6, :cond_5

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    add-int/lit8 v9, v9, 0x1

    check-cast v10, Ltb/b;

    invoke-virtual {v10}, Ltb/b;->b()Lq3/k;

    move-result-object v10

    invoke-virtual {v10, v4}, Lq3/k;->j(I)I

    move-result v10

    if-ne v10, v5, :cond_4

    add-int/lit8 v8, v8, 0x1

    :cond_4
    if-nez v10, :cond_3

    move v7, v5

    goto :goto_3

    :cond_5
    if-eqz v7, :cond_6

    move v6, v2

    goto :goto_4

    :cond_6
    const/4 v6, -0x1

    :goto_4
    if-lez v8, :cond_7

    invoke-virtual {p1, v8}, Lnb/a;->a(I)Z

    move-result v6

    :cond_7
    iget-object v7, p0, Ltb/b;->m:Lq3/k;

    iget-object v7, v7, Lq3/k;->m:Ljava/lang/Object;

    check-cast v7, [Lq5/a;

    aget-object v7, v7, v4

    iget-object v7, v7, Lq5/a;->m:[I

    aput v6, v7, v2

    if-eqz v3, :cond_8

    invoke-virtual {p0, v4, v5}, Lfc/a;->c(II)V

    invoke-virtual {p0, v4, v1}, Lfc/a;->c(II)V

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_9
    return-void
.end method

.method public final b()Lq3/k;
    .locals 0

    iget-object p0, p0, Ltb/b;->m:Lq3/k;

    return-object p0
.end method

.method public final c(II)V
    .locals 6

    iget-object v0, p0, Lfc/a;->s:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Ltb/b;

    invoke-virtual {v4}, Ltb/b;->b()Lq3/k;

    move-result-object v5

    invoke-virtual {v5}, Lq3/k;->n()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Ltb/b;->b()Lq3/k;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lq3/k;->k(II)I

    move-result v4

    if-nez v4, :cond_1

    iget-object p0, p0, Ltb/b;->m:Lq3/k;

    iget-object p0, p0, Lq3/k;->m:Ljava/lang/Object;

    check-cast p0, [Lq5/a;

    aget-object p0, p0, p1

    iget-object p0, p0, Lq5/a;->m:[I

    aput v2, p0, p2

    return-void

    :cond_1
    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Ltb/b;->m:Lq3/k;

    iget-object v4, v4, Lq3/k;->m:Ljava/lang/Object;

    check-cast v4, [Lq5/a;

    aget-object v4, v4, p1

    iget-object v4, v4, Lq5/a;->m:[I

    aput v5, v4, p2

    goto :goto_0

    :cond_2
    return-void
.end method
