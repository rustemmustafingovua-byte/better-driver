.class public final synthetic Lr/b2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr/g2;


# direct methods
.method public synthetic constructor <init>(Lr/g2;I)V
    .locals 0

    iput p2, p0, Lr/b2;->l:I

    iput-object p1, p0, Lr/b2;->m:Lr/g2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lr/b2;->l:I

    iget-object p0, p0, Lr/b2;->m:Lr/g2;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lr/g2;->a0:Lk1/b0;

    move-object v0, p0

    check-cast v0, Lf1/q;

    iget-object v0, v0, Lf1/q;->l:Lf1/q;

    iget-boolean v0, v0, Lf1/q;->y:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lk1/b0;->R0()Lk1/z;

    move-result-object v0

    invoke-virtual {v0}, Lk1/z;->a()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lk1/z;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v1}, Lk1/b0;->P0(Lc2/u;)Ll1/c;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {p0}, Le2/l;->w(Le2/j;)Le2/q1;

    move-result-object v0

    check-cast v0, Lf2/y;

    invoke-virtual {v0}, Lf2/y;->getFocusOwner()Lk1/l;

    move-result-object v0

    check-cast v0, Lk1/o;

    invoke-virtual {v0}, Lk1/o;->f()Lk1/b0;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Le2/l;->u(Le2/j;)Le2/h1;

    move-result-object p0

    invoke-virtual {v0, p0}, Lk1/b0;->P0(Lc2/u;)Ll1/c;

    move-result-object v1

    :cond_3
    :goto_0
    return-object v1

    :pswitch_0
    iget-boolean p0, p0, Lf1/q;->y:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
