.class public final Lo0/s;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Ls/i;

.field public final synthetic o:Ld1/v;


# direct methods
.method public synthetic constructor <init>(Ls/i;Ld1/v;Ly8/c;I)V
    .locals 0

    iput p4, p0, Lo0/s;->l:I

    iput-object p1, p0, Lo0/s;->n:Ls/i;

    iput-object p2, p0, Lo0/s;->o:Ld1/v;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p1, p0, Lo0/s;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lo0/s;

    iget-object v0, p0, Lo0/s;->o:Ld1/v;

    const/4 v1, 0x3

    iget-object p0, p0, Lo0/s;->n:Ls/i;

    invoke-direct {p1, p0, v0, p2, v1}, Lo0/s;-><init>(Ls/i;Ld1/v;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lo0/s;

    iget-object v0, p0, Lo0/s;->o:Ld1/v;

    const/4 v1, 0x2

    iget-object p0, p0, Lo0/s;->n:Ls/i;

    invoke-direct {p1, p0, v0, p2, v1}, Lo0/s;-><init>(Ls/i;Ld1/v;Ly8/c;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lo0/s;

    iget-object v0, p0, Lo0/s;->o:Ld1/v;

    const/4 v1, 0x1

    iget-object p0, p0, Lo0/s;->n:Ls/i;

    invoke-direct {p1, p0, v0, p2, v1}, Lo0/s;-><init>(Ls/i;Ld1/v;Ly8/c;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lo0/s;

    iget-object v0, p0, Lo0/s;->o:Ld1/v;

    const/4 v1, 0x0

    iget-object p0, p0, Lo0/s;->n:Ls/i;

    invoke-direct {p1, p0, v0, p2, v1}, Lo0/s;-><init>(Ls/i;Ld1/v;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lo0/s;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lo0/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lo0/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lo0/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lo0/s;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lo0/s;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lo0/s;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lo0/s;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lo0/s;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lo0/s;->n:Ls/i;

    iget-object p1, p1, Ls/i;->a:Lx9/b0;

    new-instance v1, Lo0/r;

    iget-object v3, p0, Lo0/s;->o:Ld1/v;

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4}, Lo0/r;-><init>(Ld1/v;I)V

    iput v2, p0, Lo0/s;->m:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p0}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lo0/s;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    if-ne v1, v2, :cond_2

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lo0/s;->n:Ls/i;

    iget-object p1, p1, Ls/i;->a:Lx9/b0;

    new-instance v1, Lo0/r;

    iget-object v3, p0, Lo0/s;->o:Ld1/v;

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4}, Lo0/r;-><init>(Ld1/v;I)V

    iput v2, p0, Lo0/s;->m:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p0}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    :goto_1
    return-object v0

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lo0/s;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    if-ne v1, v2, :cond_4

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    goto :goto_2

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lo0/s;->n:Ls/i;

    iget-object p1, p1, Ls/i;->a:Lx9/b0;

    new-instance v1, Lo0/r;

    iget-object v3, p0, Lo0/s;->o:Ld1/v;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lo0/r;-><init>(Ld1/v;I)V

    iput v2, p0, Lo0/s;->m:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p0}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    :goto_2
    return-object v0

    :pswitch_2
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lo0/s;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    if-ne v1, v2, :cond_6

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object v0, Lt8/z;->a:Lt8/z;

    goto :goto_3

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lo0/s;->n:Ls/i;

    iget-object p1, p1, Ls/i;->a:Lx9/b0;

    new-instance v1, Lo0/r;

    iget-object v3, p0, Lo0/s;->o:Ld1/v;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Lo0/r;-><init>(Ld1/v;I)V

    iput v2, p0, Lo0/s;->m:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, v1, p0}, Lx9/b0;->k(Lx9/b0;Lx9/h;Ly8/c;)V

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
