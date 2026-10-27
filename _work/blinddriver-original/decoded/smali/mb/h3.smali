.class public final Lmb/h3;
.super Lmb/n3;
.source "SourceFile"


# instance fields
.field public final f:Lmb/g3;


# direct methods
.method public constructor <init>(Lhb/c;Lmb/g3;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/y4;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/h3;->f:Lmb/g3;

    return-void
.end method


# virtual methods
.method public final F(Lmb/n7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/n7;->z(Lmb/h3;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmb/h3;->f:Lmb/g3;

    iget-object p0, p0, Lmb/g3;->c:Lmb/j3;

    if-eqz p0, :cond_1

    iget-object p0, p0, Lmb/j3;->b:Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "unnamed_lv"

    return-object p0

    :cond_1
    const-string p0, "???"

    return-object p0
.end method
