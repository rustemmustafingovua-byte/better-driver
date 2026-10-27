.class public final Lg6/r1;
.super Lg6/f1;
.source "SourceFile"

# interfaces
.implements Le6/s;


# instance fields
.field public o:Lb6/n;


# direct methods
.method public static Z(Lb6/q;)Ljava/lang/ThreadGroup;
    .locals 1

    invoke-virtual {p0}, Lb6/q;->D()Lb6/q;

    move-result-object p0

    invoke-virtual {p0}, Lb6/q;->q()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    new-instance v0, Ljava/lang/ThreadGroup;

    invoke-direct {v0, p0}, Ljava/lang/ThreadGroup;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final b(Lb6/i;)V
    .locals 1

    const-class v0, Lb6/q;

    invoke-virtual {p1, v0}, Lb6/i;->O(Ljava/lang/Class;)Lb6/l;

    move-result-object v0

    invoke-virtual {p1, v0}, Lb6/i;->Y(Lb6/l;)Lb6/n;

    move-result-object p1

    iput-object p1, p0, Lg6/r1;->o:Lb6/n;

    return-void
.end method

.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lg6/r1;->o:Lb6/n;

    invoke-virtual {p0, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/q;

    .line 2
    invoke-static {p0}, Lg6/r1;->Z(Lb6/q;)Ljava/lang/ThreadGroup;

    move-result-object p0

    return-object p0
.end method

.method public final deserialize(Ls5/k;Lb6/i;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    iget-object p3, p0, Lg6/r1;->o:Lb6/n;

    invoke-virtual {p3, p1, p2}, Lb6/n;->deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb6/q;

    .line 4
    invoke-virtual {p2, p0}, Lb6/i;->a0(Lb6/n;)V

    .line 5
    invoke-static {p1}, Lg6/r1;->Z(Lb6/q;)Ljava/lang/ThreadGroup;

    move-result-object p0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lg6/r1;->o:Lb6/n;

    invoke-virtual {p0, p1, p2, p3}, Lb6/n;->deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lb6/q;

    invoke-static {p0}, Lg6/r1;->Z(Lb6/q;)Ljava/lang/ThreadGroup;

    move-result-object p0

    return-object p0
.end method
