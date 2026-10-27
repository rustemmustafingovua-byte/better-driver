.class public final Lkd/y;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/h;


# instance fields
.field public final synthetic l:I

.field public synthetic m:Z

.field public synthetic n:Z

.field public synthetic o:Z

.field public synthetic p:Z


# direct methods
.method public synthetic constructor <init>(ILy8/c;I)V
    .locals 0

    iput p3, p0, Lkd/y;->l:I

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lkd/y;->l:I

    check-cast p1, Ljava/lang/Boolean;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p5, Ly8/c;

    new-instance p4, Lkd/y;

    const/4 v0, 0x5

    const/4 v1, 0x1

    invoke-direct {p4, v0, p5, v1}, Lkd/y;-><init>(ILy8/c;I)V

    iput-boolean p0, p4, Lkd/y;->m:Z

    iput-boolean p1, p4, Lkd/y;->n:Z

    iput-boolean p2, p4, Lkd/y;->o:Z

    iput-boolean p3, p4, Lkd/y;->p:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p4, p0}, Lkd/y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    check-cast p5, Ly8/c;

    new-instance p4, Lkd/y;

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p4, v0, p5, v1}, Lkd/y;-><init>(ILy8/c;I)V

    iput-boolean p0, p4, Lkd/y;->m:Z

    iput-boolean p1, p4, Lkd/y;->n:Z

    iput-boolean p2, p4, Lkd/y;->o:Z

    iput-boolean p3, p4, Lkd/y;->p:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p4, p0}, Lkd/y;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lkd/y;->l:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lkd/y;->m:Z

    iget-boolean v1, p0, Lkd/y;->n:Z

    iget-boolean v2, p0, Lkd/y;->o:Z

    iget-boolean p0, p0, Lkd/y;->p:Z

    sget-object v3, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-nez p0, :cond_1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lkd/y;->m:Z

    iget-boolean v1, p0, Lkd/y;->n:Z

    iget-boolean v2, p0, Lkd/y;->o:Z

    iget-boolean p0, p0, Lkd/y;->p:Z

    sget-object v3, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {p1, v0, v1, p0}, [Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
