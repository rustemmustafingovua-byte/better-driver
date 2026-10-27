.class public final synthetic Ld1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li9/c;


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Li9/c;

.field public final synthetic n:Li9/c;


# direct methods
.method public synthetic constructor <init>(Li9/c;Li9/c;I)V
    .locals 0

    iput p3, p0, Ld1/n;->l:I

    iput-object p1, p0, Ld1/n;->m:Li9/c;

    iput-object p2, p0, Ld1/n;->n:Li9/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Ld1/n;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ld1/n;->m:Li9/c;

    invoke-interface {v0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ld1/n;->n:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    sget-object p0, Lt8/z;->a:Lt8/z;

    return-object p0

    :pswitch_0
    iget-object v0, p0, Ld1/n;->m:Li9/c;

    invoke-interface {v0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Ld1/n;->n:Li9/c;

    invoke-interface {p0, p1}, Li9/c;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
