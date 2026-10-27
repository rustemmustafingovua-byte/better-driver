.class public final Lf2/u;
.super Lj9/o;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:I


# direct methods
.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Lf2/u;->l:I

    iput p1, p0, Lf2/u;->m:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lj9/o;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lf2/u;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lk1/b0;

    iget p0, p0, Lf2/u;->m:I

    invoke-virtual {p1, p0}, Lk1/b0;->M0(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Lk1/b0;

    iget p0, p0, Lf2/u;->m:I

    invoke-virtual {p1, p0}, Lk1/b0;->T0(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Lk1/b0;

    iget p0, p0, Lf2/u;->m:I

    invoke-virtual {p1, p0}, Lk1/b0;->T0(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, Lk1/b0;

    iget p0, p0, Lf2/u;->m:I

    invoke-virtual {p1, p0}, Lk1/b0;->T0(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, Lk1/b0;

    iget p0, p0, Lf2/u;->m:I

    invoke-virtual {p1, p0}, Lk1/b0;->T0(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
