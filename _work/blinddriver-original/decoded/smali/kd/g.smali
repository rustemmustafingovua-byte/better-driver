.class public final Lkd/g;
.super La9/i;
.source "SourceFile"

# interfaces
.implements Li9/f;


# instance fields
.field public final synthetic l:I

.field public synthetic m:Z

.field public synthetic n:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lkd/g;->l:I

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-direct {p0, v1, v0}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method

.method public synthetic constructor <init>(ILy8/c;I)V
    .locals 0

    .line 2
    iput p3, p0, Lkd/g;->l:I

    invoke-direct {p0, p1, p2}, La9/i;-><init>(ILy8/c;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget p0, p0, Lkd/g;->l:I

    check-cast p1, Ljava/lang/Boolean;

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p3, Ly8/c;

    new-instance p2, Lkd/g;

    const/4 v0, 0x3

    const/4 v1, 0x1

    invoke-direct {p2, v0, p3, v1}, Lkd/g;-><init>(ILy8/c;I)V

    iput-boolean p0, p2, Lkd/g;->m:Z

    iput-boolean p1, p2, Lkd/g;->n:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p2, p0}, Lkd/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    check-cast p3, Ly8/c;

    new-instance p2, Lkd/g;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p2, v0, p3, v1}, Lkd/g;-><init>(ILy8/c;I)V

    iput-boolean p0, p2, Lkd/g;->m:Z

    iput-boolean p1, p2, Lkd/g;->n:Z

    sget-object p0, Lt8/z;->a:Lt8/z;

    invoke-virtual {p2, p0}, Lkd/g;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

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

    iget v0, p0, Lkd/g;->l:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Lkd/g;->m:Z

    iget-boolean p0, p0, Lkd/g;->n:Z

    sget-object v3, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-boolean v0, p0, Lkd/g;->m:Z

    iget-boolean p0, p0, Lkd/g;->n:Z

    sget-object v3, Lz8/a;->l:Lz8/a;

    invoke-static {p1}, La/a;->E(Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
