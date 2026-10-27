.class public final Lsc/l0;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:J


# direct methods
.method public synthetic constructor <init>(JLy8/c;I)V
    .locals 0

    iput p4, p0, Lsc/l0;->l:I

    iput-wide p1, p0, Lsc/l0;->n:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p1, p0, Lsc/l0;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lsc/l0;

    iget-wide v0, p0, Lsc/l0;->n:J

    const/4 p0, 0x1

    invoke-direct {p1, v0, v1, p2, p0}, Lsc/l0;-><init>(JLy8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lsc/l0;

    iget-wide v0, p0, Lsc/l0;->n:J

    const/4 p0, 0x0

    invoke-direct {p1, v0, v1, p2, p0}, Lsc/l0;-><init>(JLy8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lsc/l0;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lsc/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lsc/l0;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lsc/l0;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lsc/l0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lsc/l0;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-wide v2, p0, Lsc/l0;->n:J

    const-string v4, "call to \'resume\' before \'invoke\' with coroutine"

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v6, p0, Lsc/l0;->m:I

    if-eqz v6, :cond_1

    if-ne v6, v5, :cond_0

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object p1

    iput v5, p0, Lsc/l0;->m:I

    invoke-virtual {p1, v2, v3, p0}, Lid/c1;->f(JLa9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v6, p0, Lsc/l0;->m:I

    if-eqz v6, :cond_4

    if-ne v6, v5, :cond_3

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Lsc/i0;->a:Lsc/i0;

    invoke-static {}, Lsc/i0;->p()Lid/c1;

    move-result-object p1

    iput v5, p0, Lsc/l0;->m:I

    invoke-virtual {p1, v2, v3, p0}, Lid/c1;->g(JLa9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    move-object v1, v0

    :cond_5
    :goto_1
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
