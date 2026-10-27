.class public final Lk1/d0;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lk1/b0;

.field public final synthetic n:Lk1/b0;

.field public final synthetic o:I

.field public final synthetic p:Le2/i0;

.field public final synthetic q:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lk1/b0;Lk1/b0;Ljava/lang/Object;ILe2/i0;I)V
    .locals 0

    iput p6, p0, Lk1/d0;->l:I

    iput-object p1, p0, Lk1/d0;->m:Lk1/b0;

    iput-object p2, p0, Lk1/d0;->n:Lk1/b0;

    iput-object p3, p0, Lk1/d0;->q:Ljava/lang/Object;

    iput p4, p0, Lk1/d0;->o:I

    iput-object p5, p0, Lk1/d0;->p:Le2/i0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lk1/d0;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lc2/e;

    iget-object v0, p0, Lk1/d0;->n:Lk1/b0;

    invoke-static {v0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v1

    check-cast v1, Lk1/o;

    invoke-virtual {v1}, Lk1/o;->f()Lk1/b0;

    move-result-object v1

    iget-object v2, p0, Lk1/d0;->m:Lk1/b0;

    if-eq v2, v1, :cond_0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lk1/d0;->q:Ljava/lang/Object;

    check-cast v1, Ll1/c;

    iget v2, p0, Lk1/d0;->o:I

    iget-object p0, p0, Lk1/d0;->p:Le2/i0;

    invoke-static {v2, p0, v0, v1}, Lk1/d;->A(ILe2/i0;Lk1/b0;Ll1/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p0, :cond_2

    invoke-interface {p1}, Lc2/e;->a()Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0

    :pswitch_0
    check-cast p1, Lc2/e;

    iget-object v0, p0, Lk1/d0;->n:Lk1/b0;

    invoke-static {v0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v1

    check-cast v1, Lf2/y;

    invoke-virtual {v1}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v1

    check-cast v1, Lk1/o;

    invoke-virtual {v1}, Lk1/o;->f()Lk1/b0;

    move-result-object v1

    iget-object v2, p0, Lk1/d0;->m:Lk1/b0;

    if-eq v2, v1, :cond_3

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lk1/d0;->q:Ljava/lang/Object;

    check-cast v1, Lk1/b0;

    iget v2, p0, Lk1/d0;->o:I

    iget-object p0, p0, Lk1/d0;->p:Le2/i0;

    invoke-static {v0, v1, v2, p0}, Lk1/d;->B(Lk1/b0;Lk1/b0;ILe2/i0;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-nez p0, :cond_5

    invoke-interface {p1}, Lc2/e;->a()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 p0, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    move-object p0, v0

    :goto_3
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
