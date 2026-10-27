.class public final synthetic Lp/g1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lp/h1;


# direct methods
.method public synthetic constructor <init>(Lp/h1;I)V
    .locals 0

    iput p2, p0, Lp/g1;->l:I

    iput-object p1, p0, Lp/g1;->m:Lp/h1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lp/g1;->l:I

    iget-object p0, p0, Lp/g1;->m:Lp/h1;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lp/h1;->F:Lr0/e1;

    invoke-virtual {p0}, Lr0/e1;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lc2/u;

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    invoke-interface {p0, v0, v1}, Lc2/u;->R(J)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide v0, 0x7fc000007fc00000L    # 2.247117487993712E307

    :goto_0
    new-instance p0, Ll1/b;

    invoke-direct {p0, v0, v1}, Ll1/b;-><init>(J)V

    return-object p0

    :pswitch_0
    iget-wide v0, p0, Lp/h1;->H:J

    new-instance p0, Ll1/b;

    invoke-direct {p0, v0, v1}, Ll1/b;-><init>(J)V

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Lp/h1;->O0()V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
