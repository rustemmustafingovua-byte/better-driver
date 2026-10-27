.class public final Lm/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lx9/h;


# instance fields
.field public final synthetic l:I

.field public final m:Ljava/lang/Object;

.field public final n:Ljava/lang/Object;

.field public final o:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p4, p0, Lm/f;->l:I

    iput-object p1, p0, Lm/f;->m:Ljava/lang/Object;

    iput-object p2, p0, Lm/f;->n:Ljava/lang/Object;

    iput-object p3, p0, Lm/f;->o:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lx9/h;Ly8/h;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lm/f;->l:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, Lm/f;->m:Ljava/lang/Object;

    .line 4
    invoke-static {p2}, Lz9/b;->m(Ly8/h;)Ljava/lang/Object;

    move-result-object p2

    iput-object p2, p0, Lm/f;->n:Ljava/lang/Object;

    .line 5
    new-instance p2, Lp/b;

    const/4 v0, 0x0

    const/16 v1, 0x10

    invoke-direct {p2, p1, v0, v1}, Lp/b;-><init>(Ljava/lang/Object;Ly8/c;I)V

    iput-object p2, p0, Lm/f;->o:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lm/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lm/f;->m:Ljava/lang/Object;

    check-cast v0, Ly8/h;

    iget-object v1, p0, Lm/f;->o:Ljava/lang/Object;

    check-cast v1, Lp/b;

    iget-object p0, p0, Lm/f;->n:Ljava/lang/Object;

    invoke-static {v0, p1, p0, v1, p2}, Ly9/c;->b(Ly8/h;Ljava/lang/Object;Ljava/lang/Object;Li9/e;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    sget-object p1, Lz8/a;->l:Lz8/a;

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    :goto_0
    return-object p0

    :pswitch_0
    instance-of v0, p2, Lx9/n;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lx9/n;

    iget v1, v0, Lx9/n;->p:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_1

    sub-int/2addr v1, v2

    iput v1, v0, Lx9/n;->p:I

    goto :goto_1

    :cond_1
    new-instance v0, Lx9/n;

    invoke-direct {v0, p0, p2}, Lx9/n;-><init>(Lm/f;Ly8/c;)V

    :goto_1
    iget-object p2, v0, Lx9/n;->n:Ljava/lang/Object;

    sget-object v1, Lz8/a;->l:Lz8/a;

    iget v2, v0, Lx9/n;->p:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    sget-object v5, Lt8/z;->a:Lt8/z;

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v6, :cond_2

    if-eq v2, v4, :cond_5

    if-ne v2, v3, :cond_4

    :cond_2
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    :cond_3
    move-object v1, v5

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object p1, v0, Lx9/n;->m:Ljava/lang/Object;

    iget-object p0, v0, Lx9/n;->l:Lm/f;

    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-static {p2}, La/a;->E(Ljava/lang/Object;)V

    iget-object p2, p0, Lm/f;->m:Ljava/lang/Object;

    check-cast p2, Lj9/u;

    iget-boolean p2, p2, Lj9/u;->l:Z

    if-eqz p2, :cond_7

    iget-object p0, p0, Lm/f;->n:Ljava/lang/Object;

    check-cast p0, Lx9/h;

    iput v6, v0, Lx9/n;->p:I

    invoke-interface {p0, p1, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    goto :goto_3

    :cond_7
    iget-object p2, p0, Lm/f;->o:Ljava/lang/Object;

    check-cast p2, Lr0/r1;

    iput-object p0, v0, Lx9/n;->l:Lm/f;

    iput-object p1, v0, Lx9/n;->m:Ljava/lang/Object;

    iput v4, v0, Lx9/n;->p:I

    invoke-virtual {p2, p1, v0}, Lr0/r1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_8

    goto :goto_3

    :cond_8
    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lm/f;->m:Ljava/lang/Object;

    check-cast p2, Lj9/u;

    iput-boolean v6, p2, Lj9/u;->l:Z

    iget-object p0, p0, Lm/f;->n:Ljava/lang/Object;

    check-cast p0, Lx9/h;

    const/4 p2, 0x0

    iput-object p2, v0, Lx9/n;->l:Lm/f;

    iput-object p2, v0, Lx9/n;->m:Ljava/lang/Object;

    iput v3, v0, Lx9/n;->p:I

    invoke-interface {p0, p1, v0}, Lx9/h;->d(Ljava/lang/Object;Ly8/c;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v1, :cond_3

    :goto_3
    return-object v1

    :pswitch_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lm/f;->n:Ljava/lang/Object;

    check-cast p2, Ln/h1;

    iget-object v0, p0, Lm/f;->m:Ljava/lang/Object;

    check-cast v0, Lr0/l1;

    if-eqz p1, :cond_9

    iget-object p0, p0, Lm/f;->o:Ljava/lang/Object;

    check-cast p0, Lr0/u0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li9/e;

    invoke-virtual {p2}, Ln/h1;->c()Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p2, Ln/h1;->d:Lr0/e1;

    invoke-virtual {p2}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Li9/e;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    goto :goto_4

    :cond_9
    const/4 p0, 0x0

    :goto_4
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p0}, Lr0/l1;->setValue(Ljava/lang/Object;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
