.class public final Lmb/y;
.super Lmb/v;
.source "SourceFile"


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lmb/x;


# direct methods
.method public synthetic constructor <init>(Lmb/x;I)V
    .locals 0

    iput p2, p0, Lmb/y;->f:I

    iput-object p1, p0, Lmb/y;->g:Lmb/x;

    invoke-direct {p0, p1}, Lmb/t;-><init>(Lmb/x;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Lmb/y;->f:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x4

    return p0

    :pswitch_0
    const/4 p0, 0x4

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final f()[Lmb/x;
    .locals 0

    iget p0, p0, Lmb/y;->f:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    new-array p0, p0, [Lmb/x;

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    new-array p0, p0, [Lmb/x;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()[Lmb/x;
    .locals 0

    iget p0, p0, Lmb/y;->f:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    new-array p0, p0, [Lmb/x;

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    new-array p0, p0, [Lmb/x;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final j()Z
    .locals 0

    iget p0, p0, Lmb/y;->f:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final k()Ljava/lang/String;
    .locals 0

    iget p0, p0, Lmb/y;->f:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "clone"

    return-object p0

    :pswitch_0
    const-string p0, "clone"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Lmb/x;
    .locals 1

    iget v0, p0, Lmb/y;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/y;->g:Lmb/x;

    check-cast p0, Lmb/i6;

    iget-object p0, p0, Lmb/i6;->J:Lmb/b;

    iget-object p0, p0, Lmb/a0;->n:Lmb/x;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/y;->g:Lmb/x;

    check-cast p0, Lmb/z;

    iget-object p0, p0, Lmb/z;->J:Lmb/a0;

    iget-object p0, p0, Lmb/a0;->n:Lmb/x;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m()Z
    .locals 0

    iget p0, p0, Lmb/y;->f:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n()Z
    .locals 0

    iget p0, p0, Lmb/y;->f:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
