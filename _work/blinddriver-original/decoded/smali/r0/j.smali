.class public final Lr0/j;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public final synthetic r:Lr0/k;


# direct methods
.method public constructor <init>(Lr0/k;Ly8/c;)V
    .locals 0

    iput-object p1, p0, Lr0/j;->r:Lr0/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    new-instance v0, Lr0/j;

    iget-object p0, p0, Lr0/j;->r:Lr0/k;

    invoke-direct {v0, p0, p2}, Lr0/j;-><init>(Lr0/k;Ly8/c;)V

    iput-object p1, v0, Lr0/j;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lq9/i;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr0/j;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr0/j;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr0/j;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    iget-object v0, p0, Lr0/j;->r:Lr0/k;

    iget-object v1, v0, Lr0/k;->l:Lk/h0;

    iget-object v2, v0, Lr0/k;->n:Lk/w;

    sget-object v3, Lz8/a;->l:Lz8/a;

    iget v4, p0, Lr0/j;->p:I

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-ne v4, v5, :cond_0

    iget v4, p0, Lr0/j;->o:I

    iget v6, p0, Lr0/j;->n:I

    iget v7, p0, Lr0/j;->m:I

    iget-object v8, p0, Lr0/j;->q:Ljava/lang/Object;

    check-cast v8, Lq9/i;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr0/j;->q:Ljava/lang/Object;

    move-object v8, p1

    check-cast v8, Lq9/i;

    const/4 v4, 0x0

    move v6, v4

    move v7, v6

    :goto_0
    iget p1, v0, Lr0/k;->o:I

    add-int/lit8 p1, p1, 0xa

    iget v9, v2, Lk/w;->b:I

    invoke-static {p1, v9}, Ljava/lang/Math;->min(II)I

    move-result p1

    if-ge v7, p1, :cond_2

    add-int/lit8 p1, v7, 0x1

    invoke-virtual {v2, v7}, Lk/w;->c(I)I

    move-result v9

    const/16 v10, 0x20

    packed-switch v9, :pswitch_data_0

    const-string v0, "unknown op: "

    invoke-static {v9, v0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_0
    const-string v0, "recompose pending"

    goto/16 :goto_2

    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "reuse "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lr0/k;->m:Lk/h0;

    add-int/lit8 v2, v4, 0x1

    invoke-virtual {v0, v4}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move v4, v2

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual {v1, v6}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type @[ExtensionFunctionType] kotlin.Function2<kotlin.Any?, kotlin.Any?, kotlin.Unit>"

    invoke-static {v0, v1}, Lj9/n;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v1, v0}, Lj9/b0;->b(ILjava/lang/Object;)V

    check-cast v0, Li9/e;

    add-int/lit8 v6, v6, 0x2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "apply "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_3
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v2, p1}, Lk/w;->c(I)I

    move-result p1

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v1, v6}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "insertTopDown "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    move v6, v0

    move-object v0, p1

    move p1, v6

    move v6, v2

    goto/16 :goto_2

    :pswitch_4
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v2, p1}, Lk/w;->c(I)I

    move-result p1

    add-int/lit8 v2, v6, 0x1

    invoke-virtual {v1, v6}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v9, "insertBottomUp "

    invoke-direct {v6, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :pswitch_5
    const-string v0, "clear"

    goto :goto_2

    :pswitch_6
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v2, p1}, Lk/w;->c(I)I

    move-result p1

    add-int/lit8 v1, v7, 0x3

    invoke-virtual {v2, v0}, Lk/w;->c(I)I

    move-result v0

    add-int/lit8 v9, v7, 0x4

    invoke-virtual {v2, v1}, Lk/w;->c(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v11, "move "

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move p1, v9

    goto :goto_2

    :pswitch_7
    add-int/lit8 v0, v7, 0x2

    invoke-virtual {v2, p1}, Lk/w;->c(I)I

    move-result p1

    add-int/lit8 v1, v7, 0x3

    invoke-virtual {v2, v0}, Lk/w;->c(I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v9, "remove "

    invoke-direct {v2, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move p1, v1

    goto :goto_2

    :pswitch_8
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v1, v6}, Lk/h0;->f(I)Ljava/lang/Object;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v6, "down "

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move v6, v0

    move-object v0, v1

    goto :goto_2

    :pswitch_9
    const-string v0, "up"

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v8, p0, Lr0/j;->q:Ljava/lang/Object;

    iput p1, p0, Lr0/j;->m:I

    iput v6, p0, Lr0/j;->n:I

    iput v4, p0, Lr0/j;->o:I

    iput v5, p0, Lr0/j;->p:I

    invoke-virtual {v8, v0, p0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    return-object v3

    :cond_2
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
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
