.class public final Lic/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/ArrayList;

.field public b:Lic/a;

.field public c:D

.field public d:D

.field public e:[Lic/c;

.field public f:Lg5/e;

.field public g:Lpb/p;


# virtual methods
.method public final a(Lic/c;)Z
    .locals 3

    iget-object p0, p0, Lic/b;->e:[Lic/c;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    invoke-virtual {p1, v1}, Lic/c;->a(Lic/c;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    aget-object v1, p0, v2

    invoke-virtual {p1, v1}, Lic/c;->a(Lic/c;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    const/4 v1, 0x2

    aget-object p0, p0, v1

    invoke-virtual {p1, p0}, Lic/c;->a(Lic/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v0
.end method
