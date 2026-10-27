.class public final Lmb/r5;
.super Lmb/e5;
.source "SourceFile"


# instance fields
.field public final e:Ljava/util/List;

.field public final f:Lmb/f1;

.field public final g:Ljava/util/List;

.field public final h:Lmb/e1;


# direct methods
.method public constructor <init>(Lhb/c;Ljava/util/List;Lmb/f1;Ljava/util/List;Lmb/e1;)V
    .locals 0

    invoke-direct {p0, p1}, Lmb/m3;-><init>(Lhb/c;)V

    iput-object p2, p0, Lmb/r5;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmb/p5;

    invoke-virtual {p2, p0}, Lmb/p5;->y(Lmb/r5;)V

    goto :goto_0

    :cond_0
    iput-object p3, p0, Lmb/r5;->f:Lmb/f1;

    invoke-interface {p3, p0}, Lmb/f1;->a(Lmb/a5;)V

    iput-object p4, p0, Lmb/r5;->g:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lmb/l1;

    iget-object p3, p2, Lmb/l1;->e:Lmb/r5;

    if-eqz p3, :cond_2

    if-ne p0, p3, :cond_1

    goto :goto_2

    :cond_1
    new-instance p0, Lhb/b;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Enclosing TRY statement already set for catch clause "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lmb/l1;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " at "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lmb/m3;->a:Lhb/c;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_2
    iput-object p0, p2, Lmb/l1;->e:Lmb/r5;

    goto :goto_1

    :cond_3
    iput-object p5, p0, Lmb/r5;->h:Lmb/e1;

    if-eqz p5, :cond_4

    invoke-virtual {p5, p0}, Lmb/e5;->a(Lmb/a5;)V

    :cond_4
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "try ... "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmb/r5;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lmb/r5;->h:Lmb/e1;

    if-nez p0, :cond_0

    const-string p0, " catches"

    goto :goto_0

    :cond_0
    const-string p0, " catches ... finally"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final u(Lmb/h7;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0}, Lmb/h7;->Z(Lmb/r5;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
