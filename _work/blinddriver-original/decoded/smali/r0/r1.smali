.class public final Lr0/r1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public synthetic m:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILy8/c;I)V
    .locals 0

    iput p3, p0, Lr0/r1;->l:I

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget p0, p0, Lr0/r1;->l:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lr0/r1;

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, v1}, Lr0/r1;-><init>(ILy8/c;I)V

    iput-object p1, p0, Lr0/r1;->m:Ljava/lang/Object;

    return-object p0

    :pswitch_0
    new-instance p0, Lr0/r1;

    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, p2, v1}, Lr0/r1;-><init>(ILy8/c;I)V

    iput-object p1, p0, Lr0/r1;->m:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lr0/r1;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lx9/e0;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr0/r1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr0/r1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr0/r1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lr0/q1;

    check-cast p2, Ly8/c;

    invoke-virtual {p0, p1, p2}, Lr0/r1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lr0/r1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lr0/r1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lr0/r1;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p0, p0, Lr0/r1;->m:Ljava/lang/Object;

    check-cast p0, Lx9/e0;

    sget-object p1, Lx9/e0;->l:Lx9/e0;

    if-eq p0, p1, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p0, p0, Lr0/r1;->m:Ljava/lang/Object;

    check-cast p0, Lr0/q1;

    sget-object p1, Lr0/q1;->l:Lr0/q1;

    if-ne p0, p1, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
