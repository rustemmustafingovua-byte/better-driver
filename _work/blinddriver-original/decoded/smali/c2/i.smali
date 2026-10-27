.class public final Lc2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/q0;


# instance fields
.field public final synthetic l:I

.field public final m:Lc2/q0;

.field public final n:Ljava/lang/Enum;

.field public final o:Ljava/lang/Enum;


# direct methods
.method public synthetic constructor <init>(Lc2/q0;Ljava/lang/Enum;Ljava/lang/Enum;I)V
    .locals 0

    iput p4, p0, Lc2/i;->l:I

    iput-object p1, p0, Lc2/i;->m:Lc2/q0;

    iput-object p2, p0, Lc2/i;->n:Ljava/lang/Enum;

    iput-object p3, p0, Lc2/i;->o:Ljava/lang/Enum;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final C(J)Lc2/f1;
    .locals 4

    iget v0, p0, Lc2/i;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lc2/i;->n:Ljava/lang/Enum;

    check-cast v0, Le2/j1;

    iget-object v1, p0, Lc2/i;->o:Ljava/lang/Enum;

    check-cast v1, Le2/k1;

    sget-object v2, Le2/k1;->l:Le2/k1;

    const/16 v3, 0x7fff

    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    if-ne v1, v2, :cond_2

    sget-object v1, Le2/j1;->m:Le2/j1;

    if-ne v0, v1, :cond_0

    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->z(I)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->u(I)I

    move-result p0

    :goto_0
    invoke-static {p1, p2}, Lb3/a;->c(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result v3

    :cond_1
    new-instance p1, Lc2/j;

    const/4 p2, 0x2

    invoke-direct {p1, p0, v3, p2}, Lc2/j;-><init>(III)V

    goto :goto_2

    :cond_2
    sget-object v1, Le2/j1;->m:Le2/j1;

    if-ne v0, v1, :cond_3

    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->c(I)I

    move-result p0

    goto :goto_1

    :cond_3
    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->b0(I)I

    move-result p0

    :goto_1
    invoke-static {p1, p2}, Lb3/a;->d(J)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result v3

    :cond_4
    new-instance p1, Lc2/j;

    const/4 p2, 0x2

    invoke-direct {p1, v3, p0, p2}, Lc2/j;-><init>(III)V

    :goto_2
    return-object p1

    :pswitch_0
    iget-object v0, p0, Lc2/i;->n:Ljava/lang/Enum;

    check-cast v0, Lc2/u0;

    iget-object v1, p0, Lc2/i;->o:Ljava/lang/Enum;

    check-cast v1, Lc2/v0;

    sget-object v2, Lc2/v0;->l:Lc2/v0;

    const/16 v3, 0x7fff

    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    if-ne v1, v2, :cond_7

    sget-object v1, Lc2/u0;->m:Lc2/u0;

    if-ne v0, v1, :cond_5

    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->z(I)I

    move-result p0

    goto :goto_3

    :cond_5
    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->u(I)I

    move-result p0

    :goto_3
    invoke-static {p1, p2}, Lb3/a;->c(J)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result v3

    :cond_6
    new-instance p1, Lc2/j;

    const/4 p2, 0x1

    invoke-direct {p1, p0, v3, p2}, Lc2/j;-><init>(III)V

    goto :goto_5

    :cond_7
    sget-object v1, Lc2/u0;->m:Lc2/u0;

    if-ne v0, v1, :cond_8

    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->c(I)I

    move-result p0

    goto :goto_4

    :cond_8
    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->b0(I)I

    move-result p0

    :goto_4
    invoke-static {p1, p2}, Lb3/a;->d(J)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result v3

    :cond_9
    new-instance p1, Lc2/j;

    const/4 p2, 0x1

    invoke-direct {p1, v3, p0, p2}, Lc2/j;-><init>(III)V

    :goto_5
    return-object p1

    :pswitch_1
    iget-object v0, p0, Lc2/i;->n:Ljava/lang/Enum;

    check-cast v0, Lc2/q;

    iget-object v1, p0, Lc2/i;->o:Ljava/lang/Enum;

    check-cast v1, Lc2/r;

    sget-object v2, Lc2/r;->l:Lc2/r;

    const/16 v3, 0x7fff

    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    if-ne v1, v2, :cond_c

    sget-object v1, Lc2/q;->m:Lc2/q;

    if-ne v0, v1, :cond_a

    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->z(I)I

    move-result p0

    goto :goto_6

    :cond_a
    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->u(I)I

    move-result p0

    :goto_6
    invoke-static {p1, p2}, Lb3/a;->c(J)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {p1, p2}, Lb3/a;->g(J)I

    move-result v3

    :cond_b
    new-instance p1, Lc2/j;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v3, p2}, Lc2/j;-><init>(III)V

    goto :goto_8

    :cond_c
    sget-object v1, Lc2/q;->m:Lc2/q;

    if-ne v0, v1, :cond_d

    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->c(I)I

    move-result p0

    goto :goto_7

    :cond_d
    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result v0

    invoke-interface {p0, v0}, Lc2/q0;->b0(I)I

    move-result p0

    :goto_7
    invoke-static {p1, p2}, Lb3/a;->d(J)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p1, p2}, Lb3/a;->h(J)I

    move-result v3

    :cond_e
    new-instance p1, Lc2/j;

    const/4 p2, 0x0

    invoke-direct {p1, v3, p0, p2}, Lc2/j;-><init>(III)V

    :goto_8
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final G()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lc2/i;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0}, Lc2/q0;->G()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0}, Lc2/q0;->G()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0}, Lc2/q0;->G()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b0(I)I
    .locals 1

    iget v0, p0, Lc2/i;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->b0(I)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->b0(I)I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->b0(I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c(I)I
    .locals 1

    iget v0, p0, Lc2/i;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->c(I)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->c(I)I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->c(I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final u(I)I
    .locals 1

    iget v0, p0, Lc2/i;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->u(I)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->u(I)I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->u(I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final z(I)I
    .locals 1

    iget v0, p0, Lc2/i;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->z(I)I

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->z(I)I

    move-result p0

    return p0

    :pswitch_1
    iget-object p0, p0, Lc2/i;->m:Lc2/q0;

    invoke-interface {p0, p1}, Lc2/q0;->z(I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
