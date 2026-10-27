.class public abstract Lg6/j;
.super Lg6/f1;
.source "SourceFile"


# instance fields
.field public final o:Lb6/l;

.field public final p:Le6/r;

.field public final q:Z

.field public final r:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lb6/l;Le6/r;Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lg6/f1;-><init>(Lb6/l;)V

    .line 2
    iput-object p1, p0, Lg6/j;->o:Lb6/l;

    .line 3
    iput-object p3, p0, Lg6/j;->r:Ljava/lang/Boolean;

    .line 4
    iput-object p2, p0, Lg6/j;->p:Le6/r;

    .line 5
    invoke-static {p2}, Lf6/q;->a(Le6/r;)Z

    move-result p1

    iput-boolean p1, p0, Lg6/j;->q:Z

    return-void
.end method

.method public constructor <init>(Lg6/j;Le6/r;Ljava/lang/Boolean;)V
    .locals 0

    .line 6
    iget-object p1, p1, Lg6/j;->o:Lb6/l;

    invoke-direct {p0, p1}, Lg6/f1;-><init>(Lb6/l;)V

    .line 7
    iput-object p1, p0, Lg6/j;->o:Lb6/l;

    .line 8
    iput-object p2, p0, Lg6/j;->p:Le6/r;

    .line 9
    iput-object p3, p0, Lg6/j;->r:Ljava/lang/Boolean;

    .line 10
    invoke-static {p2}, Lf6/q;->a(Le6/r;)Z

    move-result p1

    iput-boolean p1, p0, Lg6/j;->q:Z

    return-void
.end method

.method public static a0(Lb6/i;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :goto_0
    instance-of v0, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lu6/h;->C(Ljava/lang/Throwable;)V

    if-eqz p0, :cond_1

    sget-object v0, Lb6/j;->D:Lb6/j;

    invoke-virtual {p0, v0}, Lb6/i;->n0(Lb6/j;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lu6/h;->E(Ljava/lang/Throwable;)V

    :cond_1
    instance-of p0, p1, Ljava/io/IOException;

    if-eqz p0, :cond_3

    instance-of p0, p1, Lb6/p;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    check-cast p1, Ljava/io/IOException;

    throw p1

    :cond_3
    :goto_1
    if-nez p3, :cond_4

    const-string p3, "N/A"

    :cond_4
    sget p0, Lb6/p;->o:I

    new-instance p0, Lb6/o;

    invoke-direct {p0, p2, p3}, Lb6/o;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0}, Lb6/p;->i(Ljava/lang/Throwable;Lb6/o;)Lb6/p;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final V()Lb6/l;
    .locals 0

    iget-object p0, p0, Lg6/j;->o:Lb6/l;

    return-object p0
.end method

.method public abstract Z()Lb6/n;
.end method

.method public final findBackReference(Ljava/lang/String;)Le6/y;
    .locals 4

    invoke-virtual {p0}, Lg6/j;->Z()Lb6/n;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lb6/n;->findBackReference(Ljava/lang/String;)Le6/y;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v1, "\': type: container deserializer of type "

    const-string v2, " returned null for \'getContentDeserializer()\'"

    const-string v3, "Cannot handle managed/back reference \'"

    invoke-static {v3, p1, v1, p0, v2}, Lr0/i;->j(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getEmptyAccessPattern()Lu6/a;
    .locals 0

    sget-object p0, Lu6/a;->n:Lu6/a;

    return-object p0
.end method

.method public getEmptyValue(Lb6/i;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lg6/f1;->U()Le6/c0;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le6/c0;->k()Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v0, p1}, Le6/c0;->w(Lb6/i;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-static {p1, p0}, Lu6/h;->B(Lb6/i;Ljava/io/IOException;)V

    throw v1

    :cond_0
    const-string v0, "Cannot create empty instance of %s, no default Creator"

    iget-object p0, p0, Lg6/j;->o:Lb6/l;

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lb6/i;->G(Ljava/lang/String;)Ljava/lang/Object;

    throw v1
.end method

.method public final supportsUpdate(Lb6/h;)Ljava/lang/Boolean;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
