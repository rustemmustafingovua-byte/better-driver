.class public abstract Lmb/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/u;


# instance fields
.field public final synthetic a:Lmb/x;


# direct methods
.method public constructor <init>(Lmb/x;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmb/s;->a:Lmb/x;

    return-void
.end method


# virtual methods
.method public final a()Lmb/x;
    .locals 0

    iget-object p0, p0, Lmb/s;->a:Lmb/x;

    return-object p0
.end method

.method public abstract c()Ljava/lang/Object;
.end method

.method public abstract d()Ljava/lang/String;
.end method

.method public abstract e()Lmb/x;
.end method

.method public abstract f()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lmb/s;->a:Lmb/x;

    invoke-virtual {v1}, Lmb/x;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lmb/s;->d()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
