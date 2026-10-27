.class public final Lr6/k;
.super Lpc/h;
.source "SourceFile"


# instance fields
.field public final n:[Lr6/m;


# direct methods
.method public constructor <init>(Lpc/h;[Lr6/m;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lr6/k;->n:[Lr6/m;

    return-void
.end method


# virtual methods
.method public final q(Ljava/lang/Class;Lb6/u;)Lpc/h;
    .locals 3

    iget-object v0, p0, Lr6/k;->n:[Lr6/m;

    array-length v1, v0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    return-object p0

    :cond_0
    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lr6/m;

    new-instance v2, Lr6/m;

    invoke-direct {v2, p1, p2}, Lr6/m;-><init>(Ljava/lang/Class;Lb6/u;)V

    aput-object v2, v0, v1

    new-instance p1, Lr6/k;

    invoke-direct {p1, p0, v0}, Lr6/k;-><init>(Lpc/h;[Lr6/m;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Class;)Lb6/u;
    .locals 2

    const/4 v0, 0x0

    iget-object p0, p0, Lr6/k;->n:[Lr6/m;

    aget-object v0, p0, v0

    iget-object v1, v0, Lr6/m;->a:Ljava/lang/Class;

    if-ne v1, p1, :cond_0

    iget-object p0, v0, Lr6/m;->b:Lb6/u;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    aget-object v0, p0, v0

    iget-object v1, v0, Lr6/m;->a:Ljava/lang/Class;

    if-ne v1, p1, :cond_1

    iget-object p0, v0, Lr6/m;->b:Lb6/u;

    return-object p0

    :cond_1
    const/4 v0, 0x2

    aget-object v0, p0, v0

    iget-object v1, v0, Lr6/m;->a:Ljava/lang/Class;

    if-ne v1, p1, :cond_2

    iget-object p0, v0, Lr6/m;->b:Lb6/u;

    return-object p0

    :cond_2
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x7

    aget-object v0, p0, v0

    iget-object v1, v0, Lr6/m;->a:Ljava/lang/Class;

    if-ne v1, p1, :cond_3

    iget-object p0, v0, Lr6/m;->b:Lb6/u;

    return-object p0

    :cond_3
    :pswitch_1
    const/4 v0, 0x6

    aget-object v0, p0, v0

    iget-object v1, v0, Lr6/m;->a:Ljava/lang/Class;

    if-ne v1, p1, :cond_4

    iget-object p0, v0, Lr6/m;->b:Lb6/u;

    return-object p0

    :cond_4
    :pswitch_2
    const/4 v0, 0x5

    aget-object v0, p0, v0

    iget-object v1, v0, Lr6/m;->a:Ljava/lang/Class;

    if-ne v1, p1, :cond_5

    iget-object p0, v0, Lr6/m;->b:Lb6/u;

    return-object p0

    :cond_5
    :pswitch_3
    const/4 v0, 0x4

    aget-object v0, p0, v0

    iget-object v1, v0, Lr6/m;->a:Ljava/lang/Class;

    if-ne v1, p1, :cond_6

    iget-object p0, v0, Lr6/m;->b:Lb6/u;

    return-object p0

    :cond_6
    :pswitch_4
    const/4 v0, 0x3

    aget-object p0, p0, v0

    iget-object v0, p0, Lr6/m;->a:Ljava/lang/Class;

    if-ne v0, p1, :cond_7

    iget-object p0, p0, Lr6/m;->b:Lb6/u;

    return-object p0

    :cond_7
    :goto_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
