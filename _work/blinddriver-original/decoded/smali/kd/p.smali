.class public final synthetic Lkd/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/a;


# direct methods
.method public synthetic constructor <init>(Li9/a;I)V
    .locals 0

    iput p2, p0, Lkd/p;->l:I

    iput-object p1, p0, Lkd/p;->m:Li9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lkd/p;->l:I

    iget-object p0, p0, Lkd/p;->m:Li9/a;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_1
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_5
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    :pswitch_6
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    move p0, v0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p0, v0

    if-lez v1, :cond_1

    move p0, v0

    :cond_1
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :pswitch_7
    :try_start_0
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object p0, Lu8/r;->l:Lu8/r;

    :goto_1
    return-object p0

    :pswitch_8
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
