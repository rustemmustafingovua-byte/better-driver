.class public final Lu6/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ld1/c0;

.field public c:Ld1/c0;

.field public d:I

.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lu6/c;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/Object;
    .locals 0

    iget p0, p0, Lu6/c;->e:I

    packed-switch p0, :pswitch_data_0

    new-array p0, p1, [S

    return-object p0

    :pswitch_0
    new-array p0, p1, [J

    return-object p0

    :pswitch_1
    new-array p0, p1, [I

    return-object p0

    :pswitch_2
    new-array p0, p1, [F

    return-object p0

    :pswitch_3
    new-array p0, p1, [D

    return-object p0

    :pswitch_4
    new-array p0, p1, [B

    return-object p0

    :pswitch_5
    new-array p0, p1, [Z

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    new-instance v0, Ld1/c0;

    invoke-direct {v0, p1, p2}, Ld1/c0;-><init>(ILjava/lang/Object;)V

    iget-object p2, p0, Lu6/c;->b:Ld1/c0;

    if-nez p2, :cond_0

    iput-object v0, p0, Lu6/c;->c:Ld1/c0;

    iput-object v0, p0, Lu6/c;->b:Ld1/c0;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lu6/c;->c:Ld1/c0;

    iget-object v1, p2, Ld1/c0;->d:Ljava/lang/Object;

    check-cast v1, Ld1/c0;

    if-nez v1, :cond_2

    iput-object v0, p2, Ld1/c0;->d:Ljava/lang/Object;

    iput-object v0, p0, Lu6/c;->c:Ld1/c0;

    :goto_0
    iget p2, p0, Lu6/c;->d:I

    add-int/2addr p2, p1

    iput p2, p0, Lu6/c;->d:I

    const/16 p2, 0x4000

    if-ge p1, p2, :cond_1

    add-int/2addr p1, p1

    goto :goto_1

    :cond_1
    shr-int/lit8 p2, p1, 0x2

    add-int/2addr p1, p2

    :goto_1
    invoke-virtual {p0, p1}, Lu6/c;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final c(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lu6/c;->d:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lu6/c;->a(I)Ljava/lang/Object;

    move-result-object v1

    iget-object p0, p0, Lu6/c;->b:Ld1/c0;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-eqz p0, :cond_0

    iget-object v4, p0, Ld1/c0;->c:Ljava/lang/Object;

    iget v5, p0, Ld1/c0;->b:I

    invoke-static {v4, v2, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v5

    iget-object p0, p0, Ld1/c0;->d:Ljava/lang/Object;

    check-cast p0, Ld1/c0;

    goto :goto_0

    :cond_0
    invoke-static {p2, v2, v1, v3, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, p1

    if-ne v3, v0, :cond_1

    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Should have gotten "

    const-string p2, " entries, got "

    invoke-static {p1, v0, p2, v3}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lu6/c;->c:Ld1/c0;

    if-eqz v0, :cond_0

    iget-object v0, v0, Ld1/c0;->c:Ljava/lang/Object;

    iput-object v0, p0, Lu6/c;->a:Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lu6/c;->c:Ld1/c0;

    iput-object v0, p0, Lu6/c;->b:Ld1/c0;

    const/4 v0, 0x0

    iput v0, p0, Lu6/c;->d:I

    iget-object v0, p0, Lu6/c;->a:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lu6/c;->a(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    return-object v0
.end method
