.class public final Lmb/o5;
.super Lmb/p5;
.source "SourceFile"


# instance fields
.field public final c:[Lmb/x3;

.field public final d:Lmb/s5;

.field public final e:Lmb/z5;


# direct methods
.method public constructor <init>(Lhb/c;[Lmb/x3;Lmb/s5;Lmb/z5;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/o5;->c:[Lmb/x3;

    iput-object p3, p0, Lmb/o5;->d:Lmb/s5;

    iput-object p4, p0, Lmb/o5;->e:Lmb/z5;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/o5;->c:[Lmb/x3;

    invoke-static {v1}, La/a;->c([Lmb/x3;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lmb/o5;->d:Lmb/s5;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/o5;->e:Lmb/z5;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final x(Lmb/q7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/q7;->w(Lmb/o5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final y(Lmb/r5;)V
    .locals 1

    iget-object v0, p0, Lmb/o5;->d:Lmb/s5;

    invoke-virtual {v0, p1}, Lmb/s5;->a(Lmb/a5;)V

    iget-object p0, p0, Lmb/o5;->e:Lmb/z5;

    iget-object p0, p0, Lmb/z5;->e:Lmb/x0;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lmb/x0;->a(Lmb/a5;)V

    :cond_0
    return-void
.end method
