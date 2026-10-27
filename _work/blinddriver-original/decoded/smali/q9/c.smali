.class public final Lq9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq9/h;
.implements Lq9/d;


# instance fields
.field public final a:Lq9/h;

.field public final b:I


# direct methods
.method public constructor <init>(Lq9/h;I)V
    .locals 1

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq9/c;->a:Lq9/h;

    iput p2, p0, Lq9/c;->b:I

    if-ltz p2, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "count must be non-negative, but was "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(I)Lq9/h;
    .locals 1

    iget v0, p0, Lq9/c;->b:I

    add-int/2addr v0, p1

    if-gez v0, :cond_0

    new-instance v0, Lq9/c;

    invoke-direct {v0, p0, p1}, Lq9/c;-><init>(Lq9/h;I)V

    return-object v0

    :cond_0
    new-instance p1, Lq9/c;

    iget-object p0, p0, Lq9/c;->a:Lq9/h;

    invoke-direct {p1, p0, v0}, Lq9/c;-><init>(Lq9/h;I)V

    return-object p1
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    new-instance v0, Lq9/b;

    invoke-direct {v0, p0}, Lq9/b;-><init>(Lq9/c;)V

    return-object v0
.end method

.method public final take()Lq9/h;
    .locals 3

    iget v0, p0, Lq9/c;->b:I

    add-int/lit8 v1, v0, 0x28

    if-gez v1, :cond_0

    new-instance v0, Lq9/o;

    invoke-direct {v0, p0}, Lq9/o;-><init>(Lq9/h;)V

    return-object v0

    :cond_0
    new-instance v2, Lq9/n;

    iget-object p0, p0, Lq9/c;->a:Lq9/h;

    invoke-direct {v2, p0, v0, v1}, Lq9/n;-><init>(Lq9/h;II)V

    return-object v2
.end method
