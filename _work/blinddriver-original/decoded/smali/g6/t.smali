.class public final Lg6/t;
.super Lg6/v;
.source "SourceFile"


# virtual methods
.method public final Z(Lb6/i;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p1}, Ls5/k;->o0()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1, p2}, Lg6/v;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    return-object p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->u:Lt6/f;

    return-object p0
.end method
