.class public final Lmb/l1;
.super Lmb/m3;
.source "SourceFile"

# interfaces
.implements Lmb/a5;


# instance fields
.field public final c:Lmb/m1;

.field public final d:Lmb/f1;

.field public e:Lmb/r5;

.field public f:Z


# direct methods
.method public constructor <init>(Lhb/c;Lmb/m1;Lmb/f1;)V
    .locals 2

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/l1;->c:Lmb/m1;

    iget-object p1, p2, Lmb/m1;->d:[Lmb/s5;

    array-length p2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lmb/s5;->a(Lmb/a5;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lmb/l1;->d:Lmb/f1;

    invoke-interface {p3, p0}, Lmb/f1;->a(Lmb/a5;)V

    return-void
.end method


# virtual methods
.method public final b()Lmb/a5;
    .locals 0

    iget-object p0, p0, Lmb/l1;->e:Lmb/r5;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "catch ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmb/l1;->c:Lmb/m1;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/l1;->d:Lmb/f1;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
