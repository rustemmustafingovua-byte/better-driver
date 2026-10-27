.class public final Lr/r2;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr/p1;


# direct methods
.method public synthetic constructor <init>(Lr/p1;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lr/r2;->l:I

    iput-object p1, p0, Lr/r2;->m:Lr/p1;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p1, p0, Lr/r2;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lr/r2;

    iget-object p0, p0, Lr/r2;->m:Lr/p1;

    const/4 v0, 0x7

    invoke-direct {p1, p0, p2, v0}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lr/r2;

    iget-object p0, p0, Lr/r2;->m:Lr/p1;

    const/4 v0, 0x6

    invoke-direct {p1, p0, p2, v0}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lr/r2;

    iget-object p0, p0, Lr/r2;->m:Lr/p1;

    const/4 v0, 0x5

    invoke-direct {p1, p0, p2, v0}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    return-object p1

    :pswitch_2
    new-instance p1, Lr/r2;

    iget-object p0, p0, Lr/r2;->m:Lr/p1;

    const/4 v0, 0x4

    invoke-direct {p1, p0, p2, v0}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    return-object p1

    :pswitch_3
    new-instance p1, Lr/r2;

    iget-object p0, p0, Lr/r2;->m:Lr/p1;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    return-object p1

    :pswitch_4
    new-instance p1, Lr/r2;

    iget-object p0, p0, Lr/r2;->m:Lr/p1;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    return-object p1

    :pswitch_5
    new-instance p1, Lr/r2;

    iget-object p0, p0, Lr/r2;->m:Lr/p1;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    return-object p1

    :pswitch_6
    new-instance p1, Lr/r2;

    iget-object p0, p0, Lr/r2;->m:Lr/p1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lr/r2;-><init>(Lr/p1;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr/r2;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lr/r2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/r2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/r2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lr/r2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/r2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/r2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lr/r2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/r2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/r2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lr/r2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/r2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/r2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_3
    invoke-virtual {p0, p1, p2}, Lr/r2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/r2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/r2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_4
    invoke-virtual {p0, p1, p2}, Lr/r2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/r2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/r2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_5
    invoke-virtual {p0, p1, p2}, Lr/r2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/r2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/r2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_6
    invoke-virtual {p0, p1, p2}, Lr/r2;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr/r2;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr/r2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lr/r2;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    iget-object p0, p0, Lr/r2;->m:Lr/p1;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr/p1;->c()V

    return-object v1

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr/p1;->b()V

    return-object v1

    :pswitch_1
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr/p1;->c()V

    return-object v1

    :pswitch_2
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr/p1;->c()V

    return-object v1

    :pswitch_3
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr/p1;->b()V

    return-object v1

    :pswitch_4
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr/p1;->c()V

    return-object v1

    :pswitch_5
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr/p1;->c()V

    return-object v1

    :pswitch_6
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lr/p1;->b()V

    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
