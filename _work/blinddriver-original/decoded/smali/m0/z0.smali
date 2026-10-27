.class public final Lm0/z0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lm0/z0;->l:I

    iput-object p1, p0, Lm0/z0;->n:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lm0/z0;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lm0/z0;

    iget-object p0, p0, Lm0/z0;->n:Ljava/lang/Object;

    check-cast p0, Lm0/v1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lm0/z0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lm0/z0;

    iget-object p0, p0, Lm0/z0;->n:Ljava/lang/Object;

    check-cast p0, Lm0/b1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lm0/z0;-><init>(Ljava/lang/Object;Ly8/c;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm0/z0;->l:I

    check-cast p1, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lm0/z0;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/z0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/z0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1}, Lm0/z0;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/z0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/z0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, Lm0/z0;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm0/z0;->n:Ljava/lang/Object;

    check-cast v0, Lm0/v1;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lm0/z0;->m:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_2

    if-eq v2, v5, :cond_1

    if-ne v2, v4, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iput v5, p0, Lm0/z0;->m:I

    invoke-virtual {v0, p0}, Lm0/v1;->s(La9/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    goto :goto_3

    :cond_3
    :goto_0
    invoke-static {v0}, Lm0/v1;->a(Lm0/v1;)Lt8/j;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object v2, p1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object p1, p1, Lt8/j;->m:Ljava/lang/Object;

    check-cast p1, Lp2/l0;

    iget-wide v6, p1, Lp2/l0;->a:J

    iget-object p1, v0, Lm0/v1;->j:Lm0/u;

    if-eqz p1, :cond_5

    iput v4, p0, Lm0/z0;->m:I

    invoke-virtual {p1, v2, v6, v7, p0}, Lm0/u;->c(Ljava/lang/CharSequence;JLa9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_4

    goto :goto_1

    :cond_4
    move-object p0, v3

    :goto_1
    if-ne p0, v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    iput-boolean v5, v0, Lm0/v1;->B:Z

    move-object v1, v3

    :goto_3
    return-object v1

    :pswitch_0
    iget-object v0, p0, Lm0/z0;->n:Ljava/lang/Object;

    check-cast v0, Lm0/b1;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, p0, Lm0/z0;->m:I

    sget-object v3, Lt8/z;->a:Lt8/z;

    const/4 v4, 0x1

    if-eqz v2, :cond_7

    if-ne v2, v4, :cond_6

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lm0/b1;->d()Lt8/j;

    move-result-object p1

    if-eqz p1, :cond_9

    iget-object v2, p1, Lt8/j;->l:Ljava/lang/Object;

    check-cast v2, Lp2/g;

    iget-object p1, p1, Lt8/j;->m:Ljava/lang/Object;

    check-cast p1, Lp2/l0;

    iget-wide v5, p1, Lp2/l0;->a:J

    iget-object p1, v0, Lm0/b1;->w:Lm0/u;

    if-eqz p1, :cond_9

    iput v4, p0, Lm0/z0;->m:I

    invoke-virtual {p1, v2, v5, v6, p0}, Lm0/u;->c(Ljava/lang/CharSequence;JLa9/i;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_8

    goto :goto_4

    :cond_8
    move-object p0, v3

    :goto_4
    if-ne p0, v1, :cond_9

    goto :goto_6

    :cond_9
    :goto_5
    move-object v1, v3

    :goto_6
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
