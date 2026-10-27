.class public final Lr0/o2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Li9/e;

.field public final synthetic p:Lr0/u0;


# direct methods
.method public synthetic constructor <init>(Li9/e;Lr0/u0;Ly8/c;I)V
    .locals 0

    iput p4, p0, Lr0/o2;->l:I

    iput-object p1, p0, Lr0/o2;->o:Li9/e;

    iput-object p2, p0, Lr0/o2;->p:Lr0/u0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 3

    iget v0, p0, Lr0/o2;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lr0/o2;

    iget-object v1, p0, Lr0/o2;->p:Lr0/u0;

    const/4 v2, 0x2

    iget-object p0, p0, Lr0/o2;->o:Li9/e;

    invoke-direct {v0, p0, v1, p2, v2}, Lr0/o2;-><init>(Li9/e;Lr0/u0;Ly8/c;I)V

    iput-object p1, v0, Lr0/o2;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance v0, Lr0/o2;

    iget-object v1, p0, Lr0/o2;->p:Lr0/u0;

    const/4 v2, 0x1

    iget-object p0, p0, Lr0/o2;->o:Li9/e;

    invoke-direct {v0, p0, v1, p2, v2}, Lr0/o2;-><init>(Li9/e;Lr0/u0;Ly8/c;I)V

    iput-object p1, v0, Lr0/o2;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_1
    new-instance v0, Lr0/o2;

    iget-object v1, p0, Lr0/o2;->p:Lr0/u0;

    const/4 v2, 0x0

    iget-object p0, p0, Lr0/o2;->o:Li9/e;

    invoke-direct {v0, p0, v1, p2, v2}, Lr0/o2;-><init>(Li9/e;Lr0/u0;Ly8/c;I)V

    iput-object p1, v0, Lr0/o2;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr0/o2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lr0/o2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr0/o2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr0/o2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lr0/o2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr0/o2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr0/o2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lr0/o2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr0/o2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr0/o2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lr0/o2;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr0/o2;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr0/o2;->n:Ljava/lang/Object;

    check-cast p1, Lu9/t;

    new-instance v1, Lr0/l1;

    iget-object v3, p0, Lr0/o2;->p:Lr0/u0;

    invoke-interface {p1}, Lu9/t;->C()Ly8/h;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lr0/l1;-><init>(Lr0/u0;Ly8/h;)V

    iput v2, p0, Lr0/o2;->m:I

    iget-object p1, p0, Lr0/o2;->o:Li9/e;

    invoke-interface {p1, v1, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr0/o2;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    if-ne v1, v2, :cond_3

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr0/o2;->n:Ljava/lang/Object;

    check-cast p1, Lu9/t;

    new-instance v1, Lr0/l1;

    iget-object v3, p0, Lr0/o2;->p:Lr0/u0;

    invoke-interface {p1}, Lu9/t;->C()Ly8/h;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lr0/l1;-><init>(Lr0/u0;Ly8/h;)V

    iput v2, p0, Lr0/o2;->m:I

    iget-object p1, p0, Lr0/o2;->o:Li9/e;

    invoke-interface {p1, v1, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object v0

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lr0/o2;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-ne v1, v2, :cond_6

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lr0/o2;->n:Ljava/lang/Object;

    check-cast p1, Lu9/t;

    new-instance v1, Lr0/l1;

    iget-object v3, p0, Lr0/o2;->p:Lr0/u0;

    invoke-interface {p1}, Lu9/t;->C()Ly8/h;

    move-result-object p1

    invoke-direct {v1, v3, p1}, Lr0/l1;-><init>(Lr0/u0;Ly8/h;)V

    iput v2, p0, Lr0/o2;->m:I

    iget-object p1, p0, Lr0/o2;->o:Li9/e;

    invoke-interface {p1, v1, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_8

    goto :goto_5

    :cond_8
    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
