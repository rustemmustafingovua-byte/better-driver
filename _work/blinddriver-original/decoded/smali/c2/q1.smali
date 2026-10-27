.class public final Lc2/q1;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/e;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lc2/r1;


# direct methods
.method public synthetic constructor <init>(Lc2/r1;I)V
    .locals 0

    iput p2, p0, Lc2/q1;->l:I

    iput-object p1, p0, Lc2/q1;->m:Lc2/r1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lc2/q1;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Le2/g0;

    check-cast p2, Lc2/r1;

    iget-object p0, p0, Lc2/q1;->m:Lc2/r1;

    iget-object p2, p0, Lc2/r1;->a:Lc2/u1;

    iget-object v0, p1, Le2/g0;->T:Lc2/n0;

    if-nez v0, :cond_0

    new-instance v0, Lc2/n0;

    invoke-direct {v0, p1, p2}, Lc2/n0;-><init>(Le2/g0;Lc2/u1;)V

    iput-object v0, p1, Le2/g0;->T:Lc2/n0;

    :cond_0
    iput-object v0, p0, Lc2/r1;->b:Lc2/n0;

    invoke-virtual {p0}, Lc2/r1;->a()Lc2/n0;

    move-result-object p1

    invoke-virtual {p1}, Lc2/n0;->h()V

    invoke-virtual {p0}, Lc2/r1;->a()Lc2/n0;

    move-result-object p0

    iget-object p1, p0, Lc2/n0;->n:Lc2/u1;

    if-eq p1, p2, :cond_1

    iput-object p2, p0, Lc2/n0;->n:Lc2/u1;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lc2/n0;->i(Z)V

    iget-object p0, p0, Lc2/n0;->l:Le2/g0;

    const/4 p2, 0x7

    invoke-static {p0, p1, p2}, Le2/g0;->X(Le2/g0;ZI)V

    :cond_1
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    check-cast p1, Le2/g0;

    check-cast p2, Li9/e;

    iget-object p0, p0, Lc2/q1;->m:Lc2/r1;

    invoke-virtual {p0}, Lc2/r1;->a()Lc2/n0;

    move-result-object p0

    iget-object v0, p0, Lc2/n0;->A:Ljava/lang/String;

    new-instance v1, Lc2/i0;

    invoke-direct {v1, p0, p2, v0}, Lc2/i0;-><init>(Lc2/n0;Li9/e;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Le2/g0;->e0(Lc2/r0;)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_1
    check-cast p1, Le2/g0;

    check-cast p2, Lr0/u;

    iget-object p0, p0, Lc2/q1;->m:Lc2/r1;

    invoke-virtual {p0}, Lc2/r1;->a()Lc2/n0;

    move-result-object p0

    iput-object p2, p0, Lc2/n0;->m:Lr0/u;

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
