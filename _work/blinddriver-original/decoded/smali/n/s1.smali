.class public interface abstract Ln/s1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/t1;


# virtual methods
.method public b(Ln/p;Ln/p;Ln/p;)J
    .locals 0

    invoke-interface {p0}, Ln/s1;->o()I

    move-result p1

    invoke-interface {p0}, Ln/s1;->r()I

    move-result p0

    add-int/2addr p0, p1

    int-to-long p0, p0

    const-wide/32 p2, 0xf4240

    mul-long/2addr p0, p2

    return-wide p0
.end method

.method public abstract o()I
.end method

.method public abstract r()I
.end method
