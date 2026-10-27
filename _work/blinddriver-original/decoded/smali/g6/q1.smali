.class public final Lg6/q1;
.super Lg6/m1;
.source "SourceFile"


# static fields
.field public static final o:Lg6/q1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg6/q1;

    const-class v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lg6/f1;-><init>(Ljava/lang/Class;)V

    sput-object v0, Lg6/q1;->o:Lg6/q1;

    return-void
.end method


# virtual methods
.method public final deserialize(Ls5/k;Lb6/i;)Ljava/lang/Object;
    .locals 1

    sget-object v0, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object v0, Ls5/n;->w:Ls5/n;

    invoke-virtual {p1, v0}, Ls5/k;->q0(Ls5/n;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2, p0}, Lg6/f1;->M(Ls5/k;Lb6/i;Le6/r;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final deserializeWithType(Ls5/k;Lb6/i;Ln6/d;)Ljava/lang/Object;
    .locals 0

    sget-object p3, Ls5/n;->A:Ls5/n;

    invoke-virtual {p1, p3}, Ls5/k;->q0(Ls5/n;)Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-virtual {p1}, Ls5/k;->h0()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p3, Ls5/n;->w:Ls5/n;

    invoke-virtual {p1, p3}, Ls5/k;->q0(Ls5/n;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, p2}, Lg6/f1;->q(Ls5/k;Lb6/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2, p0}, Lg6/f1;->M(Ls5/k;Lb6/i;Le6/r;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 0

    const-string p0, ""

    return-object p0
.end method

.method public final isCachable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final logicalType()Lt6/f;
    .locals 0

    sget-object p0, Lt6/f;->u:Lt6/f;

    return-object p0
.end method
