.class public final synthetic Lm0/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lr0/r2;


# direct methods
.method public synthetic constructor <init>(Lr0/r2;I)V
    .locals 0

    iput p2, p0, Lm0/w0;->l:I

    iput-object p1, p0, Lm0/w0;->m:Lr0/r2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Lm0/w0;->l:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object p0, p0, Lm0/w0;->m:Lr0/r2;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    cmpl-float p0, p0, v2

    if-lez p0, :cond_0

    move v1, v3

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    cmpl-float p0, p0, v2

    if-lez p0, :cond_1

    move v1, v3

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object v0, Lsc/i0;->a:Lsc/i0;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    xor-int/2addr p0, v3

    invoke-static {p0}, Lsc/i0;->y(Z)V

    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_2
    sget-object v0, Lm0/x0;->a:Ln/m;

    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    iget-wide v0, p0, Ll1/b;->a:J

    new-instance p0, Ll1/b;

    invoke-direct {p0, v0, v1}, Ll1/b;-><init>(J)V

    return-object p0

    :pswitch_3
    invoke-interface {p0}, Lr0/r2;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ll1/b;

    iget-wide v0, p0, Ll1/b;->a:J

    new-instance p0, Ll1/b;

    invoke-direct {p0, v0, v1}, Ll1/b;-><init>(J)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
