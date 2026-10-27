.class public final Lb4/b;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public final synthetic n:Lx9/g;

.field public final synthetic o:Lr0/l1;


# direct methods
.method public synthetic constructor <init>(Lx9/g;Lr0/l1;Ly8/c;I)V
    .locals 0

    iput p4, p0, Lb4/b;->l:I

    iput-object p1, p0, Lb4/b;->n:Lx9/g;

    iput-object p2, p0, Lb4/b;->o:Lr0/l1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p1, p0, Lb4/b;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lb4/b;

    iget-object v0, p0, Lb4/b;->o:Lr0/l1;

    const/4 v1, 0x2

    iget-object p0, p0, Lb4/b;->n:Lx9/g;

    invoke-direct {p1, p0, v0, p2, v1}, Lb4/b;-><init>(Lx9/g;Lr0/l1;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lb4/b;

    iget-object v0, p0, Lb4/b;->o:Lr0/l1;

    const/4 v1, 0x1

    iget-object p0, p0, Lb4/b;->n:Lx9/g;

    invoke-direct {p1, p0, v0, p2, v1}, Lb4/b;-><init>(Lx9/g;Lr0/l1;Ly8/c;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lb4/b;

    iget-object v0, p0, Lb4/b;->o:Lr0/l1;

    const/4 v1, 0x0

    iget-object p0, p0, Lb4/b;->n:Lx9/g;

    invoke-direct {p1, p0, v0, p2, v1}, Lb4/b;-><init>(Lx9/g;Lr0/l1;Ly8/c;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb4/b;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lb4/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb4/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb4/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lb4/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb4/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb4/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lb4/b;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lb4/b;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lb4/b;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lb4/b;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lb4/b;->m:I

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

    new-instance p1, Lb4/a;

    iget-object v1, p0, Lb4/b;->o:Lr0/l1;

    const/4 v3, 0x3

    invoke-direct {p1, v1, v3}, Lb4/a;-><init>(Lr0/l1;I)V

    iput v2, p0, Lb4/b;->m:I

    iget-object v1, p0, Lb4/b;->n:Lx9/g;

    invoke-interface {v1, p1, p0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

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

    iget v1, p0, Lb4/b;->m:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-ne v1, v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    sget-object p1, Ly8/i;->l:Ly8/i;

    invoke-virtual {p1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v4, p0, Lb4/b;->o:Lr0/l1;

    iget-object v5, p0, Lb4/b;->n:Lx9/g;

    if-eqz v1, :cond_6

    new-instance p1, Lb4/a;

    const/4 v1, 0x0

    invoke-direct {p1, v4, v1}, Lb4/a;-><init>(Lr0/l1;I)V

    iput v3, p0, Lb4/b;->m:I

    invoke-interface {v5, p1, p0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_4

    :cond_6
    new-instance v1, Lb4/b;

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-direct {v1, v5, v4, v3, v6}, Lb4/b;-><init>(Lx9/g;Lr0/l1;Ly8/c;I)V

    iput v2, p0, Lb4/b;->m:I

    invoke-static {p1, v1, p0}, Lu9/v;->z(Ly8/h;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_4
    return-object v0

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Lb4/b;->m:I

    const/4 v2, 0x1

    if-eqz v1, :cond_9

    if-ne v1, v2, :cond_8

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_5

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    new-instance p1, Lb4/a;

    iget-object v1, p0, Lb4/b;->o:Lr0/l1;

    const/4 v3, 0x1

    invoke-direct {p1, v1, v3}, Lb4/a;-><init>(Lr0/l1;I)V

    iput v2, p0, Lb4/b;->m:I

    iget-object v1, p0, Lb4/b;->n:Lx9/g;

    invoke-interface {v1, p1, p0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_6
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
