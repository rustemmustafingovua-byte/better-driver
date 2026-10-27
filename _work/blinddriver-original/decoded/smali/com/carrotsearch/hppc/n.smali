.class public final Lcom/carrotsearch/hppc/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/carrotsearch/hppc/u;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/carrotsearch/hppc/n;->l:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final clone()Lcom/carrotsearch/hppc/u;
    .locals 1

    .line 1
    iget v0, p0, Lcom/carrotsearch/hppc/n;->l:I

    return-object p0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 2
    iget v0, p0, Lcom/carrotsearch/hppc/n;->l:I

    return-object p0
.end method

.method public final e(I)I
    .locals 0

    iget p0, p0, Lcom/carrotsearch/hppc/n;->l:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    invoke-static {p1}, Lcom/carrotsearch/hppc/t;->e(I)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
