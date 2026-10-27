.class public abstract Lg6/m1;
.super Lg6/f1;
.source "SourceFile"


# virtual methods
.method public deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2, p0}, Lb6/i;->a0(Lb6/n;)V

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p3, p1, p2}, Ln6/d;->e(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->m:Lu6/a;

    return-object p0
.end method

.method public getNullAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->l:Lu6/a;

    return-object p0
.end method

.method public logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->x:Lt6/f;

    return-object p0
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method
