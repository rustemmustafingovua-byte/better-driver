.class public final Lq9/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/h;
.implements Lq9/d;


# instance fields
.field public final a:Lq9/h;

.field public final b:I

.field public final c:I


# direct methods
.method public constructor <init>(Lq9/h;II)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/n;->a:Lq9/h;

    iput p2, p0, Lq9/n;->b:I

    iput p3, p0, Lq9/n;->c:I

    if-ltz p2, :cond_2

    if-ltz p3, :cond_1

    if-lt p3, p2, :cond_0

    return-void

    :cond_0
    const-string p0, "endIndex should be not less than startIndex, but was "

    const-string p1, " < "

    invoke-static {p0, p3, p1, p2}, Lr0/i;->g(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "endIndex should be non-negative, but is "

    invoke-static {p3, p0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "startIndex should be non-negative, but is "

    invoke-static {p2, p0}, Lr0/i;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Lq9/h;
    .locals 3

    iget v0, p0, Lq9/n;->c:I

    iget v1, p0, Lq9/n;->b:I

    sub-int v2, v0, v1

    if-lt p1, v2, :cond_0

    sget-object p0, Lq9/e;->a:Lq9/e;

    return-object p0

    :cond_0
    new-instance v2, Lq9/n;

    iget-object p0, p0, Lq9/n;->a:Lq9/h;

    add-int/2addr v1, p1

    invoke-direct {v2, p0, v1, v0}, Lq9/n;-><init>(Lq9/h;II)V

    return-object v2
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lk/k0;

    invoke-direct {v0, p0}, Lk/k0;-><init>(Lq9/n;)V

    return-object v0
.end method

.method public final take()Lq9/h;
    .locals 3

    iget v0, p0, Lq9/n;->c:I

    iget v1, p0, Lq9/n;->b:I

    sub-int/2addr v0, v1

    const/16 v2, 0x28

    if-lt v2, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lq9/n;

    add-int/lit8 v2, v1, 0x28

    iget-object p0, p0, Lq9/n;->a:Lq9/h;

    invoke-direct {v0, p0, v1, v2}, Lq9/n;-><init>(Lq9/h;II)V

    return-object v0
.end method
