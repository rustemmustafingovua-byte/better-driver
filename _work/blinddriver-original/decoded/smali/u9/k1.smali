.class public final Lu9/k1;
.super Lz9/q;
.source "SourceFile"


# instance fields
.field public final synthetic p:I


# direct methods
.method public synthetic constructor <init>(Ly8/h;Ly8/c;I)V
    .locals 0

    iput p3, p0, Lu9/k1;->p:I

    invoke-direct {p0, p2, p1}, Lz9/q;-><init>(Ly8/c;Ly8/h;)V

    return-void
.end method


# virtual methods
.method public final z(Ljava/lang/Throwable;)Z
    .locals 1

    iget v0, p0, Lu9/k1;->p:I

    packed-switch v0, :pswitch_data_0

    instance-of v0, p1, Ly9/k;

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lu9/c1;->s(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
