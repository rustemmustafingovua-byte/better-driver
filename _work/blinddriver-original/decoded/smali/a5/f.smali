.class public final synthetic La5/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:La5/g;


# direct methods
.method public synthetic constructor <init>(La5/g;I)V
    .locals 0

    iput p2, p0, La5/f;->l:I

    iput-object p1, p0, La5/f;->m:La5/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget v0, p0, La5/f;->l:I

    iget-object p0, p0, La5/f;->m:La5/g;

    packed-switch v0, :pswitch_data_0

    invoke-static {p0}, La5/g;->b(La5/g;)V

    return-void

    :pswitch_0
    invoke-static {p0}, La5/g;->a(La5/g;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
