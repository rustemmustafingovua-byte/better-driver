.class public final Lm0/p1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lm0/v1;


# direct methods
.method public synthetic constructor <init>(Lm0/v1;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lm0/p1;->l:I

    iput-object p1, p0, Lm0/p1;->m:Lm0/v1;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Lm0/p1;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lm0/p1;

    iget-object p0, p0, Lm0/p1;->m:Lm0/v1;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p1, v1}, Lm0/p1;-><init>(Lm0/v1;Ly8/c;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lm0/p1;

    iget-object p0, p0, Lm0/p1;->m:Lm0/v1;

    const/4 v1, 0x2

    invoke-direct {v0, p0, p1, v1}, Lm0/p1;-><init>(Lm0/v1;Ly8/c;I)V

    return-object v0

    :pswitch_1
    new-instance v0, Lm0/p1;

    iget-object p0, p0, Lm0/p1;->m:Lm0/v1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lm0/p1;-><init>(Lm0/v1;Ly8/c;I)V

    return-object v0

    :pswitch_2
    new-instance v0, Lm0/p1;

    iget-object p0, p0, Lm0/p1;->m:Lm0/v1;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lm0/p1;-><init>(Lm0/v1;Ly8/c;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm0/p1;->l:I

    check-cast p1, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1}, Lm0/p1;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/p1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/p1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1}, Lm0/p1;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/p1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/p1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1}, Lm0/p1;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/p1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/p1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1}, Lm0/p1;->create(Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lm0/p1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lm0/p1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lm0/p1;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object p0, p0, Lm0/p1;->m:Lm0/v1;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm0/v1;->p()V

    return-object v1

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lm0/v1;->B:Z

    invoke-virtual {p0, p1}, Lm0/v1;->d(Z)Lu9/j1;

    return-object v1

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm0/v1;->f()V

    return-object v1

    :pswitch_2
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm0/v1;->B:Z

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
