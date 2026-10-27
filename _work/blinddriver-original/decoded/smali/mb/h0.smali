.class public final Lmb/h0;
.super Lmb/f0;
.source "SourceFile"


# instance fields
.field public final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhb/c;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/h0;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "import "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    iget-object p0, p0, Lmb/h0;->c:[Ljava/lang/String;

    array-length v2, p0

    invoke-static {v2, v1, p0}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x3b

    invoke-static {v0, p0, v1}, Lr0/i;->l(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/m7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/m7;->K0(Lmb/h0;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
