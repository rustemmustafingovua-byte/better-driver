.class public final Lr6/r;
.super Ls6/n0;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field public final o:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Lb6/l;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, Lr6/r;->n:I

    .line 1
    const-class p1, Ljava/lang/Object;

    invoke-direct {p0, p1}, Ls6/n0;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p2, p0, Lr6/r;->o:Ljava/io/Serializable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;La6/n;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lr6/r;->n:I

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Ls6/n0;-><init>(ILjava/lang/Class;)V

    .line 4
    iput-object p2, p0, Lr6/r;->o:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final serialize(Ljava/lang/Object;Ls5/g;Lb6/r0;)V
    .locals 2

    iget v0, p0, Lr6/r;->n:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lb6/q0;->z:Lb6/q0;

    iget-object v1, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {v1, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/lang/Enum;

    sget-object v0, Lb6/q0;->B:Lb6/q0;

    iget-object p3, p3, Lb6/r0;->o:Lb6/p0;

    invoke-virtual {p3, v0}, Lb6/p0;->t(Lb6/q0;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ls5/g;->S(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lr6/r;->o:Ljava/io/Serializable;

    check-cast p0, La6/n;

    iget-object p0, p0, La6/n;->n:Ljava/lang/Object;

    check-cast p0, [Ls5/q;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p0, p0, p1

    invoke-virtual {p2, p0}, Ls5/g;->T(Ls5/q;)V

    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Lr6/r;->o:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p3, p0}, Lb6/r0;->G(Ljava/lang/String;)Ljava/lang/Object;

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
