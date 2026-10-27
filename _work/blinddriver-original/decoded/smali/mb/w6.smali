.class public final Lmb/w6;
.super Lmb/v;
.source "SourceFile"


# instance fields
.field public final synthetic f:I

.field public final synthetic g:Lmb/x6;


# direct methods
.method public synthetic constructor <init>(Lmb/x6;I)V
    .locals 0

    iput p2, p0, Lmb/w6;->f:I

    iput-object p1, p0, Lmb/w6;->g:Lmb/x6;

    invoke-direct {p0, p1}, Lmb/t;-><init>(Lmb/x;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 0

    iget p0, p0, Lmb/w6;->f:I

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
    .locals 1

    iget v0, p0, Lmb/w6;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/w6;->g:Lmb/x6;

    iget-object p0, p0, Lmb/x6;->L:Lmb/a7;

    iget-object p0, p0, Lmb/a7;->h:Lmb/b;

    iget-object p0, p0, Lmb/a0;->r:Lmb/x;

    filled-new-array {p0}, [Lmb/x;

    move-result-object p0

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    new-array p0, p0, [Lmb/x;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final h()[Lmb/x;
    .locals 0

    iget p0, p0, Lmb/w6;->f:I

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

    iget p0, p0, Lmb/w6;->f:I

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

    iget p0, p0, Lmb/w6;->f:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "valueOf"

    return-object p0

    :pswitch_0
    const-string p0, "values"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final l()Lmb/x;
    .locals 1

    iget v0, p0, Lmb/w6;->f:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lmb/w6;->g:Lmb/x6;

    iget-object p0, p0, Lmb/x6;->J:Lmb/m0;

    iget-object p0, p0, Lmb/m0;->g:Lmb/x6;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lmb/w6;->g:Lmb/x6;

    iget-object v0, p0, Lmb/x6;->J:Lmb/m0;

    iget-object v0, v0, Lmb/m0;->g:Lmb/x6;

    iget-object p0, p0, Lmb/x6;->L:Lmb/a7;

    iget-object p0, p0, Lmb/a7;->h:Lmb/b;

    invoke-virtual {p0, v0}, Lmb/a0;->b(Lmb/x;)Lmb/x;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final m()Z
    .locals 0

    iget p0, p0, Lmb/w6;->f:I

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

    iget p0, p0, Lmb/w6;->f:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
