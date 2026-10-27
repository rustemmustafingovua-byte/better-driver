.class public final Lw0/l;
.super Lw0/k;
.source "SourceFile"


# instance fields
.field public final synthetic o:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lw0/l;->o:I

    invoke-direct {p0}, Lw0/k;-><init>()V

    return-void
.end method


# virtual methods
.method public final next()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lw0/l;->o:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Lw0/k;->n:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lw0/k;->n:I

    iget-object p0, p0, Lw0/k;->l:[Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    return-object p0

    :pswitch_0
    iget v0, p0, Lw0/k;->n:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lw0/k;->n:I

    iget-object p0, p0, Lw0/k;->l:[Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0

    :pswitch_1
    iget v0, p0, Lw0/k;->n:I

    add-int/lit8 v1, v0, 0x2

    iput v1, p0, Lw0/k;->n:I

    new-instance v1, Lk/t;

    iget-object p0, p0, Lw0/k;->l:[Ljava/lang/Object;

    aget-object v2, p0, v0

    add-int/lit8 v0, v0, 0x1

    aget-object p0, p0, v0

    const/4 v0, 0x1

    invoke-direct {v1, v0, v2, p0}, Lk/t;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
