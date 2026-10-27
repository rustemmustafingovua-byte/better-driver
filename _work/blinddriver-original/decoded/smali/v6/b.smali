.class public final Lv6/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public l:Lv6/a;

.field public final synthetic m:I


# direct methods
.method public constructor <init>(Lv6/a;I)V
    .locals 0

    iput p2, p0, Lv6/b;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lv6/b;->l:Lv6/a;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lv6/b;->l:Lv6/a;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Lv6/b;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lv6/b;->l:Lv6/a;

    iget v1, p0, Lv6/b;->m:I

    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lv6/b;->l:Lv6/a;

    check-cast v1, Lv6/l;

    iget-object v1, v1, Lv6/l;->m:Lv6/l;

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lv6/b;->l:Lv6/a;

    check-cast v1, Lv6/l;

    iget-object v1, v1, Lv6/l;->n:Lv6/l;

    :goto_0
    iput-object v1, p0, Lv6/b;->l:Lv6/a;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
