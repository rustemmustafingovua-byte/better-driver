.class public final Lmb/y5;
.super Lmb/m3;
.source "SourceFile"

# interfaces
.implements Lmb/a4;


# instance fields
.field public final c:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lhb/c;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/y5;->c:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final k(Lmb/b7;)V
    .locals 3

    iget-object p1, p1, Lmb/b7;->m:Lmb/c7;

    iget-object p1, p1, Lmb/c7;->s:Ljava/io/PrintWriter;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "uses "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "."

    iget-object p0, p0, Lmb/y5;->c:[Ljava/lang/String;

    array-length v2, p0

    invoke-static {v2, v1, p0}, La/a;->o(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3b

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method
