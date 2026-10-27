.class public final Lqa/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lpa/p;

.field public final b:Ljava/util/ArrayList;

.field public final c:I

.field public final d:Lk4/h;

.field public final e:Lg7/c;

.field public final f:I

.field public final g:I

.field public final h:I

.field public i:I


# direct methods
.method public constructor <init>(Lpa/p;Ljava/util/ArrayList;ILk4/h;Lg7/c;III)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqa/f;->a:Lpa/p;

    iput-object p2, p0, Lqa/f;->b:Ljava/util/ArrayList;

    iput p3, p0, Lqa/f;->c:I

    iput-object p4, p0, Lqa/f;->d:Lk4/h;

    iput-object p5, p0, Lqa/f;->e:Lg7/c;

    iput p6, p0, Lqa/f;->f:I

    iput p7, p0, Lqa/f;->g:I

    iput p8, p0, Lqa/f;->h:I

    return-void
.end method

.method public static a(Lqa/f;ILk4/h;Lg7/c;I)Lqa/f;
    .locals 9

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    iget p1, p0, Lqa/f;->c:I

    :cond_0
    move v3, p1

    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    iget-object p2, p0, Lqa/f;->d:Lk4/h;

    :cond_1
    move-object v4, p2

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_2

    iget-object p3, p0, Lqa/f;->e:Lg7/c;

    :cond_2
    move-object v5, p3

    iget v6, p0, Lqa/f;->f:I

    iget v7, p0, Lqa/f;->g:I

    iget v8, p0, Lqa/f;->h:I

    const-string p1, "request"

    invoke-static {v5, p1}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lqa/f;

    iget-object v1, p0, Lqa/f;->a:Lpa/p;

    iget-object v2, p0, Lqa/f;->b:Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v8}, Lqa/f;-><init>(Lpa/p;Ljava/util/ArrayList;ILk4/h;Lg7/c;III)V

    return-object v0
.end method


# virtual methods
.method public final b(Lg7/c;)Lla/c0;
    .locals 9

    const-string v0, "request"

    invoke-static {p1, v0}, Lj9/n;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lqa/f;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lqa/f;->c:I

    if-ge v2, v1, :cond_6

    iget v1, p0, Lqa/f;->i:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, p0, Lqa/f;->i:I

    const-string v1, " must call proceed() exactly once"

    iget-object v4, p0, Lqa/f;->d:Lk4/h;

    const-string v5, "network interceptor "

    if-eqz v4, :cond_2

    iget-object v6, v4, Lk4/h;->c:Ljava/lang/Object;

    check-cast v6, Lpa/h;

    invoke-interface {v6}, Lpa/h;->b()Lpa/w;

    move-result-object v6

    iget-object v7, p1, Lg7/c;->c:Ljava/lang/Object;

    check-cast v7, Lla/r;

    invoke-interface {v6, v7}, Lpa/w;->c(Lla/r;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lqa/f;->i:I

    if-ne v6, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sub-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must retain the same host and port"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    add-int/lit8 v6, v2, 0x1

    const/4 v7, 0x0

    const/16 v8, 0x3a

    invoke-static {p0, v6, v7, p1, v8}, Lqa/f;->a(Lqa/f;ILk4/h;Lg7/c;I)Lqa/f;

    move-result-object p0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lla/s;

    invoke-interface {p1, p0}, Lla/s;->a(Lqa/f;)Lla/c0;

    move-result-object v2

    if-eqz v2, :cond_5

    if-eqz v4, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v6, v0, :cond_4

    iget p0, p0, Lqa/f;->i:I

    if-ne p0, v3, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-object v2

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "interceptor "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " returned null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Check failed."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
