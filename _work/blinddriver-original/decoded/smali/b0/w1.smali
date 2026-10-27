.class public final synthetic Lb0/w1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/a;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Lb0/c2;


# direct methods
.method public synthetic constructor <init>(Lb0/c2;I)V
    .locals 0

    iput p2, p0, Lb0/w1;->l:I

    iput-object p1, p0, Lb0/w1;->m:Lb0/c2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lb0/w1;->l:I

    iget-object p0, p0, Lb0/w1;->m:Lb0/c2;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Lb0/c2;->onCancel()V

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    invoke-interface {p0}, Lb0/c2;->b()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
