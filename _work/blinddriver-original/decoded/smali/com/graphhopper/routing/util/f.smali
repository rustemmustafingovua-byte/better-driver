.class public final synthetic Lcom/graphhopper/routing/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Predicate;


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/graphhopper/routing/ev/EncodedValue;

    invoke-static {p1}, Lcom/graphhopper/routing/util/EncodingManager;->e(Lcom/graphhopper/routing/ev/EncodedValue;)Z

    move-result p0

    return p0
.end method
