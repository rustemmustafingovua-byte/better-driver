.class public final Lp/d;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Ls/i;

.field public final synthetic o:Ls/k;


# direct methods
.method public constructor <init>(Ls/i;Ls/k;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lp/d;->l:I

    .line 1
    iput-object p1, p0, Lp/d;->n:Ls/i;

    iput-object p2, p0, Lp/d;->o:Ls/k;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ls/k;Ls/i;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lp/d;->l:I

    .line 2
    iput-object p1, p0, Lp/d;->o:Ls/k;

    iput-object p2, p0, Lp/d;->n:Ls/i;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p1, p0, Lp/d;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lp/d;

    iget-object v0, p0, Lp/d;->n:Ls/i;

    iget-object p0, p0, Lp/d;->o:Ls/k;

    invoke-direct {p1, v0, p0, p2}, Lp/d;-><init>(Ls/i;Ls/k;Ly8/c;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lp/d;

    iget-object v0, p0, Lp/d;->o:Ls/k;

    iget-object p0, p0, Lp/d;->n:Ls/i;

    invoke-direct {p1, v0, p0, p2}, Lp/d;-><init>(Ls/k;Ls/i;Ly8/c;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lp/d;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lp/d;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/d;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lp/d;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/d;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/d;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lp/d;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lp/d;->m:I

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

    iput v2, p0, Lp/d;->m:I

    iget-object p1, p0, Lp/d;->n:Ls/i;

    iget-object v1, p0, Lp/d;->o:Ls/k;

    invoke-virtual {p1, v1, p0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

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

    iget v1, p0, Lp/d;->m:I

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

    new-instance p1, Ls/l;

    iget-object v1, p0, Lp/d;->o:Ls/k;

    invoke-direct {p1, v1}, Ls/l;-><init>(Ls/k;)V

    iput v2, p0, Lp/d;->m:I

    iget-object v1, p0, Lp/d;->n:Ls/i;

    invoke-virtual {v1, p1, p0}, Ls/i;->a(Ls/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
