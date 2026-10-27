.class public final Lf2/e3;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Lf2/g3;


# direct methods
.method public synthetic constructor <init>(Lf2/g3;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lf2/e3;->l:I

    iput-object p1, p0, Lf2/e3;->n:Lf2/g3;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p1, p0, Lf2/e3;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lf2/e3;

    iget-object p0, p0, Lf2/e3;->n:Lf2/g3;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lf2/e3;-><init>(Lf2/g3;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lf2/e3;

    iget-object p0, p0, Lf2/e3;->n:Lf2/g3;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lf2/e3;-><init>(Lf2/g3;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf2/e3;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lf2/e3;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/e3;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/e3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lf2/e3;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lf2/e3;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lf2/e3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lf2/e3;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lf2/e3;->m:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :cond_0
    move-object v0, v2

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lf2/e3;->n:Lf2/g3;

    iget-object p1, p1, Lf2/g3;->l:Lf2/y;

    iput v3, p0, Lf2/e3;->m:I

    iget-object p1, p1, Lf2/y;->K:Lh1/d;

    invoke-virtual {p1, p0}, Lh1/d;->a(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_3

    goto :goto_0

    :cond_3
    move-object p0, v2

    :goto_0
    if-ne p0, v0, :cond_0

    :goto_1
    return-object v0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lf2/e3;->m:I

    sget-object v2, Lt8/z;->a:Lt8/z;

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    if-ne v1, v3, :cond_5

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    :cond_4
    move-object v0, v2

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lf2/e3;->n:Lf2/g3;

    iget-object p1, p1, Lf2/g3;->l:Lf2/y;

    iput v3, p0, Lf2/e3;->m:I

    iget-object p1, p1, Lf2/y;->J:Lf2/e0;

    invoke-virtual {p1, p0}, Lf2/e0;->e(La9/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_2

    :cond_7
    move-object p0, v2

    :goto_2
    if-ne p0, v0, :cond_4

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
