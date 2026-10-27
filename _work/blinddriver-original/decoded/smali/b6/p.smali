.class public Lb6/p;
.super Ls5/l;
.source "SourceFile"


# static fields
.field public static final synthetic o:I


# instance fields
.field public m:Ljava/util/LinkedList;

.field public transient n:Ljava/io/Closeable;


# direct methods
.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lb6/p;->n:Ljava/io/Closeable;

    .line 3
    instance-of p2, p1, Ls5/k;

    if-eqz p2, :cond_0

    .line 4
    check-cast p1, Ls5/k;

    invoke-virtual {p1}, Ls5/k;->y()Ls5/h;

    move-result-object p1

    iput-object p1, p0, Ls5/l;->l:Ls5/h;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p2, v0, p3}, Ls5/l;-><init>(Ljava/lang/String;Ls5/h;Ljava/lang/Throwable;)V

    .line 6
    iput-object p1, p0, Lb6/p;->n:Ljava/io/Closeable;

    .line 7
    instance-of p2, p3, Ls5/l;

    if-eqz p2, :cond_0

    .line 8
    check-cast p3, Ls5/l;

    .line 9
    iget-object p1, p3, Ls5/l;->l:Ls5/h;

    .line 10
    iput-object p1, p0, Ls5/l;->l:Ls5/h;

    return-void

    .line 11
    :cond_0
    instance-of p2, p1, Ls5/k;

    if-eqz p2, :cond_1

    .line 12
    check-cast p1, Ls5/k;

    invoke-virtual {p1}, Ls5/k;->y()Ls5/h;

    move-result-object p1

    iput-object p1, p0, Ls5/l;->l:Ls5/h;

    :cond_1
    return-void
.end method

.method public static e(Ljava/io/IOException;)Lb6/p;
    .locals 4

    new-instance v0, Lb6/p;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "Unexpected IOException (of type "

    const-string v3, "): "

    invoke-static {v2, v1, v3, p0}, Lm/a;->l(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static i(Ljava/lang/Throwable;Lb6/o;)Lb6/p;
    .locals 3

    instance-of v0, p0, Lb6/p;

    if-eqz v0, :cond_0

    check-cast p0, Lb6/p;

    goto :goto_1

    :cond_0
    invoke-static {p0}, Lu6/h;->i(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "(was "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    instance-of v1, p0, Ls5/l;

    if-eqz v1, :cond_3

    move-object v1, p0

    check-cast v1, Ls5/l;

    invoke-virtual {v1}, Ls5/l;->c()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Ljava/io/Closeable;

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    new-instance v2, Lb6/p;

    invoke-direct {v2, v1, v0, p0}, Lb6/p;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object p0, v2

    :goto_1
    invoke-virtual {p0, p1}, Lb6/p;->f(Lb6/o;)V

    return-object p0
.end method

.method public static j(Ljava/lang/Throwable;Ljava/lang/Object;I)Lb6/p;
    .locals 1

    new-instance v0, Lb6/o;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lb6/o;->l:Ljava/lang/Object;

    iput p2, v0, Lb6/o;->n:I

    invoke-static {p0, v0}, Lb6/p;->i(Ljava/lang/Throwable;Lb6/o;)Lb6/p;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lb6/p;->n:Ljava/io/Closeable;

    return-object p0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Ls5/l;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lb6/p;->m:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_0
    const-string v1, " (through reference chain: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lb6/p;->m:Ljava/util/LinkedList;

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb6/o;

    invoke-virtual {v1}, Lb6/o;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    :goto_2
    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lb6/o;)V
    .locals 2

    iget-object v0, p0, Lb6/p;->m:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lb6/p;->m:Ljava/util/LinkedList;

    :cond_0
    iget-object v0, p0, Lb6/p;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x3e8

    if-ge v0, v1, :cond_1

    iget-object p0, p0, Lb6/p;->m:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final getLocalizedMessage()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lb6/p;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lb6/p;->d()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lb6/o;

    invoke-direct {v0, p1, p2}, Lb6/o;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lb6/p;->f(Lb6/o;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lb6/p;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
