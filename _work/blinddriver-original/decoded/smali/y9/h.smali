.class public final Ly9/h;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public m:I

.field public synthetic n:Ljava/lang/Object;

.field public final synthetic o:Ly9/j;

.field public final synthetic p:Lx9/h;


# direct methods
.method public constructor <init>(Ly9/j;Lx9/h;Ljava/lang/Object;Ly8/c;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Ly9/h;->l:I

    .line 1
    iput-object p1, p0, Ly9/h;->o:Ly9/j;

    iput-object p2, p0, Ly9/h;->p:Lx9/h;

    iput-object p3, p0, Ly9/h;->n:Ljava/lang/Object;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public constructor <init>(Ly9/j;Lx9/h;Ly8/c;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Ly9/h;->l:I

    .line 2
    iput-object p1, p0, Ly9/h;->o:Ly9/j;

    iput-object p2, p0, Ly9/h;->p:Lx9/h;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ly8/c;)Ly8/c;
    .locals 2

    iget v0, p0, Ly9/h;->l:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ly9/h;

    iget-object v1, p0, Ly9/h;->o:Ly9/j;

    iget-object p0, p0, Ly9/h;->p:Lx9/h;

    invoke-direct {v0, v1, p0, p2}, Ly9/h;-><init>(Ly9/j;Lx9/h;Ly8/c;)V

    iput-object p1, v0, Ly9/h;->n:Ljava/lang/Object;

    return-object v0

    :pswitch_0
    new-instance p1, Ly9/h;

    iget-object v0, p0, Ly9/h;->p:Lx9/h;

    iget-object v1, p0, Ly9/h;->n:Ljava/lang/Object;

    iget-object p0, p0, Ly9/h;->o:Ly9/j;

    invoke-direct {p1, p0, v0, v1, p2}, Ly9/h;-><init>(Ly9/j;Lx9/h;Ljava/lang/Object;Ly8/c;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ly9/h;->l:I

    check-cast p1, Lu9/t;

    check-cast p2, Ly8/c;

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p0, p1, p2}, Ly9/h;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ly9/h;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ly9/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Ly9/h;->create(Ljava/lang/Object;Ly8/c;)Ly8/c;

    move-result-object p0

    check-cast p0, Ly9/h;

    sget-object p1, Lt8/z;->a:Lt8/z;

    invoke-virtual {p0, p1}, Ly9/h;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Ly9/h;->l:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lz8/a;->l:Lz8/a;

    iget v1, p0, Ly9/h;->m:I

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

    iget-object p1, p0, Ly9/h;->n:Ljava/lang/Object;

    move-object v5, p1

    check-cast v5, Lu9/t;

    new-instance v4, Lj9/y;

    invoke-direct {v4}, Lj9/y;-><init>()V

    iget-object v6, p0, Ly9/h;->o:Ly9/j;

    iget-object p1, v6, Ly9/f;->o:Lx9/g;

    new-instance v3, Lb0/s0;

    iget-object v7, p0, Ly9/h;->p:Lx9/h;

    const/4 v8, 0x2

    invoke-direct/range {v3 .. v8}, Lb0/s0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput v2, p0, Ly9/h;->m:I

    invoke-interface {p1, v3, p0}, Lx9/g;->a(Lx9/h;Ly8/c;)Ljava/lang/Object;

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

    iget v1, p0, Ly9/h;->m:I

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

    iget-object p1, p0, Ly9/h;->o:Ly9/j;

    iget-object p1, p1, Ly9/j;->p:La9/i;

    iget-object v1, p0, Ly9/h;->n:Ljava/lang/Object;

    iput v2, p0, Ly9/h;->m:I

    iget-object v2, p0, Ly9/h;->p:Lx9/h;

    invoke-interface {p1, v2, v1, p0}, Li9/f;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v0, Lt8/z;->a:Lt8/z;

    :goto_3
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
