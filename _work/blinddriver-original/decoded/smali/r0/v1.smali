.class public final Lr0/v1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr0/c;


# instance fields
.field public final l:Lk/w;

.field public final m:Lk/h0;

.field public final n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk/w;

    invoke-direct {v0}, Lk/w;-><init>()V

    iput-object v0, p0, Lr0/v1;->l:Lk/w;

    new-instance v0, Lk/h0;

    invoke-direct {v0}, Lk/h0;-><init>()V

    iput-object v0, p0, Lr0/v1;->m:Lk/h0;

    iput-object p1, p0, Lr0/v1;->n:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Le2/f2;Lmb/x4;)V
    .locals 10

    iget-object v3, p0, Lr0/v1;->l:Lk/w;

    iget v0, v3, Lk/w;->b:I

    new-instance v2, Lk/h0;

    invoke-direct {v2}, Lk/h0;-><init>()V

    const/4 v1, 0x0

    move v4, v1

    move v5, v4

    move v6, v5

    :goto_0
    iget-object v1, p0, Lr0/v1;->m:Lk/h0;

    if-ge v4, v0, :cond_1

    add-int/lit8 v7, v4, 0x1

    :try_start_0
    invoke-virtual {v3, v4}, Lk/w;->c(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    iget-object v4, p1, Le2/f2;->n:Ljava/lang/Object;

    instance-of v8, v4, Lr0/h;

    if-eqz v8, :cond_0

    move-object v8, v4

    check-cast v8, Lr0/h;

    iget-object v9, p2, Lmb/x4;->f:Ljava/lang/Object;

    check-cast v9, Lt0/b;

    invoke-virtual {v9, v8}, Lt0/b;->j(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v8}, Lr0/h;->b()V

    goto :goto_2

    :goto_1
    move-object v5, p0

    move v4, v7

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    :goto_2
    invoke-virtual {v2, v4}, Lk/h0;->a(Ljava/lang/Object;)V

    invoke-virtual {p1}, Le2/f2;->e()V

    goto :goto_3

    :pswitch_1
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v1, v5}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v8

    const-string v9, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"

    invoke-static {v8, v9}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v9, 0x2

    invoke-static {v9, v8}, Lj9/b0;->b(ILjava/lang/Object;)V

    check-cast v8, Li9/e;

    add-int/lit8 v5, v5, 0x2

    invoke-virtual {v1, v4}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v8, v4}, Lr0/c;->q(Li9/e;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    move v4, v7

    goto :goto_0

    :pswitch_2
    add-int/lit8 v4, v4, 0x2

    :try_start_1
    invoke-virtual {v3, v7}, Lk/w;->c(I)I

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {v1, v5}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le2/g0;

    move v5, v7

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    move-object v5, p0

    goto/16 :goto_5

    :pswitch_3
    add-int/lit8 v4, v4, 0x2

    invoke-virtual {v3, v7}, Lk/w;->c(I)I

    move-result v7

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v1, v5}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v7, v5}, Le2/f2;->c(ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v8

    goto :goto_0

    :pswitch_4
    :try_start_2
    invoke-virtual {p1}, Le2/f2;->a()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :pswitch_5
    add-int/lit8 v8, v4, 0x2

    :try_start_3
    invoke-virtual {v3, v7}, Lk/w;->c(I)I

    move-result v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v9, v4, 0x3

    :try_start_4
    invoke-virtual {v3, v8}, Lk/w;->c(I)I

    move-result v8
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    add-int/lit8 v4, v4, 0x4

    :try_start_5
    invoke-virtual {v3, v9}, Lk/w;->c(I)I

    move-result v9

    invoke-virtual {p1, v7, v8, v9}, Le2/f2;->f(III)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    :catch_2
    move-exception v0

    move-object p0, v0

    move-object v5, p0

    move v4, v9

    goto :goto_5

    :catch_3
    move-exception v0

    move-object p0, v0

    move-object v5, p0

    move v4, v8

    goto :goto_5

    :pswitch_6
    add-int/lit8 v8, v4, 0x2

    :try_start_6
    invoke-virtual {v3, v7}, Lk/w;->c(I)I

    move-result v7
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    add-int/lit8 v4, v4, 0x3

    :try_start_7
    invoke-virtual {v3, v8}, Lk/w;->c(I)I

    move-result v8

    invoke-virtual {p1, v7, v8}, Le2/f2;->g(II)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :pswitch_7
    add-int/lit8 v4, v5, 0x1

    :try_start_8
    invoke-virtual {v1, v5}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Le2/f2;->d(Ljava/lang/Object;)V

    move v5, v4

    goto :goto_3

    :pswitch_8
    invoke-virtual {p1}, Le2/f2;->k()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3

    :cond_1
    :try_start_9
    iget p0, v1, Lk/h0;->b:I

    if-ne v5, p0, :cond_2

    goto :goto_4

    :cond_2
    const-string p0, "Applier operation size mismatch"

    invoke-static {p0}, Lr0/s;->a(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v1}, Lk/h0;->d()V

    iput v6, v3, Lk/w;->b:I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-virtual {p1}, Le2/f2;->m()V

    return-void

    :goto_5
    :try_start_a
    new-instance v0, Lr0/k;

    add-int/lit8 v4, v4, -0x1

    invoke-direct/range {v0 .. v5}, Lr0/k;-><init>(Lk/h0;Lk/h0;Lk/w;ILjava/lang/Exception;)V

    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :goto_6
    invoke-virtual {p1}, Le2/f2;->m()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x5

    iget-object v1, p0, Lr0/v1;->l:Lk/w;

    invoke-virtual {v1, v0}, Lk/w;->a(I)V

    invoke-virtual {v1, p1}, Lk/w;->a(I)V

    iget-object p0, p0, Lr0/v1;->m:Lk/h0;

    invoke-virtual {p0, p2}, Lk/h0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr0/v1;->l:Lk/w;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lk/w;->a(I)V

    iget-object p0, p0, Lr0/v1;->m:Lk/h0;

    invoke-virtual {p0, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object p0, p0, Lr0/v1;->l:Lk/w;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lk/w;->a(I)V

    return-void
.end method

.method public final f(III)V
    .locals 1

    const/4 v0, 0x3

    iget-object p0, p0, Lr0/v1;->l:Lk/w;

    invoke-virtual {p0, v0}, Lk/w;->a(I)V

    invoke-virtual {p0, p1}, Lk/w;->a(I)V

    invoke-virtual {p0, p2}, Lk/w;->a(I)V

    invoke-virtual {p0, p3}, Lk/w;->a(I)V

    return-void
.end method

.method public final g(II)V
    .locals 1

    const/4 v0, 0x2

    iget-object p0, p0, Lr0/v1;->l:Lk/w;

    invoke-virtual {p0, v0}, Lk/w;->a(I)V

    invoke-virtual {p0, p1}, Lk/w;->a(I)V

    invoke-virtual {p0, p2}, Lk/w;->a(I)V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object p0, p0, Lr0/v1;->l:Lk/w;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lk/w;->a(I)V

    return-void
.end method

.method public final l(ILjava/lang/Object;)V
    .locals 2

    const/4 v0, 0x6

    iget-object v1, p0, Lr0/v1;->l:Lk/w;

    invoke-virtual {v1, v0}, Lk/w;->a(I)V

    invoke-virtual {v1, p1}, Lk/w;->a(I)V

    iget-object p0, p0, Lr0/v1;->m:Lk/h0;

    invoke-virtual {p0, p2}, Lk/h0;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final n()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr0/v1;->n:Ljava/lang/Object;

    return-object p0
.end method

.method public final q(Li9/e;Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lr0/v1;->l:Lk/w;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lk/w;->a(I)V

    iget-object p0, p0, Lr0/v1;->m:Lk/h0;

    invoke-virtual {p0, p1}, Lk/h0;->a(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Lk/h0;->a(Ljava/lang/Object;)V

    return-void
.end method
