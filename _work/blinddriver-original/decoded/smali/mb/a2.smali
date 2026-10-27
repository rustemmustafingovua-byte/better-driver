.class public final Lmb/a2;
.super Lmb/m3;
.source "SourceFile"

# interfaces
.implements Lmb/z1;


# instance fields
.field public final c:[Lmb/z1;


# direct methods
.method public constructor <init>([Lmb/z1;Lhb/c;)V
    .locals 0

    invoke-direct {p0, p2}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p1, p0, Lmb/a2;->c:[Lmb/z1;

    return-void
.end method


# virtual methods
.method public final a(Lmb/a5;)V
    .locals 3

    iget-object p0, p0, Lmb/a2;->c:[Lmb/z1;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-interface {v2, p1}, Lmb/z1;->a(Lmb/a5;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Lmb/j7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/j7;->u0(Lmb/a2;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object p0, p0, Lmb/a2;->c:[Lmb/z1;

    array-length v0, p0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "{ "

    if-eq v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", ... }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object p0, p0, v2

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "{}"

    return-object p0
.end method
