.class public final Lmb/b6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmb/t5;


# instance fields
.field public final a:I

.field public final b:Lmb/v4;


# direct methods
.method public constructor <init>(ILmb/v4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    iput p1, p0, Lmb/b6;->a:I

    const/4 p1, 0x0

    iput-object p1, p0, Lmb/b6;->b:Lmb/v4;

    return-void

    :cond_0
    iput p1, p0, Lmb/b6;->a:I

    iput-object p2, p0, Lmb/b6;->b:Lmb/v4;

    return-void
.end method


# virtual methods
.method public final a(Lmb/a5;)V
    .locals 0

    iget-object p0, p0, Lmb/b6;->b:Lmb/v4;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lmb/v4;->a(Lmb/a5;)V

    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lmb/b6;->b:Lmb/v4;

    iget p0, p0, Lmb/b6;->a:I

    if-ne p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "? extends "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "? super "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string p0, "?"

    return-object p0
.end method

.method public final w(Lmb/r7;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lorg/codehaus/janino/util/u0;

    iget-object p1, p1, Lorg/codehaus/janino/util/u0;->m:Lorg/codehaus/janino/util/v0;

    invoke-virtual {p1, p0}, Lorg/codehaus/janino/util/v0;->copyWildcard(Lmb/b6;)Lmb/t5;

    move-result-object p0

    return-object p0
.end method
