.class public final Lcom/carrotsearch/hppc/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo5/c;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/carrotsearch/hppc/j0;


# direct methods
.method public synthetic constructor <init>(Lcom/carrotsearch/hppc/j0;I)V
    .locals 0

    iput p2, p0, Lcom/carrotsearch/hppc/a;->a:I

    iput-object p1, p0, Lcom/carrotsearch/hppc/a;->b:Lcom/carrotsearch/hppc/j0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .locals 1

    iget v0, p0, Lcom/carrotsearch/hppc/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lcom/carrotsearch/hppc/a;->b:Lcom/carrotsearch/hppc/j0;

    invoke-interface {p0, p1}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    iget-object p0, p0, Lcom/carrotsearch/hppc/a;->b:Lcom/carrotsearch/hppc/j0;

    invoke-interface {p0, p1}, Lcom/carrotsearch/hppc/z;->contains(I)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
