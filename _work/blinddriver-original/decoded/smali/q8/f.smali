.class public final Lq8/f;
.super La9/h;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic m:I

.field public n:Ljava/util/Iterator;

.field public o:I

.field public synthetic p:Ljava/lang/Object;

.field public final synthetic q:Lq8/g;


# direct methods
.method public synthetic constructor <init>(Lq8/g;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lq8/f;->m:I

    iput-object p1, p0, Lq8/f;->q:Lq8/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/h;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lq8/f;->m:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lq8/f;

    iget-object p0, p0, Lq8/f;->q:Lq8/g;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p2, v1}, Lq8/f;-><init>(Lq8/g;Ly8/c;I)V

    iput-object p1, v0, Lq8/f;->p:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lq8/f;

    iget-object p0, p0, Lq8/f;->q:Lq8/g;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, v1}, Lq8/f;-><init>(Lq8/g;Ly8/c;I)V

    iput-object p1, v0, Lq8/f;->p:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lq8/f;->m:I

    check-cast p1, Lq9/i;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lq8/f;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lq8/f;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lq8/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lq8/f;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lq8/f;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lq8/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Lq8/f;->m:I

    const/4 v1, 0x0

    iget-object v2, p0, Lq8/f;->q:Lq8/g;

    const-string v3, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v4, 0x2

    sget-object v5, Lt8/z;->a:Lt8/z;

    const/4 v6, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v7, p0, Lq8/f;->o:I

    if-eqz v7, :cond_2

    if-eq v7, v6, :cond_0

    if-ne v7, v4, :cond_1

    :cond_0
    iget-object v2, p0, Lq8/f;->n:Ljava/util/Iterator;

    iget-object v3, p0, Lq8/f;->p:Ljava/lang/Object;

    check-cast v3, Lq9/i;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lq8/f;->p:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lq9/i;

    iget-object p1, v2, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq8/d;

    instance-of v7, p1, Lq8/g;

    if-eqz v7, :cond_5

    check-cast p1, Lq8/g;

    new-instance v7, Lq8/f;

    invoke-direct {v7, p1, v1, v6}, Lq8/f;-><init>(Lq8/g;Ly8/c;I)V

    iput-object v3, p0, Lq8/f;->p:Ljava/lang/Object;

    iput-object v2, p0, Lq8/f;->n:Ljava/util/Iterator;

    iput v6, p0, Lq8/f;->o:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ll7/a;->r(Li9/e;)Lq9/i;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_4

    move-object p1, v5

    goto :goto_1

    :cond_4
    iput-object p1, v3, Lq9/i;->n:Ljava/util/Iterator;

    iput v4, v3, Lq9/i;->l:I

    iput-object p0, v3, Lq9/i;->o:Ly8/c;

    sget-object p1, Lz8/a;->l:Lz8/a;

    :goto_1
    if-ne p1, v0, :cond_3

    :goto_2
    move-object v5, v0

    goto :goto_3

    :cond_5
    instance-of v7, p1, Lq8/m;

    if-eqz v7, :cond_3

    check-cast p1, Lq8/m;

    iget-object p1, p1, Lq8/m;->b:Ljava/lang/String;

    iput-object v3, p0, Lq8/f;->p:Ljava/lang/Object;

    iput-object v2, p0, Lq8/f;->n:Ljava/util/Iterator;

    iput v4, p0, Lq8/f;->o:I

    invoke-virtual {v3, p1, p0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    sget-object p0, Lz8/a;->l:Lz8/a;

    goto :goto_2

    :cond_6
    :goto_3
    return-object v5

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v7, p0, Lq8/f;->o:I

    if-eqz v7, :cond_9

    if-eq v7, v6, :cond_7

    if-ne v7, v4, :cond_8

    :cond_7
    iget-object v2, p0, Lq8/f;->n:Ljava/util/Iterator;

    iget-object v3, p0, Lq8/f;->p:Ljava/lang/Object;

    check-cast v3, Lq9/i;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lq8/f;->p:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lq9/i;

    iget-object p1, v2, Lq8/g;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lq8/d;

    instance-of v7, p1, Lq8/g;

    if-eqz v7, :cond_c

    check-cast p1, Lq8/g;

    new-instance v7, Lq8/f;

    const/4 v8, 0x0

    invoke-direct {v7, p1, v1, v8}, Lq8/f;-><init>(Lq8/g;Ly8/c;I)V

    iput-object v3, p0, Lq8/f;->p:Ljava/lang/Object;

    iput-object v2, p0, Lq8/f;->n:Ljava/util/Iterator;

    iput v6, p0, Lq8/f;->o:I

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v7}, Ll7/a;->r(Li9/e;)Lq9/i;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_b

    move-object p1, v5

    goto :goto_5

    :cond_b
    iput-object p1, v3, Lq9/i;->n:Ljava/util/Iterator;

    iput v4, v3, Lq9/i;->l:I

    iput-object p0, v3, Lq9/i;->o:Ly8/c;

    sget-object p1, Lz8/a;->l:Lz8/a;

    :goto_5
    if-ne p1, v0, :cond_a

    :goto_6
    move-object v5, v0

    goto :goto_7

    :cond_c
    instance-of v7, p1, Lq8/h;

    if-eqz v7, :cond_a

    check-cast p1, Lq8/h;

    iget-object p1, p1, Lq8/h;->b:Lr8/m;

    iput-object v3, p0, Lq8/f;->p:Ljava/lang/Object;

    iput-object v2, p0, Lq8/f;->n:Ljava/util/Iterator;

    iput v4, p0, Lq8/f;->o:I

    invoke-virtual {v3, p1, p0}, Lq9/i;->b(Ljava/lang/Object;Ly8/c;)V

    sget-object p0, Lz8/a;->l:Lz8/a;

    goto :goto_6

    :cond_d
    :goto_7
    return-object v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
