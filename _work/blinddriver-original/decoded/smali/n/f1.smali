.class public final Ln/f1;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public n:F

.field public synthetic o:Ljava/lang/Object;

.field public final synthetic p:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lf8/p2;FLn/j;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ln/f1;->l:I

    .line 1
    iput-object p1, p0, Ln/f1;->o:Ljava/lang/Object;

    iput p2, p0, Ln/f1;->n:F

    iput-object p3, p0, Ln/f1;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ln/h1;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ln/f1;->l:I

    .line 2
    iput-object p1, p0, Ln/f1;->p:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Ln/f1;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ln/f1;

    iget-object v0, p0, Ln/f1;->o:Ljava/lang/Object;

    check-cast v0, Lf8/p2;

    iget v1, p0, Ln/f1;->n:F

    iget-object p0, p0, Ln/f1;->p:Ljava/lang/Object;

    check-cast p0, Ln/j;

    invoke-direct {p1, v0, v1, p0, p2}, Ln/f1;-><init>(Lf8/p2;FLn/j;Ly8/c;)V

    return-object p1

    :pswitch_0
    new-instance v0, Ln/f1;

    iget-object p0, p0, Ln/f1;->p:Ljava/lang/Object;

    check-cast p0, Ln/h1;

    invoke-direct {v0, p0, p2}, Ln/f1;-><init>(Ln/h1;Ly8/c;)V

    iput-object p1, v0, Ln/f1;->o:Ljava/lang/Object;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ln/f1;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Ln/f1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ln/f1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ln/f1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ln/f1;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ln/f1;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ln/f1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    iget v0, p0, Ln/f1;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Ln/f1;->m:I

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

    iget-object p1, p0, Ln/f1;->o:Ljava/lang/Object;

    check-cast p1, Lf8/p2;

    iget-object p1, p1, Lf8/p2;->c:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Ln/c;

    iget p1, p0, Ln/f1;->n:F

    new-instance v4, Ljava/lang/Float;

    invoke-direct {v4, p1}, Ljava/lang/Float;-><init>(F)V

    iget-object p1, p0, Ln/f1;->p:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Ln/j;

    iput v2, p0, Ln/f1;->m:I

    const/4 v6, 0x0

    const/16 v8, 0xc

    move-object v7, p0

    invoke-static/range {v3 .. v8}, Ln/c;->c(Ln/c;Ljava/lang/Object;Ln/j;Li9/c;Ly8/c;I)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_1
    return-object v0

    :pswitch_0
    move-object v7, p0

    sget-object p0, Lz8/a;->l:Lz8/a;

    iget v0, v7, Ln/f1;->m:I

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-ne v0, v1, :cond_3

    iget v0, v7, Ln/f1;->n:F

    iget-object v2, v7, Ln/f1;->o:Ljava/lang/Object;

    check-cast v2, Lu9/t;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    iget-object p1, v7, Ln/f1;->o:Ljava/lang/Object;

    check-cast p1, Lu9/t;

    invoke-interface {p1}, Lu9/t;->C()Ly8/h;

    move-result-object v0

    invoke-static {v0}, Ln/d;->j(Ly8/h;)F

    move-result v0

    move-object v2, p1

    :cond_5
    :goto_2
    invoke-static {v2}, Lu9/v;->r(Lu9/t;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v7, Ln/f1;->p:Ljava/lang/Object;

    check-cast p1, Ln/h1;

    new-instance v3, Ln/e1;

    invoke-direct {v3, p1, v0}, Ln/e1;-><init>(Ln/h1;F)V

    iput-object v2, v7, Ln/f1;->o:Ljava/lang/Object;

    iput v0, v7, Ln/f1;->n:F

    iput v1, v7, Ln/f1;->m:I

    invoke-interface {v7}, Ly8/c;->getContext()Ly8/h;

    move-result-object p1

    invoke-static {p1}, Lr0/r;->v(Ly8/h;)Lf2/x0;

    move-result-object p1

    invoke-virtual {p1, v3, v7}, Lf2/x0;->a(Li9/c;Ly8/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_5

    goto :goto_3

    :cond_6
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
