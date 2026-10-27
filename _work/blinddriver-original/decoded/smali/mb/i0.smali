.class public final Lmb/i0;
.super Lmb/f0;
.source "SourceFile"


# instance fields
.field public final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhb/c;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/i0;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "import static "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    iget-object p0, p0, Lmb/i0;->c:[Ljava/lang/String;

    array-length v2, p0

    invoke-static {v2, v1, p0}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ".*;"

    invoke-static {v0, p0, v1}, Lm/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/m7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/m7;->o0(Lmb/i0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
