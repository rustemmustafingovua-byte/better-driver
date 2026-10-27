.class public final Lr6/c;
.super Ls6/n0;
.source "SourceFile"


# instance fields
.field public final synthetic n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lr6/c;->n:I

    .line 2
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    return-void
.end method

.method public synthetic constructor <init>(Lb6/l;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, Lr6/c;->n:I

    invoke-direct {p0, p1}, Ls6/n0;-><init>(Lb6/l;)V

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 1

    iget p0, p0, Lr6/c;->n:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/util/Map$Entry;

    invoke-virtual {p2, p1}, Ls5/g;->o0(Ljava/lang/Object;)V

    const-string p0, "key"

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p3, p0, v0, p2}, Lb6/r0;->T(Ljava/lang/String;Ljava/lang/Object;Ls5/g;)V

    const-string p0, "value"

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p0, p1, p2}, Lb6/r0;->T(Ljava/lang/String;Ljava/lang/Object;Ls5/g;)V

    invoke-virtual {p2}, Ls5/g;->R()V

    return-void

    :pswitch_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p3, Lq6/k;

    iget-object p0, p3, Lq6/k;->C:Ls5/g;

    new-instance p1, Lb6/p;

    const/4 p2, 0x0

    const-string p3, "Null key for a Map not allowed in JSON (use a converting NullKeySerializer?)"

    invoke-direct {p1, p0, p3, p2}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
