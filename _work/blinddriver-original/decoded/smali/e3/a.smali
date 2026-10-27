.class public final synthetic Le3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/a;


# direct methods
.method public synthetic constructor <init>(Li9/a;I)V
    .locals 0

    iput p2, p0, Le3/a;->l:I

    iput-object p1, p0, Le3/a;->m:Li9/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, Le3/a;->l:I

    iget-object p0, p0, Le3/a;->m:Li9/a;

    packed-switch v0, :pswitch_data_0

    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_0
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_1
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_2
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_3
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void

    :pswitch_4
    invoke-interface {p0}, Li9/a;->invoke()Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
