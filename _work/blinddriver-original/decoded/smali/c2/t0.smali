.class public interface abstract Lc2/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/p;


# virtual methods
.method public x(IILjava/util/Map;Li9/c;)Lc2/s0;
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lc2/t0;->y0(IILjava/util/Map;Li9/c;Li9/c;)Lc2/s0;

    move-result-object p0

    return-object p0
.end method

.method public abstract y0(IILjava/util/Map;Li9/c;Li9/c;)Lc2/s0;
.end method
