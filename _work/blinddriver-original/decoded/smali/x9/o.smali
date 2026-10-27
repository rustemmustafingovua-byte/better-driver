.class public final Lx9/o;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public synthetic n:Lx9/h;

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:La9/i;


# direct methods
.method public constructor <init>(Li9/e;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lx9/o;->l:I

    .line 1
    check-cast p1, La9/i;

    iput-object p1, p0, Lx9/o;->p:La9/i;

    const/4 p1, 0x3

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ly8/c;Lsc/x;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lx9/o;->l:I

    .line 2
    iput-object p2, p0, Lx9/o;->p:La9/i;

    const/4 p2, 0x3

    invoke-direct {p0, p2, p1}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lx9/o;->l:I

    check-cast p1, Lx9/h;

    packed-switch v0, :pswitch_data_0

    check-cast p2, [Ljava/lang/Object;

    check-cast p3, Ly8/c;

    new-instance v0, Lx9/o;

    iget-object p0, p0, Lx9/o;->p:La9/i;

    check-cast p0, Lsc/x;

    invoke-direct {v0, p3, p0}, Lx9/o;-><init>(Ly8/c;Lsc/x;)V

    iput-object p1, v0, Lx9/o;->n:Lx9/h;

    iput-object p2, v0, Lx9/o;->o:Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {v0, p0}, Lx9/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p3, Ly8/c;

    new-instance v0, Lx9/o;

    iget-object p0, p0, Lx9/o;->p:La9/i;

    invoke-direct {v0, p0, p3}, Lx9/o;-><init>(Li9/e;Ly8/c;)V

    iput-object p1, v0, Lx9/o;->n:Lx9/h;

    iput-object p2, v0, Lx9/o;->o:Ljava/lang/Object;

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {v0, p0}, Lx9/o;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lx9/o;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lx9/o;->m:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v1, p0, Lx9/o;->n:Lx9/h;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, p0, Lx9/o;->n:Lx9/h;

    iget-object p1, p0, Lx9/o;->o:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iget-object v4, p0, Lx9/o;->p:La9/i;

    check-cast v4, Lsc/x;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    aget-object v6, p1, v3

    aget-object p1, p1, v2

    iput-object v1, p0, Lx9/o;->n:Lx9/h;

    iput v3, p0, Lx9/o;->m:I

    invoke-virtual {v4, v5, v6, p1, p0}, Lsc/x;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    goto :goto_2

    :cond_3
    :goto_0
    const/4 v3, 0x0

    iput-object v3, p0, Lx9/o;->n:Lx9/h;

    iput v2, p0, Lx9/o;->m:I

    invoke-interface {v1, p1, p0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_2
    return-object v0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lx9/o;->m:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    if-eq v1, v3, :cond_6

    if-ne v1, v2, :cond_5

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget-object v1, p0, Lx9/o;->n:Lx9/h;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_7
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object v1, p0, Lx9/o;->n:Lx9/h;

    iget-object p1, p0, Lx9/o;->o:Ljava/lang/Object;

    iput-object v1, p0, Lx9/o;->n:Lx9/h;

    iput v3, p0, Lx9/o;->m:I

    iget-object v3, p0, Lx9/o;->p:La9/i;

    invoke-interface {v3, p1, p0}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    goto :goto_5

    :cond_8
    :goto_3
    const/4 v3, 0x0

    iput-object v3, p0, Lx9/o;->n:Lx9/h;

    iput v2, p0, Lx9/o;->m:I

    invoke-interface {v1, p1, p0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_9

    goto :goto_5

    :cond_9
    :goto_4
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_5
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
