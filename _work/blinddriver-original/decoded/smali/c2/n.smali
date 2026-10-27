.class public final Lc2/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final b:Lc2/m;

.field public final c:Lc2/m;

.field public final d:Lc2/m;

.field public final e:Lc2/m;

.field public final f:Ljava/io/Serializable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, Lc2/n;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/n;->f:Ljava/io/Serializable;

    .line 2
    new-instance p1, Lc2/m;

    const/4 v1, 0x0

    .line 3
    invoke-direct {p1, v0, v1}, Lc2/m;-><init>(ILi9/e;)V

    .line 4
    iput-object p1, p0, Lc2/n;->b:Lc2/m;

    .line 5
    new-instance p1, Lc2/m;

    const/4 v0, 0x0

    .line 6
    invoke-direct {p1, v0, v1}, Lc2/m;-><init>(ILi9/e;)V

    .line 7
    iput-object p1, p0, Lc2/n;->c:Lc2/m;

    .line 8
    new-instance p1, Lc2/m;

    const/4 v0, 0x1

    .line 9
    invoke-direct {p1, v0, v1}, Lc2/m;-><init>(ILi9/e;)V

    .line 10
    iput-object p1, p0, Lc2/n;->d:Lc2/m;

    .line 11
    new-instance p1, Lc2/m;

    const/4 v0, 0x0

    .line 12
    invoke-direct {p1, v0, v1}, Lc2/m;-><init>(ILi9/e;)V

    .line 13
    iput-object p1, p0, Lc2/n;->e:Lc2/m;

    return-void
.end method

.method public constructor <init>([Lc2/n;)V
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lc2/n;->a:I

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/n;->f:Ljava/io/Serializable;

    .line 15
    array-length p1, p1

    new-array v0, p1, [Lc2/m;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_0

    iget-object v3, p0, Lc2/n;->f:Ljava/io/Serializable;

    check-cast v3, [Lc2/n;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lc2/n;->b()Lc2/m;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lc2/w1;

    const/4 v2, 0x0

    invoke-direct {p1, v0, v2}, Lc2/w1;-><init>([Lc2/m;I)V

    .line 17
    new-instance v0, Lc2/m;

    const/4 v2, 0x1

    .line 18
    invoke-direct {v0, v2, p1}, Lc2/m;-><init>(ILi9/e;)V

    .line 19
    iput-object v0, p0, Lc2/n;->b:Lc2/m;

    .line 20
    iget-object p1, p0, Lc2/n;->f:Ljava/io/Serializable;

    check-cast p1, [Lc2/n;

    array-length p1, p1

    new-array v0, p1, [Lc2/m;

    move v2, v1

    :goto_1
    if-ge v2, p1, :cond_1

    iget-object v3, p0, Lc2/n;->f:Ljava/io/Serializable;

    check-cast v3, [Lc2/n;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lc2/n;->d()Lc2/m;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 21
    :cond_1
    new-instance p1, Lc2/m;

    new-instance v2, Lc2/l;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lc2/l;-><init>([Lc2/m;I)V

    const/4 v0, 0x0

    .line 22
    invoke-direct {p1, v0, v2}, Lc2/m;-><init>(ILi9/e;)V

    .line 23
    iput-object p1, p0, Lc2/n;->c:Lc2/m;

    .line 24
    iget-object p1, p0, Lc2/n;->f:Ljava/io/Serializable;

    check-cast p1, [Lc2/n;

    array-length p1, p1

    new-array v0, p1, [Lc2/m;

    move v2, v1

    :goto_2
    if-ge v2, p1, :cond_2

    iget-object v3, p0, Lc2/n;->f:Ljava/io/Serializable;

    check-cast v3, [Lc2/n;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Lc2/n;->c()Lc2/m;

    move-result-object v3

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 25
    :cond_2
    new-instance p1, Lc2/w1;

    const/4 v2, 0x1

    invoke-direct {p1, v0, v2}, Lc2/w1;-><init>([Lc2/m;I)V

    .line 26
    new-instance v0, Lc2/m;

    .line 27
    invoke-direct {v0, v2, p1}, Lc2/m;-><init>(ILi9/e;)V

    .line 28
    iput-object v0, p0, Lc2/n;->d:Lc2/m;

    .line 29
    iget-object p1, p0, Lc2/n;->f:Ljava/io/Serializable;

    check-cast p1, [Lc2/n;

    array-length p1, p1

    new-array v0, p1, [Lc2/m;

    :goto_3
    if-ge v1, p1, :cond_3

    iget-object v2, p0, Lc2/n;->f:Ljava/io/Serializable;

    check-cast v2, [Lc2/n;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lc2/n;->a()Lc2/m;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 30
    :cond_3
    new-instance p1, Lc2/m;

    new-instance v1, Lc2/l;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lc2/l;-><init>([Lc2/m;I)V

    const/4 v0, 0x0

    .line 31
    invoke-direct {p1, v0, v1}, Lc2/m;-><init>(ILi9/e;)V

    .line 32
    iput-object p1, p0, Lc2/n;->e:Lc2/m;

    return-void
.end method


# virtual methods
.method public final a()Lc2/m;
    .locals 1

    iget v0, p0, Lc2/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc2/n;->e:Lc2/m;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lc2/n;->e:Lc2/m;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lc2/m;
    .locals 1

    iget v0, p0, Lc2/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc2/n;->b:Lc2/m;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lc2/n;->b:Lc2/m;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Lc2/m;
    .locals 1

    iget v0, p0, Lc2/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc2/n;->d:Lc2/m;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lc2/n;->d:Lc2/m;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final d()Lc2/m;
    .locals 1

    iget v0, p0, Lc2/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lc2/n;->c:Lc2/m;

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lc2/n;->c:Lc2/m;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lc2/n;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lc2/n;->f:Ljava/io/Serializable;

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string p0, "RectRulers("

    const/16 v1, 0x29

    invoke-static {v1, p0, v0}, La6/q;->g(CLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lc2/n;->f:Ljava/io/Serializable;

    check-cast p0, [Lc2/n;

    const/4 v0, 0x0

    const/16 v1, 0x39

    invoke-static {v1, v0, p0}, Lu8/l;->y0(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
