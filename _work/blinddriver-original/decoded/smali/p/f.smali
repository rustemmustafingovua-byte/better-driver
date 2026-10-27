.class public final Lp/f;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lp/g;


# direct methods
.method public synthetic constructor <init>(Lp/g;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lp/f;->l:I

    iput-object p1, p0, Lp/f;->m:Lp/g;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 1

    iget p1, p0, Lp/f;->l:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lp/f;

    iget-object p0, p0, Lp/f;->m:Lp/g;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lp/f;-><init>(Lp/g;Ly8/c;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lp/f;

    iget-object p0, p0, Lp/f;->m:Lp/g;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lp/f;-><init>(Lp/g;Ly8/c;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lp/f;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Lp/f;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/f;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lp/f;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Lp/f;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Lp/f;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lp/f;->l:I

    sget-object v1, Lt8/z;->a:Lt8/z;

    const/4 v2, 0x3

    const/4 v3, 0x0

    iget-object p0, p0, Lp/f;->m:Lp/g;

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lp/g;->N:Ls/f;

    if-eqz p1, :cond_1

    new-instance v0, Ls/g;

    invoke-direct {v0, p1}, Ls/g;-><init>(Ls/f;)V

    iget-object p1, p0, Lp/g;->B:Ls/i;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v4

    new-instance v5, Lp/b;

    const/4 v6, 0x0

    invoke-direct {v5, p1, v0, v3, v6}, Lp/b;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v4, v3, v3, v5, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_0
    iput-object v3, p0, Lp/g;->N:Ls/f;

    :cond_1
    return-object v1

    :pswitch_0
    sget-object v0, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, p0, Lp/g;->N:Ls/f;

    if-nez p1, :cond_3

    new-instance p1, Ls/f;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lp/g;->B:Ls/i;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lf1/q;->A0()Lu9/t;

    move-result-object v4

    new-instance v5, Landroidx/lifecycle/i0;

    const/16 v6, 0x1d

    invoke-direct {v5, v0, p1, v3, v6}, Landroidx/lifecycle/i0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ly8/c;I)V

    invoke-static {v4, v3, v3, v5, v2}, Lu9/v;->t(Lu9/t;Ly8/h;Lu9/u;Li9/e;I)Lu9/j1;

    :cond_2
    iput-object p1, p0, Lp/g;->N:Ls/f;

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
